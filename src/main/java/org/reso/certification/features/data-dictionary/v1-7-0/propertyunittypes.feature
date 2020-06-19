# This file was autogenerated on: 20200619130611893
Feature: PropertyUnitTypes

  Background:
    Given a RESOScript file was provided
    And Client Settings and Parameters were read from the file
    And a test container was successfully created from the given RESOScript
    And the test container uses an Authorization Code or Client Credentials for authentication
    And valid metadata were retrieved from the server

  @ListingId @PropertyUnitTypes
  Scenario: ListingId
    When "ListingId" exists in the "PropertyUnitTypes" metadata
    Then "ListingId" MUST be "String" data type
    And "ListingId" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ListingKey @PropertyUnitTypes
  Scenario: ListingKey
    When "ListingKey" exists in the "PropertyUnitTypes" metadata
    Then "ListingKey" MUST be "String" data type
    And "ListingKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ListingKeyNumeric @PropertyUnitTypes
  Scenario: ListingKeyNumeric
    When "ListingKeyNumeric" exists in the "PropertyUnitTypes" metadata
    Then "ListingKeyNumeric" MUST be "Integer" data type

  @ModificationTimestamp @PropertyUnitTypes
  Scenario: ModificationTimestamp
    When "ModificationTimestamp" exists in the "PropertyUnitTypes" metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type

  @UnitTypeActualRent @PropertyUnitTypes
  Scenario: UnitTypeActualRent
    When "UnitTypeActualRent" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeActualRent" MUST be "Decimal" data type
    And "UnitTypeActualRent" precision SHOULD be less than or equal to the RESO Suggested Max Length of 14
    And "UnitTypeActualRent" scale SHOULD be less than or equal to the RESO Suggested Max Scale of 2

  @UnitTypeBathsTotal @PropertyUnitTypes
  Scenario: UnitTypeBathsTotal
    When "UnitTypeBathsTotal" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeBathsTotal" MUST be "Integer" data type

  @UnitTypeBedsTotal @PropertyUnitTypes
  Scenario: UnitTypeBedsTotal
    When "UnitTypeBedsTotal" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeBedsTotal" MUST be "Integer" data type

  @UnitTypeDescription @PropertyUnitTypes
  Scenario: UnitTypeDescription
    When "UnitTypeDescription" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeDescription" MUST be "String" data type
    And "UnitTypeDescription" length SHOULD be less than or equal to the RESO Suggested Max Length of 1024

  @UnitTypeFurnished @PropertyUnitTypes
  Scenario: UnitTypeFurnished
    When "UnitTypeFurnished" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeFurnished" MUST be "Single Enumeration" data type

  @UnitTypeGarageAttachedYN @PropertyUnitTypes
  Scenario: UnitTypeGarageAttachedYN
    When "UnitTypeGarageAttachedYN" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeGarageAttachedYN" MUST be "Boolean" data type

  @UnitTypeGarageSpaces @PropertyUnitTypes
  Scenario: UnitTypeGarageSpaces
    When "UnitTypeGarageSpaces" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeGarageSpaces" MUST be "Decimal" data type
    And "UnitTypeGarageSpaces" precision SHOULD be less than or equal to the RESO Suggested Max Length of 14
    And "UnitTypeGarageSpaces" scale SHOULD be less than or equal to the RESO Suggested Max Scale of 2

  @UnitTypeKey @PropertyUnitTypes
  Scenario: UnitTypeKey
    When "UnitTypeKey" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeKey" MUST be "String" data type
    And "UnitTypeKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @UnitTypeKeyNumeric @PropertyUnitTypes
  Scenario: UnitTypeKeyNumeric
    When "UnitTypeKeyNumeric" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeKeyNumeric" MUST be "Integer" data type

  @UnitTypeProForma @PropertyUnitTypes
  Scenario: UnitTypeProForma
    When "UnitTypeProForma" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeProForma" MUST be "Integer" data type

  @UnitTypeTotalRent @PropertyUnitTypes
  Scenario: UnitTypeTotalRent
    When "UnitTypeTotalRent" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeTotalRent" MUST be "Decimal" data type
    And "UnitTypeTotalRent" precision SHOULD be less than or equal to the RESO Suggested Max Length of 14
    And "UnitTypeTotalRent" scale SHOULD be less than or equal to the RESO Suggested Max Scale of 2

  @UnitTypeType @PropertyUnitTypes
  Scenario: UnitTypeType
    When "UnitTypeType" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeType" MUST be "Single Enumeration" data type

  @UnitTypeUnitsTotal @PropertyUnitTypes
  Scenario: UnitTypeUnitsTotal
    When "UnitTypeUnitsTotal" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeUnitsTotal" MUST be "Integer" data type
