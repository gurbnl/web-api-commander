package org.reso.commander.certfication.containers;

import org.apache.http.HttpStatus;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.olingo.client.api.communication.ODataClientErrorException;
import org.apache.olingo.client.api.communication.ODataServerErrorException;
import org.apache.olingo.client.api.communication.request.retrieve.ODataEntitySetRequest;
import org.apache.olingo.client.api.communication.request.retrieve.ODataRawRequest;
import org.apache.olingo.client.api.communication.response.ODataRawResponse;
import org.apache.olingo.client.api.communication.response.ODataRetrieveResponse;
import org.apache.olingo.client.api.domain.ClientEntitySet;
import org.apache.olingo.client.api.edm.xml.XMLMetadata;
import org.apache.olingo.client.api.uri.QueryOption;
import org.apache.olingo.commons.api.edm.Edm;
import org.apache.olingo.commons.api.edm.provider.CsdlProperty;
import org.apache.olingo.commons.api.format.ContentType;
import org.reso.commander.Commander;
import org.reso.commander.common.TestUtils;
import org.reso.models.ClientSettings;
import org.reso.models.Parameters;
import org.reso.models.Request;
import org.reso.models.Settings;

import java.net.URI;
import java.util.*;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;
import static org.reso.commander.Commander.AMPERSAND;
import static org.reso.commander.Commander.EQUALS;
import static org.reso.commander.common.ErrorMsg.getDefaultErrorMessage;
import static org.reso.commander.common.TestUtils.HEADER_ODATA_VERSION;

/**
 * Encapsulates Commander Requests and Responses during runtime
 */
public final class WebAPITestContainer implements TestContainer {
  public static final String FIELD_SEPARATOR = ",";
  public static final String EMPTY_STRING = "";
  public static final String SINGLE_SPACE = " ";
  public static final String DOLLAR_SIGN = "$";
  public static final String PRETTY_FIELD_SEPARATOR = FIELD_SEPARATOR + SINGLE_SPACE;
  private static final Logger LOG = LogManager.getLogger(WebAPITestContainer.class);

  private AtomicReference<Commander> commander = new AtomicReference<>();
  private AtomicReference<XMLMetadata> xmlMetadata = new AtomicReference<>();
  private AtomicReference<Edm> edm = new AtomicReference<>();
  private AtomicReference<Settings> settings = new AtomicReference<>();
  private AtomicReference<String> serviceRoot = new AtomicReference<>();
  private AtomicReference<String> bearerToken = new AtomicReference<>();
  private AtomicReference<String> clientId = new AtomicReference<>();
  private AtomicReference<String> clientSecret = new AtomicReference<>();
  private AtomicReference<String> authorizationUri = new AtomicReference<>();
  private AtomicReference<String> tokenUri = new AtomicReference<>();
  private AtomicReference<String> redirectUri = new AtomicReference<>();
  private AtomicReference<String> scope = new AtomicReference<>();
  private AtomicReference<String> pathToRESOScript = new AtomicReference<>();
  private AtomicReference<Map<String, CsdlProperty>> fieldMap = new AtomicReference<>();
  private AtomicReference<String> xmlResponseData = new AtomicReference<>();

  // Metadata state variables
  private AtomicBoolean isValidXMLMetadata = new AtomicBoolean(false);
  private AtomicBoolean isValidEdm = new AtomicBoolean(false);
  private AtomicBoolean isXMLMetadataValidXML = new AtomicBoolean(false);
  private AtomicBoolean hasXMLMetadataBeenRequested = new AtomicBoolean(false);
  private AtomicBoolean hasEdmBeenRequested = new AtomicBoolean(false);

  // request instance variables - these get reset with every request
  private AtomicReference<String> selectList = new AtomicReference<>();
  private AtomicReference<ODataRawResponse> oDataRawResponse = new AtomicReference<>();
  private AtomicReference<Request> request = new AtomicReference<>();
  private AtomicReference<URI> requestUri = new AtomicReference<>();
  private AtomicReference<Integer> responseCode = new AtomicReference<>();
  private AtomicReference<String> responseData = new AtomicReference<>();
  private AtomicReference<String> initialResponseData = new AtomicReference<>(); //used if two result sets need to be compared
  private AtomicReference<ODataRawRequest> rawRequest = new AtomicReference<>();
  private AtomicReference<ODataClientErrorException> oDataClientErrorException = new AtomicReference<>();
  private AtomicReference<ODataServerErrorException> oDataServerErrorException = new AtomicReference<>();
  private AtomicReference<String> serverODataHeaderVersion = new AtomicReference<>();
  private AtomicReference<Boolean> testAppliesToServerODataHeaderVersion = new AtomicReference<>();
  private AtomicReference<ODataEntitySetRequest<ClientEntitySet>> clientEntitySetRequest = new AtomicReference<>();
  private AtomicReference<ODataRetrieveResponse<ClientEntitySet>> clientEntitySetResponse = new AtomicReference<>();
  private AtomicReference<ClientEntitySet> clientEntitySet = new AtomicReference<>();

