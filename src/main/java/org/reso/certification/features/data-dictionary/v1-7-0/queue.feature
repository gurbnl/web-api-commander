# This file was autogenerated on: 20200513000509418
Feature: Queue

  Background:
    Given a RESOScript file was provided
    And Client Settings and Parameters were read from the file
    And a test container was successfully created from the given RESOScript
    And the test container uses an Authorization Code or Client Credentials for authentication
    And valid metadata were retrieved from the server

  @ClassName @Queue
  Scenario: ClassName
    Given "ClassName" exists in the "Queue" metadata
    And "ClassName" enum values exist in the metadata
    And "ClassName" enum types MUST have exactly one member
    Then "ClassName" MUST be "String" data type
    And "ClassName" MUST only contain enum values found in the metadata
    And "ClassName" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @ModificationTimestamp @Queue
  Scenario: ModificationTimestamp
    Given "ModificationTimestamp" exists in the "Queue" metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type
    And "ModificationTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @OriginatingSystemID @Queue
  Scenario: OriginatingSystemID
    Given "OriginatingSystemID" exists in the "Queue" metadata
    Then "OriginatingSystemID" MUST be "String" data type
    And "OriginatingSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @OriginatingSystemName @Queue
  Scenario: OriginatingSystemName
    Given "OriginatingSystemName" exists in the "Queue" metadata
    Then "OriginatingSystemName" MUST be "String" data type
    And "OriginatingSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @OriginatingSystemQueueKey @Queue
  Scenario: OriginatingSystemQueueKey
    Given "OriginatingSystemQueueKey" exists in the "Queue" metadata
    Then "OriginatingSystemQueueKey" MUST be "String" data type
    And "OriginatingSystemQueueKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @QueueTransactionKey @Queue
  Scenario: QueueTransactionKey
    Given "QueueTransactionKey" exists in the "Queue" metadata
    Then "QueueTransactionKey" MUST be "String" data type
    And "QueueTransactionKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @QueueTransactionKeyNumeric @Queue
  Scenario: QueueTransactionKeyNumeric
    Given "QueueTransactionKeyNumeric" exists in the "Queue" metadata
    Then "QueueTransactionKeyNumeric" MUST be "Integer" data type

  @QueueTransactionType @Queue
  Scenario: QueueTransactionType
    Given "QueueTransactionType" exists in the "Queue" metadata
    And "QueueTransactionType" enum values exist in the metadata
    And "QueueTransactionType" enum types MUST have exactly one member
    Then "QueueTransactionType" MUST be "String" data type
    And "QueueTransactionType" MUST only contain enum values found in the metadata
    And "QueueTransactionType" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ResourceName @Queue
  Scenario: ResourceName
    Given "ResourceName" exists in the "Queue" metadata
    And "ResourceName" enum values exist in the metadata
    And "ResourceName" enum types MUST have exactly one member
    Then "ResourceName" MUST be "String" data type
    And "ResourceName" MUST only contain enum values found in the metadata
    And "ResourceName" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @ResourceRecordID @Queue
  Scenario: ResourceRecordID
    Given "ResourceRecordID" exists in the "Queue" metadata
    Then "ResourceRecordID" MUST be "String" data type
    And "ResourceRecordID" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ResourceRecordKey @Queue
  Scenario: ResourceRecordKey
    Given "ResourceRecordKey" exists in the "Queue" metadata
    Then "ResourceRecordKey" MUST be "String" data type
    And "ResourceRecordKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ResourceRecordKeyNumeric @Queue
  Scenario: ResourceRecordKeyNumeric
    Given "ResourceRecordKeyNumeric" exists in the "Queue" metadata
    Then "ResourceRecordKeyNumeric" MUST be "Integer" data type

  @SourceSystemID @Queue
  Scenario: SourceSystemID
    Given "SourceSystemID" exists in the "Queue" metadata
    Then "SourceSystemID" MUST be "String" data type
    And "SourceSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @SourceSystemName @Queue
  Scenario: SourceSystemName
    Given "SourceSystemName" exists in the "Queue" metadata
    Then "SourceSystemName" MUST be "String" data type
    And "SourceSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @SourceSystemQueueKey @Queue
  Scenario: SourceSystemQueueKey
    Given "SourceSystemQueueKey" exists in the "Queue" metadata
    Then "SourceSystemQueueKey" MUST be "String" data type
    And "SourceSystemQueueKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255
