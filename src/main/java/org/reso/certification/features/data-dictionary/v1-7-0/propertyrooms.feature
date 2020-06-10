# This file was autogenerated on: 20200610020601282
Feature: PropertyRooms

  Background:
    Given a RESOScript file was provided
    And Client Settings and Parameters were read from the file
    And a test container was successfully created from the given RESOScript
    And the test container uses an Authorization Code or Client Credentials for authentication
    And valid metadata were retrieved from the server

  @ListingId @PropertyRooms
  Scenario: ListingId
    Given "ListingId" exists in the "PropertyRooms" metadata
    Then "ListingId" MUST be "String" data type
    And "ListingId" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ListingKey @PropertyRooms
  Scenario: ListingKey
    Given "ListingKey" exists in the "PropertyRooms" metadata
    Then "ListingKey" MUST be "String" data type
    And "ListingKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ListingKeyNumeric @PropertyRooms
  Scenario: ListingKeyNumeric
    Given "ListingKeyNumeric" exists in the "PropertyRooms" metadata
    Then "ListingKeyNumeric" MUST be "Integer" data type

  @ModificationTimestamp @PropertyRooms
  Scenario: ModificationTimestamp
    Given "ModificationTimestamp" exists in the "PropertyRooms" metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type

  @RoomArea @PropertyRooms
  Scenario: RoomArea
    Given "RoomArea" exists in the "PropertyRooms" metadata
    Then "RoomArea" MUST be "Decimal" data type
    And "RoomArea" precision SHOULD be less than or equal to the RESO Suggested Max Length of 14
    And "RoomArea" scale SHOULD be less than or equal to the RESO Suggested Max Scale of 2

  @RoomAreaSource @PropertyRooms
  Scenario: RoomAreaSource
    Given "RoomAreaSource" exists in the "PropertyRooms" metadata
    And "RoomAreaSource" enum values exist in the metadata

  @RoomAreaUnits @PropertyRooms
  Scenario: RoomAreaUnits
    Given "RoomAreaUnits" exists in the "PropertyRooms" metadata
    And "RoomAreaUnits" enum values exist in the metadata

  @RoomDescription @PropertyRooms
  Scenario: RoomDescription
    Given "RoomDescription" exists in the "PropertyRooms" metadata
    Then "RoomDescription" MUST be "String" data type
    And "RoomDescription" length SHOULD be less than or equal to the RESO Suggested Max Length of 1024

  @RoomDimensions @PropertyRooms
  Scenario: RoomDimensions
    Given "RoomDimensions" exists in the "PropertyRooms" metadata
    Then "RoomDimensions" MUST be "String" data type
    And "RoomDimensions" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @RoomFeatures @PropertyRooms
  Scenario: RoomFeatures
    Given "RoomFeatures" exists in the "PropertyRooms" metadata
    And "RoomFeatures" enum values exist in the metadata

  @RoomKey @PropertyRooms
  Scenario: RoomKey
    Given "RoomKey" exists in the "PropertyRooms" metadata
    Then "RoomKey" MUST be "String" data type
    And "RoomKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @RoomKeyNumeric @PropertyRooms
  Scenario: RoomKeyNumeric
    Given "RoomKeyNumeric" exists in the "PropertyRooms" metadata
    Then "RoomKeyNumeric" MUST be "Integer" data type

  @RoomLength @PropertyRooms
  Scenario: RoomLength
    Given "RoomLength" exists in the "PropertyRooms" metadata
    Then "RoomLength" MUST be "Decimal" data type
    And "RoomLength" precision SHOULD be less than or equal to the RESO Suggested Max Length of 14
    And "RoomLength" scale SHOULD be less than or equal to the RESO Suggested Max Scale of 2

  @RoomLengthWidthUnits @PropertyRooms
  Scenario: RoomLengthWidthUnits
    Given "RoomLengthWidthUnits" exists in the "PropertyRooms" metadata
    And "RoomLengthWidthUnits" enum values exist in the metadata

  @RoomType @PropertyRooms
  Scenario: RoomType
    Given "RoomType" exists in the "PropertyRooms" metadata
    And "RoomType" enum values exist in the metadata

  @RoomWidth @PropertyRooms
  Scenario: RoomWidth
    Given "RoomWidth" exists in the "PropertyRooms" metadata
    Then "RoomWidth" MUST be "Decimal" data type
    And "RoomWidth" precision SHOULD be less than or equal to the RESO Suggested Max Length of 14
    And "RoomWidth" scale SHOULD be less than or equal to the RESO Suggested Max Scale of 2