  public Map<String, CsdlProperty> getFieldMap() throws Exception {
    if (fieldMap.get() == null) {
      fieldMap.set(new HashMap<>());

      LOG.info("Building Field Map...this may take a moment depending on size of metadata and connection speed.");
      //build a map of all of the discovered fields on the server for the given resource by field name
      //this can also be used to look up type information
      TestUtils.findEntityTypesForEntityTypeName(getEdm(), getXMLMetadata(), getSettings().getParameters().getValue(Parameters.WELL_KNOWN.RESOURCE_NAME))
          .forEach(csdlProperty -> fieldMap.get().put(csdlProperty.getName(), csdlProperty));
      assertTrue("ERROR: No field were found in the server's metadata!", fieldMap.get().size() > 0);
      LOG.info("Metadata Field Map created!");
    }
    return fieldMap.get();
  }

  public String getXMLResponseData() {
    return xmlResponseData.get();
  }

  /**
   * Resets the state of the test container
   */
  public void resetState() {
    clientEntitySetRequest.set(null);
    clientEntitySetResponse.set(null);
    clientEntitySet.set(null);
    oDataRawResponse.set(null);
    request.set(null);
    requestUri.set(null);
    responseCode.set(null);
    responseData.set(null);
    initialResponseData.set(null);
    rawRequest.set(null);
    oDataClientErrorException.set(null);
    oDataServerErrorException.set(null);
    serverODataHeaderVersion.set(null);
    selectList.set(null);
    testAppliesToServerODataHeaderVersion.set(false);
  }

  public void initialize() {
    setServiceRoot(getSettings().getClientSettings().get(ClientSettings.SERVICE_ROOT));

    //TODO: add base64 un-encode when applicable
    setBearerToken(getSettings().getClientSettings().get(ClientSettings.BEARER_TOKEN));
    if (getAuthToken() != null && getAuthToken().length() > 0) {
      LOG.info("Bearer token loaded... first 4 characters: " + getAuthToken().substring(0, 4));
    }

    setClientId(getSettings().getClientSettings().get(ClientSettings.CLIENT_IDENTIFICATION));
    setClientSecret(getSettings().getClientSettings().get(ClientSettings.CLIENT_SECRET));
    setAuthorizationUri(getSettings().getClientSettings().get(ClientSettings.AUTHORIZATION_URI));
    setTokenUri(getSettings().getClientSettings().get(ClientSettings.TOKEN_URI));
    setRedirectUri(getSettings().getClientSettings().get(ClientSettings.REDIRECT_URI));
    setScope(getSettings().getClientSettings().get(ClientSettings.CLIENT_SCOPE));

    LOG.info("Service root is: " + getServiceRoot());

    if (getCommander() == null) {
      //create Commander instance
      setCommander(new Commander.Builder()
          .clientId(getClientId())
          .clientSecret(getClientSecret())
          .tokenUri(getTokenUri())
          .scope(getScope())
          .serviceRoot(getServiceRoot())
          .bearerToken(getAuthToken())
          .useEdmEnabledClient(shouldUseEdmClient())
          .build());
    }
  }

  /**
   * If the server is using a DataSystem endpoint that's not rooted at the Service Root, the EDM client
   * will fail the request. Cannot use the Edm client for those that do.
   *
   * @return true if the Olingo Edm client should be used, false otherwise.
   */
  private boolean shouldUseEdmClient() {
    /* Cannot use EdmEnabled client with a server that has a DataSystem endpoint that's not rooted at the Service Root */
    String dataSystemEndpoint = getSettings().getParameters().getValue(Parameters.WELL_KNOWN.DATASYSTEM_ENDPOINT),
        serviceRoot = getSettings().getClientSettings().get(ClientSettings.SERVICE_ROOT);

    assertNotNull("ERROR: " + Parameters.WELL_KNOWN.DATASYSTEM_ENDPOINT + " cannot be null!", dataSystemEndpoint);
    assertNotNull("ERROR: " + ClientSettings.SERVICE_ROOT + " cannot be null!", serviceRoot);

    return dataSystemEndpoint.startsWith(serviceRoot);
  }

