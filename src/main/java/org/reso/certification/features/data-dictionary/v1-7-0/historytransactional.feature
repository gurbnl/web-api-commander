# This file was autogenerated on: 20200510010510583
Feature: HistoryTransactional

  Background:
    Given a RESOScript file was provided
    And Client Settings and Parameters were read from the file
    And a test container was successfully created from the given RESOScript
    And the test container uses an Authorization Code or Client Credentials for authentication
    And metadata were retrieved from the server
    And metadata are valid

  @ChangeType @HistoryTransactional
  Scenario: ChangeType
    Given "ChangeType" exists in the metadata
    And "ChangeType" enum values exist in the metadata
    And "ChangeType" enum types MUST have exactly one member
    Then "ChangeType" MUST be "String" data type
    And "ChangeType" MUST only contain enum values found in the metadata
    And "ChangeType" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ChangedByMemberID @HistoryTransactional
  Scenario: ChangedByMemberID
    Given "ChangedByMemberID" exists in the metadata
    Then "ChangedByMemberID" MUST be "String" data type
    And "ChangedByMemberID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @ChangedByMemberKey @HistoryTransactional
  Scenario: ChangedByMemberKey
    Given "ChangedByMemberKey" exists in the metadata
    Then "ChangedByMemberKey" MUST be "String" data type
    And "ChangedByMemberKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ChangedByMemberKeyNumeric @HistoryTransactional
  Scenario: ChangedByMemberKeyNumeric
    Given "ChangedByMemberKeyNumeric" exists in the metadata
    Then "ChangedByMemberKeyNumeric" MUST be "Integer" data type

  @ClassName @HistoryTransactional
  Scenario: ClassName
    Given "ClassName" exists in the metadata
    Then "ClassName" MUST be "String" data type
    And "ClassName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @FieldKey @HistoryTransactional
  Scenario: FieldKey
    Given "FieldKey" exists in the metadata
    Then "FieldKey" MUST be "String" data type
    And "FieldKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @FieldKeyNumeric @HistoryTransactional
  Scenario: FieldKeyNumeric
    Given "FieldKeyNumeric" exists in the metadata
    Then "FieldKeyNumeric" MUST be "Integer" data type

  @FieldName @HistoryTransactional
  Scenario: FieldName
    Given "FieldName" exists in the metadata
    Then "FieldName" MUST be "String" data type
    And "FieldName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @HistoryTransactionalKey @HistoryTransactional
  Scenario: HistoryTransactionalKey
    Given "HistoryTransactionalKey" exists in the metadata
    Then "HistoryTransactionalKey" MUST be "String" data type
    And "HistoryTransactionalKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @HistoryTransactionalKeyNumeric @HistoryTransactional
  Scenario: HistoryTransactionalKeyNumeric
    Given "HistoryTransactionalKeyNumeric" exists in the metadata
    Then "HistoryTransactionalKeyNumeric" MUST be "Integer" data type

  @ModificationTimestamp @HistoryTransactional
  Scenario: ModificationTimestamp
    Given "ModificationTimestamp" exists in the metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type
    And "ModificationTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @NewValue @HistoryTransactional
  Scenario: NewValue
    Given "NewValue" exists in the metadata
    Then "NewValue" MUST be "String" data type
    And "NewValue" length SHOULD be less than or equal to the RESO Suggested Max Length of 8000

  @OriginatingSystemHistoryKey @HistoryTransactional
  Scenario: OriginatingSystemHistoryKey
    Given "OriginatingSystemHistoryKey" exists in the metadata
    Then "OriginatingSystemHistoryKey" MUST be "String" data type
    And "OriginatingSystemHistoryKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @OriginatingSystemID @HistoryTransactional
  Scenario: OriginatingSystemID
    Given "OriginatingSystemID" exists in the metadata
    Then "OriginatingSystemID" MUST be "String" data type
    And "OriginatingSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @OriginatingSystemName @HistoryTransactional
  Scenario: OriginatingSystemName
    Given "OriginatingSystemName" exists in the metadata
    Then "OriginatingSystemName" MUST be "String" data type
    And "OriginatingSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @PreviousValue @HistoryTransactional
  Scenario: PreviousValue
    Given "PreviousValue" exists in the metadata
    Then "PreviousValue" MUST be "String" data type
    And "PreviousValue" length SHOULD be less than or equal to the RESO Suggested Max Length of 8000

  @ResourceName @HistoryTransactional
  Scenario: ResourceName
    Given "ResourceName" exists in the metadata
    Then "ResourceName" MUST be "String" data type
    And "ResourceName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ResourceRecordID @HistoryTransactional
  Scenario: ResourceRecordID
    Given "ResourceRecordID" exists in the metadata
    Then "ResourceRecordID" MUST be "String" data type
    And "ResourceRecordID" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ResourceRecordKey @HistoryTransactional
  Scenario: ResourceRecordKey
    Given "ResourceRecordKey" exists in the metadata
    Then "ResourceRecordKey" MUST be "String" data type
    And "ResourceRecordKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ResourceRecordKeyNumeric @HistoryTransactional
  Scenario: ResourceRecordKeyNumeric
    Given "ResourceRecordKeyNumeric" exists in the metadata
    Then "ResourceRecordKeyNumeric" MUST be "Integer" data type

  @SourceSystemHistoryKey @HistoryTransactional
  Scenario: SourceSystemHistoryKey
    Given "SourceSystemHistoryKey" exists in the metadata
    Then "SourceSystemHistoryKey" MUST be "String" data type
    And "SourceSystemHistoryKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @SourceSystemID @HistoryTransactional
  Scenario: SourceSystemID
    Given "SourceSystemID" exists in the metadata
    Then "SourceSystemID" MUST be "String" data type
    And "SourceSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @SourceSystemName @HistoryTransactional
  Scenario: SourceSystemName
    Given "SourceSystemName" exists in the metadata
    Then "SourceSystemName" MUST be "String" data type
    And "SourceSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255
