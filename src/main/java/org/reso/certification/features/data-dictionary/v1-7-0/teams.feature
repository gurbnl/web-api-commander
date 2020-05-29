# This file was autogenerated on: 20200514120546975
Feature: Teams

  Background:
    Given a RESOScript file was provided
    And Client Settings and Parameters were read from the file
    And a test container was successfully created from the given RESOScript
    And the test container uses an Authorization Code or Client Credentials for authentication
    And valid metadata were retrieved from the server

  @ModificationTimestamp @Teams
  Scenario: ModificationTimestamp
    Given "ModificationTimestamp" exists in the "Teams" metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type
    And "ModificationTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @OriginalEntryTimestamp @Teams
  Scenario: OriginalEntryTimestamp
    Given "OriginalEntryTimestamp" exists in the "Teams" metadata
    Then "OriginalEntryTimestamp" MUST be "Timestamp" data type
    And "OriginalEntryTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @OriginatingSystemID @Teams
  Scenario: OriginatingSystemID
    Given "OriginatingSystemID" exists in the "Teams" metadata
    Then "OriginatingSystemID" MUST be "String" data type
    And "OriginatingSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @OriginatingSystemKey @Teams
  Scenario: OriginatingSystemKey
    Given "OriginatingSystemKey" exists in the "Teams" metadata
    Then "OriginatingSystemKey" MUST be "String" data type
    And "OriginatingSystemKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @OriginatingSystemName @Teams
  Scenario: OriginatingSystemName
    Given "OriginatingSystemName" exists in the "Teams" metadata
    Then "OriginatingSystemName" MUST be "String" data type
    And "OriginatingSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @SocialMediaType @Teams
  Scenario: SocialMediaType
    Given "SocialMediaType" exists in the "Teams" metadata
    And "SocialMediaType" enum values exist in the metadata
    And "SocialMediaType" enum types MUST allow only one member
    And "SocialMediaType" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @SocialMedia_TYPE_PLACEHOLDER_UrlOrId @Teams
  Scenario: SocialMedia_TYPE_PLACEHOLDER_UrlOrId
    Given "SocialMedia_TYPE_PLACEHOLDER_UrlOrId" exists in the "Teams" metadata
    Then "SocialMedia_TYPE_PLACEHOLDER_UrlOrId" MUST be "String" data type
    And "SocialMedia_TYPE_PLACEHOLDER_UrlOrId" length SHOULD be less than or equal to the RESO Suggested Max Length of 8000

  @SourceSystemID @Teams
  Scenario: SourceSystemID
    Given "SourceSystemID" exists in the "Teams" metadata
    Then "SourceSystemID" MUST be "String" data type
    And "SourceSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @SourceSystemKey @Teams
  Scenario: SourceSystemKey
    Given "SourceSystemKey" exists in the "Teams" metadata
    Then "SourceSystemKey" MUST be "String" data type
    And "SourceSystemKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @SourceSystemName @Teams
  Scenario: SourceSystemName
    Given "SourceSystemName" exists in the "Teams" metadata
    Then "SourceSystemName" MUST be "String" data type
    And "SourceSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @TeamAddress1 @Teams
  Scenario: TeamAddress1
    Given "TeamAddress1" exists in the "Teams" metadata
    Then "TeamAddress1" MUST be "String" data type
    And "TeamAddress1" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @TeamAddress2 @Teams
  Scenario: TeamAddress2
    Given "TeamAddress2" exists in the "Teams" metadata
    Then "TeamAddress2" MUST be "String" data type
    And "TeamAddress2" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @TeamCarrierRoute @Teams
  Scenario: TeamCarrierRoute
    Given "TeamCarrierRoute" exists in the "Teams" metadata
    Then "TeamCarrierRoute" MUST be "String" data type
    And "TeamCarrierRoute" length SHOULD be less than or equal to the RESO Suggested Max Length of 9

  @TeamCity @Teams
  Scenario: TeamCity
    Given "TeamCity" exists in the "Teams" metadata
    Then "TeamCity" MUST be "String" data type
    And "TeamCity" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @TeamCountry @Teams
  Scenario: TeamCountry
    Given "TeamCountry" exists in the "Teams" metadata
    And "TeamCountry" enum values exist in the metadata
    And "TeamCountry" enum types MUST allow only one member
    And "TeamCountry" length SHOULD be less than or equal to the RESO Suggested Max Length of 2

  @TeamCountyOrParish @Teams
  Scenario: TeamCountyOrParish
    Given "TeamCountyOrParish" exists in the "Teams" metadata
    And "TeamCountyOrParish" enum values exist in the metadata
    And "TeamCountyOrParish" enum types MUST allow only one member
    And "TeamCountyOrParish" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @TeamDescription @Teams
  Scenario: TeamDescription
    Given "TeamDescription" exists in the "Teams" metadata
    Then "TeamDescription" MUST be "String" data type
    And "TeamDescription" length SHOULD be less than or equal to the RESO Suggested Max Length of 1024

  @TeamDirectPhone @Teams
  Scenario: TeamDirectPhone
    Given "TeamDirectPhone" exists in the "Teams" metadata
    Then "TeamDirectPhone" MUST be "String" data type
    And "TeamDirectPhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @TeamEmail @Teams
  Scenario: TeamEmail
    Given "TeamEmail" exists in the "Teams" metadata
    Then "TeamEmail" MUST be "String" data type
    And "TeamEmail" length SHOULD be less than or equal to the RESO Suggested Max Length of 80

  @TeamFax @Teams
  Scenario: TeamFax
    Given "TeamFax" exists in the "Teams" metadata
    Then "TeamFax" MUST be "String" data type
    And "TeamFax" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @TeamKey @Teams
  Scenario: TeamKey
    Given "TeamKey" exists in the "Teams" metadata
    Then "TeamKey" MUST be "String" data type
    And "TeamKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @TeamKeyNumeric @Teams
  Scenario: TeamKeyNumeric
    Given "TeamKeyNumeric" exists in the "Teams" metadata
    Then "TeamKeyNumeric" MUST be "Integer" data type

  @TeamLeadKey @Teams
  Scenario: TeamLeadKey
    Given "TeamLeadKey" exists in the "Teams" metadata
    Then "TeamLeadKey" MUST be "String" data type
    And "TeamLeadKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @TeamLeadKeyNumeric @Teams
  Scenario: TeamLeadKeyNumeric
    Given "TeamLeadKeyNumeric" exists in the "Teams" metadata
    Then "TeamLeadKeyNumeric" MUST be "Integer" data type

  @TeamLeadLoginId @Teams
  Scenario: TeamLeadLoginId
    Given "TeamLeadLoginId" exists in the "Teams" metadata
    Then "TeamLeadLoginId" MUST be "String" data type
    And "TeamLeadLoginId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @TeamLeadMlsId @Teams
  Scenario: TeamLeadMlsId
    Given "TeamLeadMlsId" exists in the "Teams" metadata
    Then "TeamLeadMlsId" MUST be "String" data type
    And "TeamLeadMlsId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @TeamLeadNationalAssociationId @Teams
  Scenario: TeamLeadNationalAssociationId
    Given "TeamLeadNationalAssociationId" exists in the "Teams" metadata
    Then "TeamLeadNationalAssociationId" MUST be "String" data type
    And "TeamLeadNationalAssociationId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @TeamLeadStateLicense @Teams
  Scenario: TeamLeadStateLicense
    Given "TeamLeadStateLicense" exists in the "Teams" metadata
    Then "TeamLeadStateLicense" MUST be "String" data type
    And "TeamLeadStateLicense" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @TeamLeadStateLicenseState @Teams
  Scenario: TeamLeadStateLicenseState
    Given "TeamLeadStateLicenseState" exists in the "Teams" metadata
    And "TeamLeadStateLicenseState" enum values exist in the metadata
    And "TeamLeadStateLicenseState" enum types MUST allow only one member
    And "TeamLeadStateLicenseState" length SHOULD be less than or equal to the RESO Suggested Max Length of 2

  @TeamMobilePhone @Teams
  Scenario: TeamMobilePhone
    Given "TeamMobilePhone" exists in the "Teams" metadata
    Then "TeamMobilePhone" MUST be "String" data type
    And "TeamMobilePhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @TeamName @Teams
  Scenario: TeamName
    Given "TeamName" exists in the "Teams" metadata
    Then "TeamName" MUST be "String" data type
    And "TeamName" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @TeamOfficePhone @Teams
  Scenario: TeamOfficePhone
    Given "TeamOfficePhone" exists in the "Teams" metadata
    Then "TeamOfficePhone" MUST be "String" data type
    And "TeamOfficePhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @TeamOfficePhoneExt @Teams
  Scenario: TeamOfficePhoneExt
    Given "TeamOfficePhoneExt" exists in the "Teams" metadata
    Then "TeamOfficePhoneExt" MUST be "String" data type
    And "TeamOfficePhoneExt" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @TeamPostalCode @Teams
  Scenario: TeamPostalCode
    Given "TeamPostalCode" exists in the "Teams" metadata
    Then "TeamPostalCode" MUST be "String" data type
    And "TeamPostalCode" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @TeamPostalCodePlus4 @Teams
  Scenario: TeamPostalCodePlus4
    Given "TeamPostalCodePlus4" exists in the "Teams" metadata
    Then "TeamPostalCodePlus4" MUST be "String" data type
    And "TeamPostalCodePlus4" length SHOULD be less than or equal to the RESO Suggested Max Length of 4

  @TeamPreferredPhone @Teams
  Scenario: TeamPreferredPhone
    Given "TeamPreferredPhone" exists in the "Teams" metadata
    Then "TeamPreferredPhone" MUST be "String" data type
    And "TeamPreferredPhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @TeamPreferredPhoneExt @Teams
  Scenario: TeamPreferredPhoneExt
    Given "TeamPreferredPhoneExt" exists in the "Teams" metadata
    Then "TeamPreferredPhoneExt" MUST be "String" data type
    And "TeamPreferredPhoneExt" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @TeamStateOrProvince @Teams
  Scenario: TeamStateOrProvince
    Given "TeamStateOrProvince" exists in the "Teams" metadata
    And "TeamStateOrProvince" enum values exist in the metadata
    And "TeamStateOrProvince" enum types MUST allow only one member
    And "TeamStateOrProvince" length SHOULD be less than or equal to the RESO Suggested Max Length of 2

  @TeamStatus @Teams
  Scenario: TeamStatus
    Given "TeamStatus" exists in the "Teams" metadata
    And "TeamStatus" enum values exist in the metadata
    And "TeamStatus" enum types MUST allow only one member
    And "TeamStatus" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @TeamTollFreePhone @Teams
  Scenario: TeamTollFreePhone
    Given "TeamTollFreePhone" exists in the "Teams" metadata
    Then "TeamTollFreePhone" MUST be "String" data type
    And "TeamTollFreePhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @TeamVoiceMail @Teams
  Scenario: TeamVoiceMail
    Given "TeamVoiceMail" exists in the "Teams" metadata
    Then "TeamVoiceMail" MUST be "String" data type
    And "TeamVoiceMail" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @TeamVoiceMailExt @Teams
  Scenario: TeamVoiceMailExt
    Given "TeamVoiceMailExt" exists in the "Teams" metadata
    Then "TeamVoiceMailExt" MUST be "String" data type
    And "TeamVoiceMailExt" length SHOULD be less than or equal to the RESO Suggested Max Length of 10