  /**
   * Executes HTTP GET request and sets the expected local variables in the WebAPITestContainer
   * Handles exceptions and sets response codes as well.
   */
  public void executePreparedRawGetRequest() throws Exception {
    try {
      setRawRequest(getCommander().getClient().getRetrieveRequestFactory().getRawRequest(getRequestUri()));
      getRawRequest().setFormat(ContentType.JSON.toContentTypeString());
      setODataRawResponse(getRawRequest().execute());
      setResponseData(TestUtils.convertInputStreamToString(getODataRawResponse().getRawResponse()));
      setServerODataHeaderVersion(TestUtils.getHeaderData(HEADER_ODATA_VERSION, getODataRawResponse()));
      setResponseCode(getODataRawResponse().getStatusCode());
      LOG.info("Request succeeded..." + getResponseData().getBytes().length + " bytes received.");
    } catch (Exception ex) {
      processODataRequestException(ex);
    }
  }

  /**
   * Gets OData Csdl for given field
   *
   * @param fieldName the name of the field to retrieve metadata about
   * @return the metadata for the given field
   */
  public CsdlProperty getCsdlForFieldName(String fieldName) throws Exception {
    return getFieldMap().get(fieldName);
  }

  /**
   * Csdl property getter
   *
   * @return gets the local collection of Csdl Properties
   */
  public Collection<CsdlProperty> getCsdlProperties() throws Exception {
    return getFieldMap().values();
  }

  /**
   * Parses an OData $select list
   * @return the de-duplicated set of select list items
   */
  public Collection<String> getSelectList() {
    Arrays.stream(getRequestUri().getQuery().split(AMPERSAND)).forEach(fragment -> {
      if (fragment.contains(QueryOption.SELECT.toString())) {
        selectList.set(fragment.replace(ODATA_QUERY_PARAMS.SELECT, EMPTY_STRING).replace(EQUALS, EMPTY_STRING));
      }
    });
    return new LinkedHashSet<>((Arrays.asList(selectList.get().split(FIELD_SEPARATOR))));
  }

  /**
   * Settings getter
   *
   * @return local settings instance
   */
  public Settings getSettings() {
    return settings.get();
  }

  /**
   * Settings setter
   *
   * @param settings sets local settings instance to the given settings
   */
  public void setSettings(Settings settings) {
    this.settings.set(settings);
  }

  /**
   * Gets the Expand field from the RESOScript
   *
   * @return the configured Expand field
   */
  public String getExpandField() {
    return getSettings().getParameters().getValue(Parameters.WELL_KNOWN.EXPAND_FIELD);
  }

  /**
   * Gets server metadata in Edm format.
   *
   * @return
   * @implNote the data in this item are cached in the test container once fetched
   */
  public Edm getEdm() throws Exception {
    if (edm.get() == null) {
      try {
        LOG.info("Requesting the entity data model (Edm) from service root at: " + getServiceRoot());
        ODataRetrieveResponse<Edm> response = getCommander().prepareEdmMetadataRequest().execute();
        responseCode.set(response.getStatusCode());
        setServerODataHeaderVersion(TestUtils.getHeaderData(HEADER_ODATA_VERSION, response));
        edm.set(response.getBody());
      } catch(Exception ex){
        processODataRequestException(ex);
      } finally {
        hasEdmBeenRequested.set(true);
      }
    }
    return edm.get();
  }

  /**
   * Gets server metadata in XMLMetadata format.
   * <p>
   * Note: this method takes a slightly different approach than getting XML Metadata did previously in that
   * rather than fetching the metadata directly from the server using the Olingo getXmlMetadata method,
   * we make a raw request instead so that we can capture the response string for XML validation, and
   * we deserialize the XML Metadata object from the response string.
   *
   * @return XMLMetadata representation of the server metadata.
   * @implNote the data in this item are cached in the test container once fetched
   */
  public XMLMetadata getXMLMetadata() throws Exception {
    if (xmlMetadata.get() == null) {
      try {
        String requestUri = Settings.resolveParameters(getSettings().getRequest(Request.WELL_KNOWN.METADATA_ENDPOINT), getSettings()).getUrl();
        assertNotNull(getDefaultErrorMessage("Metadata request URI was null! Please check your RESOScript."), requestUri);

        ODataRawRequest request = getCommander().getClient().getRetrieveRequestFactory().getRawRequest(URI.create(requestUri));
        request.setFormat(ContentType.JSON.toContentTypeString());

        LOG.info("Requesting XML Metadata from service root at: " + getServiceRoot());
        ODataRawResponse response = request.execute();
        responseCode.set(response.getStatusCode());
        setServerODataHeaderVersion(TestUtils.getHeaderData(HEADER_ODATA_VERSION, response));

        xmlResponseData.set(TestUtils.convertInputStreamToString(response.getRawResponse()));
        xmlMetadata.set(Commander.deserializeXMLMetadata(xmlResponseData.get(), getCommander().getClient()));
      } catch (Exception ex) {
        processODataRequestException(ex);
      } finally {
        hasXMLMetadataBeenRequested.set(true);
      }
    }
    return xmlMetadata.get();
  }

