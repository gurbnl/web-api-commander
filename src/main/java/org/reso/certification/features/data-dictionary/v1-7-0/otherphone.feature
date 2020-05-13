# This file was autogenerated on: 20200513000509418
Feature: OtherPhone

  Background:
    Given a RESOScript file was provided
    And Client Settings and Parameters were read from the file
    And a test container was successfully created from the given RESOScript
    And the test container uses an Authorization Code or Client Credentials for authentication
    And valid metadata were retrieved from the server

  @ClassName @OtherPhone
  Scenario: ClassName
    Given "ClassName" exists in the "OtherPhone" metadata
    And "ClassName" enum values exist in the metadata
    And "ClassName" enum types MUST have exactly one member
    Then "ClassName" MUST be "String" data type
    And "ClassName" MUST only contain enum values found in the metadata
    And "ClassName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ModificationTimestamp @OtherPhone
  Scenario: ModificationTimestamp
    Given "ModificationTimestamp" exists in the "OtherPhone" metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type
    And "ModificationTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @OtherPhoneExt @OtherPhone
  Scenario: OtherPhoneExt
    Given "OtherPhoneExt" exists in the "OtherPhone" metadata
    Then "OtherPhoneExt" MUST be "String" data type
    And "OtherPhoneExt" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @OtherPhoneKey @OtherPhone
  Scenario: OtherPhoneKey
    Given "OtherPhoneKey" exists in the "OtherPhone" metadata
    Then "OtherPhoneKey" MUST be "String" data type
    And "OtherPhoneKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @OtherPhoneKeyNumeric @OtherPhone
  Scenario: OtherPhoneKeyNumeric
    Given "OtherPhoneKeyNumeric" exists in the "OtherPhone" metadata
    Then "OtherPhoneKeyNumeric" MUST be "Integer" data type

  @OtherPhoneNumber @OtherPhone
  Scenario: OtherPhoneNumber
    Given "OtherPhoneNumber" exists in the "OtherPhone" metadata
    Then "OtherPhoneNumber" MUST be "String" data type
    And "OtherPhoneNumber" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @OtherPhoneType @OtherPhone
  Scenario: OtherPhoneType
    Given "OtherPhoneType" exists in the "OtherPhone" metadata
    And "OtherPhoneType" enum values exist in the metadata
    And "OtherPhoneType" enum types MUST have exactly one member
    Then "OtherPhoneType" MUST be "String" data type
    And "OtherPhoneType" MUST only contain enum values found in the metadata
    And "OtherPhoneType" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @ResourceName @OtherPhone
  Scenario: ResourceName
    Given "ResourceName" exists in the "OtherPhone" metadata
    And "ResourceName" enum values exist in the metadata
    And "ResourceName" enum types MUST have exactly one member
    Then "ResourceName" MUST be "String" data type
    And "ResourceName" MUST only contain enum values found in the metadata
    And "ResourceName" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @ResourceRecordID @OtherPhone
  Scenario: ResourceRecordID
    Given "ResourceRecordID" exists in the "OtherPhone" metadata
    Then "ResourceRecordID" MUST be "String" data type
    And "ResourceRecordID" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ResourceRecordKey @OtherPhone
  Scenario: ResourceRecordKey
    Given "ResourceRecordKey" exists in the "OtherPhone" metadata
    Then "ResourceRecordKey" MUST be "String" data type
    And "ResourceRecordKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ResourceRecordKeyNumeric @OtherPhone
  Scenario: ResourceRecordKeyNumeric
    Given "ResourceRecordKeyNumeric" exists in the "OtherPhone" metadata
    Then "ResourceRecordKeyNumeric" MUST be "Integer" data type
