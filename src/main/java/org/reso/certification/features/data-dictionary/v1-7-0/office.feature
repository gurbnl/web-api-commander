# This file was autogenerated on: 20200513000509418
Feature: Office

  Background:
    Given a RESOScript file was provided
    And Client Settings and Parameters were read from the file
    And a test container was successfully created from the given RESOScript
    And the test container uses an Authorization Code or Client Credentials for authentication
    And valid metadata were retrieved from the server

  @FranchiseAffiliation @Office
  Scenario: FranchiseAffiliation
    Given "FranchiseAffiliation" exists in the "Office" metadata
    Then "FranchiseAffiliation" MUST be "String" data type
    And "FranchiseAffiliation" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @IDXOfficeParticipationYN @Office
  Scenario: IDXOfficeParticipationYN
    Given "IDXOfficeParticipationYN" exists in the "Office" metadata
    And "IDXOfficeParticipationYN" is not a synonym for another field
    Then "IDXOfficeParticipationYN" MUST be "Boolean" data type

  @MainOfficeKey @Office
  Scenario: MainOfficeKey
    Given "MainOfficeKey" exists in the "Office" metadata
    Then "MainOfficeKey" MUST be "String" data type
    And "MainOfficeKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @MainOfficeKeyNumeric @Office
  Scenario: MainOfficeKeyNumeric
    Given "MainOfficeKeyNumeric" exists in the "Office" metadata
    Then "MainOfficeKeyNumeric" MUST be "Integer" data type

  @MainOfficeMlsId @Office
  Scenario: MainOfficeMlsId
    Given "MainOfficeMlsId" exists in the "Office" metadata
    Then "MainOfficeMlsId" MUST be "String" data type
    And "MainOfficeMlsId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @ModificationTimestamp @Office
  Scenario: ModificationTimestamp
    Given "ModificationTimestamp" exists in the "Office" metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type
    And "ModificationTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @OfficeAOR @Office
  Scenario: OfficeAOR
    Given "OfficeAOR" exists in the "Office" metadata
    And "OfficeAOR" enum values exist in the metadata
    And "OfficeAOR" enum types MUST have exactly one member
    Then "OfficeAOR" MUST be "String" data type
    And "OfficeAOR" MUST only contain enum values found in the metadata
    And "OfficeAOR" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @OfficeAORMlsId @Office
  Scenario: OfficeAORMlsId
    Given "OfficeAORMlsId" exists in the "Office" metadata
    Then "OfficeAORMlsId" MUST be "String" data type
    And "OfficeAORMlsId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @OfficeAORkey @Office
  Scenario: OfficeAORkey
    Given "OfficeAORkey" exists in the "Office" metadata
    Then "OfficeAORkey" MUST be "String" data type
    And "OfficeAORkey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @OfficeAORkeyNumeric @Office
  Scenario: OfficeAORkeyNumeric
    Given "OfficeAORkeyNumeric" exists in the "Office" metadata
    Then "OfficeAORkeyNumeric" MUST be "Integer" data type

  @OfficeAddress1 @Office
  Scenario: OfficeAddress1
    Given "OfficeAddress1" exists in the "Office" metadata
    Then "OfficeAddress1" MUST be "String" data type
    And "OfficeAddress1" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @OfficeAddress2 @Office
  Scenario: OfficeAddress2
    Given "OfficeAddress2" exists in the "Office" metadata
    Then "OfficeAddress2" MUST be "String" data type
    And "OfficeAddress2" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @OfficeAssociationComments @Office
  Scenario: OfficeAssociationComments
    Given "OfficeAssociationComments" exists in the "Office" metadata
    Then "OfficeAssociationComments" MUST be "String" data type
    And "OfficeAssociationComments" length SHOULD be less than or equal to the RESO Suggested Max Length of 500

  @OfficeBranchType @Office
  Scenario: OfficeBranchType
    Given "OfficeBranchType" exists in the "Office" metadata
    And "OfficeBranchType" enum values exist in the metadata
    And "OfficeBranchType" enum types MUST have exactly one member
    Then "OfficeBranchType" MUST be "String" data type
    And "OfficeBranchType" MUST only contain enum values found in the metadata
    And "OfficeBranchType" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @OfficeBrokerKey @Office
  Scenario: OfficeBrokerKey
    Given "OfficeBrokerKey" exists in the "Office" metadata
    Then "OfficeBrokerKey" MUST be "String" data type
    And "OfficeBrokerKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @OfficeBrokerKeyNumeric @Office
  Scenario: OfficeBrokerKeyNumeric
    Given "OfficeBrokerKeyNumeric" exists in the "Office" metadata
    Then "OfficeBrokerKeyNumeric" MUST be "Integer" data type

  @OfficeBrokerMlsId @Office
  Scenario: OfficeBrokerMlsId
    Given "OfficeBrokerMlsId" exists in the "Office" metadata
    Then "OfficeBrokerMlsId" MUST be "String" data type
    And "OfficeBrokerMlsId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @OfficeCity @Office
  Scenario: OfficeCity
    Given "OfficeCity" exists in the "Office" metadata
    Then "OfficeCity" MUST be "String" data type
    And "OfficeCity" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @OfficeCorporateLicense @Office
  Scenario: OfficeCorporateLicense
    Given "OfficeCorporateLicense" exists in the "Office" metadata
    Then "OfficeCorporateLicense" MUST be "String" data type
    And "OfficeCorporateLicense" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @OfficeCountyOrParish @Office
  Scenario: OfficeCountyOrParish
    Given "OfficeCountyOrParish" exists in the "Office" metadata
    And "OfficeCountyOrParish" enum values exist in the metadata
    And "OfficeCountyOrParish" enum types MUST have exactly one member
    Then "OfficeCountyOrParish" MUST be "String" data type
    And "OfficeCountyOrParish" MUST only contain enum values found in the metadata
    And "OfficeCountyOrParish" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @OfficeEmail @Office
  Scenario: OfficeEmail
    Given "OfficeEmail" exists in the "Office" metadata
    Then "OfficeEmail" MUST be "String" data type
    And "OfficeEmail" length SHOULD be less than or equal to the RESO Suggested Max Length of 80

  @OfficeFax @Office
  Scenario: OfficeFax
    Given "OfficeFax" exists in the "Office" metadata
    Then "OfficeFax" MUST be "String" data type
    And "OfficeFax" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @OfficeKey @Office
  Scenario: OfficeKey
    Given "OfficeKey" exists in the "Office" metadata
    Then "OfficeKey" MUST be "String" data type
    And "OfficeKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @OfficeKeyNumeric @Office
  Scenario: OfficeKeyNumeric
    Given "OfficeKeyNumeric" exists in the "Office" metadata
    Then "OfficeKeyNumeric" MUST be "Integer" data type

  @OfficeManagerKey @Office
  Scenario: OfficeManagerKey
    Given "OfficeManagerKey" exists in the "Office" metadata
    Then "OfficeManagerKey" MUST be "String" data type
    And "OfficeManagerKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @OfficeManagerKeyNumeric @Office
  Scenario: OfficeManagerKeyNumeric
    Given "OfficeManagerKeyNumeric" exists in the "Office" metadata
    Then "OfficeManagerKeyNumeric" MUST be "Integer" data type

  @OfficeManagerMlsId @Office
  Scenario: OfficeManagerMlsId
    Given "OfficeManagerMlsId" exists in the "Office" metadata
    Then "OfficeManagerMlsId" MUST be "String" data type
    And "OfficeManagerMlsId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @OfficeMlsId @Office
  Scenario: OfficeMlsId
    Given "OfficeMlsId" exists in the "Office" metadata
    Then "OfficeMlsId" MUST be "String" data type
    And "OfficeMlsId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @OfficeName @Office
  Scenario: OfficeName
    Given "OfficeName" exists in the "Office" metadata
    Then "OfficeName" MUST be "String" data type
    And "OfficeName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @OfficeNationalAssociationId @Office
  Scenario: OfficeNationalAssociationId
    Given "OfficeNationalAssociationId" exists in the "Office" metadata
    Then "OfficeNationalAssociationId" MUST be "String" data type
    And "OfficeNationalAssociationId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @OfficePhone @Office
  Scenario: OfficePhone
    Given "OfficePhone" exists in the "Office" metadata
    Then "OfficePhone" MUST be "String" data type
    And "OfficePhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @OfficePhoneExt @Office
  Scenario: OfficePhoneExt
    Given "OfficePhoneExt" exists in the "Office" metadata
    Then "OfficePhoneExt" MUST be "String" data type
    And "OfficePhoneExt" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @OfficePostalCode @Office
  Scenario: OfficePostalCode
    Given "OfficePostalCode" exists in the "Office" metadata
    Then "OfficePostalCode" MUST be "String" data type
    And "OfficePostalCode" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @OfficePostalCodePlus4 @Office
  Scenario: OfficePostalCodePlus4
    Given "OfficePostalCodePlus4" exists in the "Office" metadata
    Then "OfficePostalCodePlus4" MUST be "String" data type
    And "OfficePostalCodePlus4" length SHOULD be less than or equal to the RESO Suggested Max Length of 4

  @OfficeStateOrProvince @Office
  Scenario: OfficeStateOrProvince
    Given "OfficeStateOrProvince" exists in the "Office" metadata
    And "OfficeStateOrProvince" enum values exist in the metadata
    And "OfficeStateOrProvince" enum types MUST have exactly one member
    Then "OfficeStateOrProvince" MUST be "String" data type
    And "OfficeStateOrProvince" MUST only contain enum values found in the metadata
    And "OfficeStateOrProvince" length SHOULD be less than or equal to the RESO Suggested Max Length of 2

  @OfficeStatus @Office
  Scenario: OfficeStatus
    Given "OfficeStatus" exists in the "Office" metadata
    And "OfficeStatus" enum values exist in the metadata
    And "OfficeStatus" enum types MUST have exactly one member
    Then "OfficeStatus" MUST be "String" data type
    And "OfficeStatus" MUST only contain enum values found in the metadata
    And "OfficeStatus" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @OfficeType @Office
  Scenario: OfficeType
    Given "OfficeType" exists in the "Office" metadata
    And "OfficeType" enum values exist in the metadata
    And "OfficeType" enum types MUST have exactly one member
    Then "OfficeType" MUST be "String" data type
    And "OfficeType" MUST only contain enum values found in the metadata
    And "OfficeType" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @OriginalEntryTimestamp @Office
  Scenario: OriginalEntryTimestamp
    Given "OriginalEntryTimestamp" exists in the "Office" metadata
    Then "OriginalEntryTimestamp" MUST be "Timestamp" data type
    And "OriginalEntryTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @OriginatingSystemID @Office
  Scenario: OriginatingSystemID
    Given "OriginatingSystemID" exists in the "Office" metadata
    Then "OriginatingSystemID" MUST be "String" data type
    And "OriginatingSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @OriginatingSystemName @Office
  Scenario: OriginatingSystemName
    Given "OriginatingSystemName" exists in the "Office" metadata
    Then "OriginatingSystemName" MUST be "String" data type
    And "OriginatingSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @OriginatingSystemOfficeKey @Office
  Scenario: OriginatingSystemOfficeKey
    Given "OriginatingSystemOfficeKey" exists in the "Office" metadata
    Then "OriginatingSystemOfficeKey" MUST be "String" data type
    And "OriginatingSystemOfficeKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @SocialMediaType @Office
  Scenario: SocialMediaType
    Given "SocialMediaType" exists in the "Office" metadata
    And "SocialMediaType" enum values exist in the metadata
    And "SocialMediaType" enum types MUST have exactly one member
    Then "SocialMediaType" MUST be "String" data type
    And "SocialMediaType" MUST only contain enum values found in the metadata
    And "SocialMediaType" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @SocialMedia_TYPE_PLACEHOLDER_UrlOrId @Office
  Scenario: SocialMedia_TYPE_PLACEHOLDER_UrlOrId
    Given "SocialMedia_TYPE_PLACEHOLDER_UrlOrId" exists in the "Office" metadata
    Then "SocialMedia_TYPE_PLACEHOLDER_UrlOrId" MUST be "String" data type
    And "SocialMedia_TYPE_PLACEHOLDER_UrlOrId" length SHOULD be less than or equal to the RESO Suggested Max Length of 8000

  @SourceSystemID @Office
  Scenario: SourceSystemID
    Given "SourceSystemID" exists in the "Office" metadata
    Then "SourceSystemID" MUST be "String" data type
    And "SourceSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @SourceSystemName @Office
  Scenario: SourceSystemName
    Given "SourceSystemName" exists in the "Office" metadata
    Then "SourceSystemName" MUST be "String" data type
    And "SourceSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @SourceSystemOfficeKey @Office
  Scenario: SourceSystemOfficeKey
    Given "SourceSystemOfficeKey" exists in the "Office" metadata
    Then "SourceSystemOfficeKey" MUST be "String" data type
    And "SourceSystemOfficeKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @SyndicateAgentOption @Office
  Scenario: SyndicateAgentOption
    Given "SyndicateAgentOption" exists in the "Office" metadata
    And "SyndicateAgentOption" enum values exist in the metadata
    And "SyndicateAgentOption" enum types MUST have exactly one member
    Then "SyndicateAgentOption" MUST be "String" data type
    And "SyndicateAgentOption" MUST only contain enum values found in the metadata
    And "SyndicateAgentOption" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @SyndicateTo @Office
  Scenario: SyndicateTo
    Given "SyndicateTo" exists in the "Office" metadata
    And "SyndicateTo" enum values exist in the metadata
    And "SyndicateTo" enum types MUST have at least one member
    Then "SyndicateTo" MUST be "String Array" data type
    And "SyndicateTo" SHOULD have no more than the RESO Suggested Max Length of 1024 item(s)