  public Commander getCommander() {
    return commander.get();
  }

  public void setCommander(Commander commander) {
    this.commander.set(commander);
  }

  public ODataRawResponse getODataRawResponse() {
    return oDataRawResponse.get();
  }

  public void setODataRawResponse(ODataRawResponse oDataRawResponse) {
    this.oDataRawResponse.set(oDataRawResponse);
  }

  public Request getRequest() {
    return request.get();
  }

  public void setRequest(Request request) {
    this.request.set(request);
  }

  public void setRequest(String requestId) {
    setRequest(getSettings().getRequest(requestId));
  }

  public URI getRequestUri() {
    return requestUri.get();
  }

  public void setRequestUri(URI requestUri) {
    this.requestUri.set(requestUri);
  }

  public Integer getResponseCode() {
    return responseCode.get();
  }

  public void setResponseCode(Integer responseCode) {
    this.responseCode.set(responseCode);
  }

  public String getResponseData() {
    return responseData.get();
  }

  public void setResponseData(String responseData) {
    this.responseData.set(responseData);
  }

  public String getInitialResponseData() {
    return initialResponseData.get();
  }

  public void setInitialResponseData(String initialResponseData) {
    this.initialResponseData.set(initialResponseData);
  }

  public ODataRawRequest getRawRequest() {
    return rawRequest.get();
  }

  public void setRawRequest(ODataRawRequest oDataRawRequest) {
    this.rawRequest.set(oDataRawRequest);
  }

  public ODataClientErrorException getODataClientErrorException() {
    return oDataClientErrorException.get();
  }

  public void setODataClientErrorException(ODataClientErrorException oDataClientErrorException) {
    this.oDataClientErrorException.set(oDataClientErrorException);
  }

  public ODataServerErrorException getODataServerErrorException() {
    return oDataServerErrorException.get();
  }

  public void setODataServerErrorException(ODataServerErrorException oDataServerErrorException) {
    this.oDataServerErrorException.set(oDataServerErrorException);
  }

  public String getServerODataHeaderVersion() {
    return this.serverODataHeaderVersion.get();
  }

  public void setServerODataHeaderVersion(String serverODataHeaderVersion) {
    this.serverODataHeaderVersion.set(serverODataHeaderVersion);
  }

  public Boolean getTestAppliesToServerODataHeaderVersion() {
    return testAppliesToServerODataHeaderVersion.get();
  }

  public void setTestAppliesToServerODataHeaderVersion(Boolean testAppliesToServerODataHeaderVersion) {
    this.testAppliesToServerODataHeaderVersion.set(testAppliesToServerODataHeaderVersion);
  }

  public ODataEntitySetRequest<ClientEntitySet> getClientEntitySetRequest() {
    return clientEntitySetRequest.get();
  }

  public void setClientEntitySetRequest(ODataEntitySetRequest<ClientEntitySet> clientEntitySetRequest) {
    this.clientEntitySetRequest.set(clientEntitySetRequest);
  }

  public ODataRetrieveResponse<ClientEntitySet> getClientEntitySetResponse() {
    return clientEntitySetResponse.get();
  }

  public void setClientEntitySetResponse(ODataRetrieveResponse<ClientEntitySet> clientEntitySetResponse) {
    this.clientEntitySetResponse.set(clientEntitySetResponse);
  }

  public ClientEntitySet getClientEntitySet() {
    return clientEntitySet.get();
  }

  public void setClientEntitySet(ClientEntitySet clientEntitySet) {
    this.clientEntitySet.set(clientEntitySet);
  }

  public String getServiceRoot() {
    return serviceRoot.get();
  }

  public void setServiceRoot(String serviceRoot) {
    this.serviceRoot.set(serviceRoot);
  }

