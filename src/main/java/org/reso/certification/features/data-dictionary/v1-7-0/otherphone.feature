# This file was autogenerated on: 20200619130611893
Feature: OtherPhone

  Background:
    Given a RESOScript file was provided
    And Client Settings and Parameters were read from the file
    And a test container was successfully created from the given RESOScript
    And the test container uses an Authorization Code or Client Credentials for authentication
    And valid metadata were retrieved from the server

  @ClassName @OtherPhone
  Scenario: ClassName
    When "ClassName" exists in the "OtherPhone" metadata
    Then "ClassName" MUST be "Single Enumeration" data type

  @ModificationTimestamp @OtherPhone
  Scenario: ModificationTimestamp
    When "ModificationTimestamp" exists in the "OtherPhone" metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type

  @OtherPhoneExt @OtherPhone
  Scenario: OtherPhoneExt
    When "OtherPhoneExt" exists in the "OtherPhone" metadata
    Then "OtherPhoneExt" MUST be "String" data type
    And "OtherPhoneExt" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @OtherPhoneKey @OtherPhone
  Scenario: OtherPhoneKey
    When "OtherPhoneKey" exists in the "OtherPhone" metadata
    Then "OtherPhoneKey" MUST be "String" data type
    And "OtherPhoneKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @OtherPhoneKeyNumeric @OtherPhone
  Scenario: OtherPhoneKeyNumeric
    When "OtherPhoneKeyNumeric" exists in the "OtherPhone" metadata
    Then "OtherPhoneKeyNumeric" MUST be "Integer" data type

  @OtherPhoneNumber @OtherPhone
  Scenario: OtherPhoneNumber
    When "OtherPhoneNumber" exists in the "OtherPhone" metadata
    Then "OtherPhoneNumber" MUST be "String" data type
    And "OtherPhoneNumber" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @OtherPhoneType @OtherPhone
  Scenario: OtherPhoneType
    When "OtherPhoneType" exists in the "OtherPhone" metadata
    Then "OtherPhoneType" MUST be "Single Enumeration" data type

  @ResourceName @OtherPhone
  Scenario: ResourceName
    When "ResourceName" exists in the "OtherPhone" metadata
    Then "ResourceName" MUST be "Single Enumeration" data type

  @ResourceRecordID @OtherPhone
  Scenario: ResourceRecordID
    When "ResourceRecordID" exists in the "OtherPhone" metadata
    Then "ResourceRecordID" MUST be "String" data type
    And "ResourceRecordID" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ResourceRecordKey @OtherPhone
  Scenario: ResourceRecordKey
    When "ResourceRecordKey" exists in the "OtherPhone" metadata
    Then "ResourceRecordKey" MUST be "String" data type
    And "ResourceRecordKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ResourceRecordKeyNumeric @OtherPhone
  Scenario: ResourceRecordKeyNumeric
    When "ResourceRecordKeyNumeric" exists in the "OtherPhone" metadata
    Then "ResourceRecordKeyNumeric" MUST be "Integer" data type