  public String getAuthToken() {
    return bearerToken.get();
  }

  public void setBearerToken(String bearerToken) {
    this.bearerToken.set(bearerToken);
  }

  public String getClientId() {
    return clientId.get();
  }

  public void setClientId(String clientId) {
    this.clientId.set(clientId);
  }

  public String getClientSecret() {
    return clientSecret.get();
  }

  public void setClientSecret(String clientSecret) {
    this.clientSecret.set(clientSecret);
  }

  public String getAuthorizationUri() {
    return authorizationUri.get();
  }

  public void setAuthorizationUri(String authorizationUri) {
    this.authorizationUri.set(authorizationUri);
  }

  public String getTokenUri() {
    return tokenUri.get();
  }

  public void setTokenUri(String tokenUri) {
    this.tokenUri.set(tokenUri);
  }

  public String getRedirectUri() {
    return redirectUri.get();
  }

  public void setRedirectUri(String redirectUri) {
    this.redirectUri.set(redirectUri);
  }

  public String getScope() {
    return scope.get();
  }

  public void setScope(String scope) {
    this.scope.set(scope);
  }

  public String getPathToRESOScript() {
    return pathToRESOScript.get();
  }

  public void setPathToRESOScript(String pathToRESOScript) {
    this.pathToRESOScript.set(pathToRESOScript);
  }

  private void processODataRequestException(Exception exception, boolean bubble) throws Exception {
    if (exception instanceof ODataClientErrorException) processODataRequestException((ODataClientErrorException)exception);
    else if (exception instanceof ODataServerErrorException) processODataRequestException(((ODataServerErrorException)exception));
    else LOG.error(getDefaultErrorMessage(exception));

    if (bubble) throw exception;
  }

  private void processODataRequestException(Exception exception) throws Exception {
    processODataRequestException(exception, true);
  }

  private void processODataRequestException(ODataClientErrorException exception) {
    LOG.debug("ODataClientErrorException caught. Check tests for asserted conditions...");
    LOG.debug(exception);
    setODataClientErrorException(exception);
    setServerODataHeaderVersion(TestUtils.getHeaderData(HEADER_ODATA_VERSION, Arrays.asList(exception.getHeaderInfo())));
    setResponseCode(exception.getStatusLine().getStatusCode());
  }

  private void processODataRequestException(ODataServerErrorException exception) {
    LOG.debug("ODataServerErrorException thrown in executeGetRequest. Check tests for asserted conditions...");
    //TODO: look for better ways to do this in Olingo or open PR
    if (exception.getMessage().contains(Integer.toString(HttpStatus.SC_NOT_IMPLEMENTED))) {
      setResponseCode(HttpStatus.SC_NOT_IMPLEMENTED);
    }
    setODataServerErrorException(exception);
  }

  public boolean getIsMetadataValid() {
    return xmlMetadata.get() != null && getIsValidXMLMetadata()
        && xmlResponseData.get() != null && getIsXMLMetadataValidXML()
        && edm.get() != null && getIsValidEdm();
  }

  public boolean getIsValidXMLMetadata() {
    return isValidXMLMetadata.get();
  }

  public void setIsValidXMLMetadata(boolean isValid) {
    isValidXMLMetadata.set(isValid);
  }

  public boolean getIsValidEdm() {
    return isValidEdm.get();
  }

  public void setIsValidEdm(boolean isValid) {
    isValidEdm.set(isValid);
  }

  public boolean getIsXMLMetadataValidXML() {
    return isXMLMetadataValidXML.get();
  }

  public void setIsXMLMetadataValidXML(boolean isValid) {
    isXMLMetadataValidXML.set(isValid);
  }

  public boolean hasNotFetchedMetadata() {
    return !hasXMLMetadataBeenRequested.get() && !hasEdmBeenRequested.get();
  }

  public static final class ODATA_QUERY_PARAMS {
    private static String format = DOLLAR_SIGN + "%s";

    //TODO: add additional items as needed, and see if there's a lib for this in Olingo
    public static final String
        COUNT = String.format(format, QueryOption.COUNT),
        EXPAND = String.format(format, QueryOption.EXPAND),
        FILTER = String.format(format, QueryOption.FILTER),
        ORDERBY = String.format(format, QueryOption.ORDERBY),
        SELECT = String.format(format, QueryOption.SELECT),
        SEARCH = String.format(format, QueryOption.SEARCH),
        SKIP = String.format(format, QueryOption.SKIP),
        TOP = String.format(format, QueryOption.TOP);
  }
}