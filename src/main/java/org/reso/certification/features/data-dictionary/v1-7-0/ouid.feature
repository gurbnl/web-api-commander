# This file was autogenerated on: 20201014231018369
Feature: OUID

  Background:
    Given a RESOScript or Metadata file are provided
    When a RESOScript file is provided
    Then Client Settings and Parameters can be read from the RESOScript
    And a test container was successfully created from the given RESOScript file
    And the test container uses an Authorization Code or Client Credentials for authentication
    And valid metadata were retrieved from the server
    When a metadata file is provided
    Then a test container was successfully created from the given metadata file
    And valid metadata are loaded into the test container

  @OUID
  Scenario: ChangedByMemberID
    When "ChangedByMemberID" exists in the "OUID" metadata
    Then "ChangedByMemberID" MUST be "String" data type
    And the following synonyms for "ChangedByMemberID" MUST NOT exist in the metadata
      | ChangedByAgentID |
    And "ChangedByMemberID" length SHOULD be equal to the RESO Suggested Max Length of 25

  @OUID
  Scenario: ChangedByMemberKey
    When "ChangedByMemberKey" exists in the "OUID" metadata
    Then "ChangedByMemberKey" MUST be "String" data type
    And the following synonyms for "ChangedByMemberKey" MUST NOT exist in the metadata
      | ChangedByAgentKey |
    And "ChangedByMemberKey" length SHOULD be equal to the RESO Suggested Max Length of 255

  @OUID
  Scenario: ChangedByMemberKeyNumeric
    When "ChangedByMemberKeyNumeric" exists in the "OUID" metadata
    Then "ChangedByMemberKeyNumeric" MUST be "Integer" data type
    And the following synonyms for "ChangedByMemberKeyNumeric" MUST NOT exist in the metadata
      | ChangedByAgentKeyNumeric |

  @OUID
  Scenario: ModificationTimestamp
    When "ModificationTimestamp" exists in the "OUID" metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type

  @OUID
  Scenario: OrganizationAOR
    When "OrganizationAOR" exists in the "OUID" metadata
    Then "OrganizationAOR" MUST be "Single Enumeration" data type

  @OUID
  Scenario: OrganizationAddress1
    When "OrganizationAddress1" exists in the "OUID" metadata
    Then "OrganizationAddress1" MUST be "String" data type
    And "OrganizationAddress1" length SHOULD be equal to the RESO Suggested Max Length of 50

  @OUID
  Scenario: OrganizationAddress2
    When "OrganizationAddress2" exists in the "OUID" metadata
    Then "OrganizationAddress2" MUST be "String" data type
    And "OrganizationAddress2" length SHOULD be equal to the RESO Suggested Max Length of 50

  @OUID
  Scenario: OrganizationAorOuid
    When "OrganizationAorOuid" exists in the "OUID" metadata
    Then "OrganizationAorOuid" MUST be "String" data type
    And "OrganizationAorOuid" length SHOULD be equal to the RESO Suggested Max Length of 25

  @OUID
  Scenario: OrganizationAorOuidKey
    When "OrganizationAorOuidKey" exists in the "OUID" metadata
    Then "OrganizationAorOuidKey" MUST be "String" data type
    And "OrganizationAorOuidKey" length SHOULD be equal to the RESO Suggested Max Length of 255

  @OUID
  Scenario: OrganizationAorOuidKeyNumeric
    When "OrganizationAorOuidKeyNumeric" exists in the "OUID" metadata
    Then "OrganizationAorOuidKeyNumeric" MUST be "Integer" data type

  @OUID
  Scenario: OrganizationCarrierRoute
    When "OrganizationCarrierRoute" exists in the "OUID" metadata
    Then "OrganizationCarrierRoute" MUST be "String" data type
    And the following synonyms for "OrganizationCarrierRoute" MUST NOT exist in the metadata
      | RR |
      | CR |
    And "OrganizationCarrierRoute" length SHOULD be equal to the RESO Suggested Max Length of 9

  @OUID
  Scenario: OrganizationCity
    When "OrganizationCity" exists in the "OUID" metadata
    Then "OrganizationCity" MUST be "String" data type
    And "OrganizationCity" length SHOULD be equal to the RESO Suggested Max Length of 50

  @OUID
  Scenario: OrganizationComments
    When "OrganizationComments" exists in the "OUID" metadata
    Then "OrganizationComments" MUST be "String" data type
    And "OrganizationComments" length SHOULD be equal to the RESO Suggested Max Length of 500

  @OUID
  Scenario: OrganizationContactEmail
    When "OrganizationContactEmail" exists in the "OUID" metadata
    Then "OrganizationContactEmail" MUST be "String" data type
    And "OrganizationContactEmail" length SHOULD be equal to the RESO Suggested Max Length of 80

  @OUID
  Scenario: OrganizationContactFax
    When "OrganizationContactFax" exists in the "OUID" metadata
    Then "OrganizationContactFax" MUST be "String" data type
    And "OrganizationContactFax" length SHOULD be equal to the RESO Suggested Max Length of 16

  @OUID
  Scenario: OrganizationContactFirstName
    When "OrganizationContactFirstName" exists in the "OUID" metadata
    Then "OrganizationContactFirstName" MUST be "String" data type
    And "OrganizationContactFirstName" length SHOULD be equal to the RESO Suggested Max Length of 50

  @OUID
  Scenario: OrganizationContactFullName
    When "OrganizationContactFullName" exists in the "OUID" metadata
    Then "OrganizationContactFullName" MUST be "String" data type
    And "OrganizationContactFullName" length SHOULD be equal to the RESO Suggested Max Length of 150

  @OUID
  Scenario: OrganizationContactJobTitle
    When "OrganizationContactJobTitle" exists in the "OUID" metadata
    Then "OrganizationContactJobTitle" MUST be "String" data type
    And "OrganizationContactJobTitle" length SHOULD be equal to the RESO Suggested Max Length of 50

  @OUID
  Scenario: OrganizationContactLastName
    When "OrganizationContactLastName" exists in the "OUID" metadata
    Then "OrganizationContactLastName" MUST be "String" data type
    And "OrganizationContactLastName" length SHOULD be equal to the RESO Suggested Max Length of 50

  @OUID
  Scenario: OrganizationContactMiddleName
    When "OrganizationContactMiddleName" exists in the "OUID" metadata
    Then "OrganizationContactMiddleName" MUST be "String" data type
    And "OrganizationContactMiddleName" length SHOULD be equal to the RESO Suggested Max Length of 50

  @OUID
  Scenario: OrganizationContactNamePrefix
    When "OrganizationContactNamePrefix" exists in the "OUID" metadata
    Then "OrganizationContactNamePrefix" MUST be "String" data type
    And the following synonyms for "OrganizationContactNamePrefix" MUST NOT exist in the metadata
      | Salutation |
      | Title |
    And "OrganizationContactNamePrefix" length SHOULD be equal to the RESO Suggested Max Length of 10

  @OUID
  Scenario: OrganizationContactNameSuffix
    When "OrganizationContactNameSuffix" exists in the "OUID" metadata
    Then "OrganizationContactNameSuffix" MUST be "String" data type
    And "OrganizationContactNameSuffix" length SHOULD be equal to the RESO Suggested Max Length of 10

  @OUID
  Scenario: OrganizationContactPhone
    When "OrganizationContactPhone" exists in the "OUID" metadata
    Then "OrganizationContactPhone" MUST be "String" data type
    And "OrganizationContactPhone" length SHOULD be equal to the RESO Suggested Max Length of 16

  @OUID
  Scenario: OrganizationContactPhoneExt
    When "OrganizationContactPhoneExt" exists in the "OUID" metadata
    Then "OrganizationContactPhoneExt" MUST be "String" data type
    And "OrganizationContactPhoneExt" length SHOULD be equal to the RESO Suggested Max Length of 10

  @OUID
  Scenario: OrganizationCountry
    When "OrganizationCountry" exists in the "OUID" metadata
    Then "OrganizationCountry" MUST be "Single Enumeration" data type
    And "OrganizationCountry" MAY contain any of the following standard lookups
      | lookupValue | lookupDisplayName |
      | AD | AD |
      | AE | AE |
      | AF | AF |
      | AG | AG |
      | AI | AI |
      | AL | AL |
      | AM | AM |
      | AN | AN |
      | AO | AO |
      | AQ | AQ |
      | AR | AR |
      | AS | AS |
      | AT | AT |
      | AU | AU |
      | AW | AW |
      | AX | AX |
      | AZ | AZ |
      | BA | BA |
      | BB | BB |
      | BD | BD |
      | BE | BE |
      | BF | BF |
      | BG | BG |
      | BH | BH |
      | BI | BI |
      | BJ | BJ |
      | BL | BL |
      | BM | BM |
      | BN | BN |
      | BO | BO |
      | BR | BR |
      | BS | BS |
      | BT | BT |
      | BV | BV |
      | BW | BW |
      | BY | BY |
      | BZ | BZ |
      | CA | CA |
      | CC | CC |
      | CD | CD |
      | CF | CF |
      | CG | CG |
      | CH | CH |
      | CI | CI |
      | CK | CK |
      | CL | CL |
      | CM | CM |
      | CN | CN |
      | CO | CO |
      | CR | CR |
      | CU | CU |
      | CV | CV |
      | CX | CX |
      | CY | CY |
      | CZ | CZ |
      | DE | DE |
      | DJ | DJ |
      | DK | DK |
      | DM | DM |
      | DO | DO |
      | DZ | DZ |
      | EC | EC |
      | EE | EE |
      | EG | EG |
      | EH | EH |
      | ER | ER |
      | ES | ES |
      | ET | ET |
      | FI | FI |
      | FJ | FJ |
      | FK | FK |
      | FM | FM |
      | FO | FO |
      | FR | FR |
      | GA | GA |
      | GB | GB |
      | GD | GD |
      | GE | GE |
      | GF | GF |
      | GG | GG |
      | GH | GH |
      | GI | GI |
      | GL | GL |
      | GM | GM |
      | GN | GN |
      | GP | GP |
      | GQ | GQ |
      | GR | GR |
      | GS | GS |
      | GT | GT |
      | GU | GU |
      | GW | GW |
      | GY | GY |
      | HK | HK |
      | HM | HM |
      | HN | HN |
      | HR | HR |
      | HT | HT |
      | HU | HU |
      | ID | ID |
      | IE | IE |
      | IL | IL |
      | IM | IM |
      | IN | IN |
      | IO | IO |
      | IQ | IQ |
      | IR | IR |
      | IS | IS |
      | IT | IT |
      | JE | JE |
      | JM | JM |
      | JO | JO |
      | JP | JP |
      | KE | KE |
      | KG | KG |
      | KH | KH |
      | KI | KI |
      | KM | KM |
      | KN | KN |
      | KP | KP |
      | KR | KR |
      | KW | KW |
      | KY | KY |
      | KZ | KZ |
      | LA | LA |
      | LB | LB |
      | LC | LC |
      | LI | LI |
      | LK | LK |
      | LR | LR |
      | LS | LS |
      | LT | LT |
      | LU | LU |
      | LV | LV |
      | LY | LY |
      | MA | MA |
      | MC | MC |
      | MD | MD |
      | ME | ME |
      | MF | MF |
      | MG | MG |
      | MH | MH |
      | MK | MK |
      | ML | ML |
      | MM | MM |
      | MN | MN |
      | MO | MO |
      | MP | MP |
      | MQ | MQ |
      | MR | MR |
      | MS | MS |
      | MT | MT |
      | MU | MU |
      | MV | MV |
      | MW | MW |
      | MX | MX |
      | MY | MY |
      | MZ | MZ |
      | NA | NA |
      | NC | NC |
      | NE | NE |
      | NF | NF |
      | NG | NG |
      | NI | NI |
      | NL | NL |
      | NP | NP |
      | NR | NR |
      | NU | NU |
      | NZ | NZ |
      | OM | OM |
      | OT | OT |
      | PA | PA |
      | PE | PE |
      | PF | PF |
      | PG | PG |
      | PH | PH |
      | PK | PK |
      | PL | PL |
      | PM | PM |
      | PN | PN |
      | PR | PR |
      | PS | PS |
      | PT | PT |
      | PW | PW |
      | PY | PY |
      | QA | QA |
      | RE | RE |
      | RO | RO |
      | RS | RS |
      | RU | RU |
      | RW | RW |
      | SA | SA |
      | SB | SB |
      | SC | SC |
      | SD | SD |
      | SE | SE |
      | SG | SG |
      | SH | SH |
      | SI | SI |
      | SJ | SJ |
      | SK | SK |
      | SL | SL |
      | SM | SM |
      | SN | SN |
      | SO | SO |
      | SR | SR |
      | ST | ST |
      | SV | SV |
      | SY | SY |
      | SZ | SZ |
      | TC | TC |
      | TD | TD |
      | TF | TF |
      | TG | TG |
      | TH | TH |
      | TJ | TJ |
      | TK | TK |
      | TL | TL |
      | TM | TM |
      | TN | TN |
      | TO | TO |
      | TR | TR |
      | TT | TT |
      | TV | TV |
      | TW | TW |
      | TZ | TZ |
      | UA | UA |
      | UG | UG |
      | UM | UM |
      | US | US |
      | UY | UY |
      | UZ | UZ |
      | VA | VA |
      | VC | VC |
      | VE | VE |
      | VG | VG |
      | VI | VI |
      | VN | VN |
      | VU | VU |
      | WF | WF |
      | WS | WS |
      | YE | YE |
      | YT | YT |
      | ZA | ZA |
      | ZM | ZM |
      | ZW | ZW |
    But "OrganizationCountry" MUST NOT contain any similar lookups

  @OUID
  Scenario: OrganizationCountyOrParish
    When "OrganizationCountyOrParish" exists in the "OUID" metadata
    Then "OrganizationCountyOrParish" MUST be "Single Enumeration" data type
    And the following synonyms for "OrganizationCountyOrParish" MUST NOT exist in the metadata
      | County |

  @OUID
  Scenario: OrganizationMemberCount
    When "OrganizationMemberCount" exists in the "OUID" metadata
    Then "OrganizationMemberCount" MUST be "Integer" data type
    And the following synonyms for "OrganizationMemberCount" MUST NOT exist in the metadata
      | OrganizationAgentCount |

  @OUID
  Scenario: OrganizationMlsCode
    When "OrganizationMlsCode" exists in the "OUID" metadata
    Then "OrganizationMlsCode" MUST be "String" data type
    And "OrganizationMlsCode" length SHOULD be equal to the RESO Suggested Max Length of 25

  @OUID
  Scenario: OrganizationMlsVendorName
    When "OrganizationMlsVendorName" exists in the "OUID" metadata
    Then "OrganizationMlsVendorName" MUST be "String" data type
    And "OrganizationMlsVendorName" length SHOULD be equal to the RESO Suggested Max Length of 255

  @OUID
  Scenario: OrganizationMlsVendorOuid
    When "OrganizationMlsVendorOuid" exists in the "OUID" metadata
    Then "OrganizationMlsVendorOuid" MUST be "String" data type
    And "OrganizationMlsVendorOuid" length SHOULD be equal to the RESO Suggested Max Length of 25

  @OUID
  Scenario: OrganizationName
    When "OrganizationName" exists in the "OUID" metadata
    Then "OrganizationName" MUST be "String" data type
    And "OrganizationName" length SHOULD be equal to the RESO Suggested Max Length of 255

  @OUID
  Scenario: OrganizationNationalAssociationId
    When "OrganizationNationalAssociationId" exists in the "OUID" metadata
    Then "OrganizationNationalAssociationId" MUST be "String" data type
    And "OrganizationNationalAssociationId" length SHOULD be equal to the RESO Suggested Max Length of 25

  @OUID
  Scenario: OrganizationPostalCode
    When "OrganizationPostalCode" exists in the "OUID" metadata
    Then "OrganizationPostalCode" MUST be "String" data type
    And "OrganizationPostalCode" length SHOULD be equal to the RESO Suggested Max Length of 10

  @OUID
  Scenario: OrganizationPostalCodePlus4
    When "OrganizationPostalCodePlus4" exists in the "OUID" metadata
    Then "OrganizationPostalCodePlus4" MUST be "String" data type
    And "OrganizationPostalCodePlus4" length SHOULD be equal to the RESO Suggested Max Length of 4

  @OUID
  Scenario: OrganizationSocialMediaType
    When "OrganizationSocialMediaType" exists in the "OUID" metadata
    Then "OrganizationSocialMediaType" MUST be "Single Enumeration" data type
    And "OrganizationSocialMediaType" MAY contain any of the following standard lookups
      | lookupValue | lookupDisplayName |
      | Blog | Blog |
      | Digg | Digg |
      | Facebook | Facebook |
      | FacebookMessenger | Facebook Messenger |
      | Googleplus | GooglePlus |
      | iMessage | iMessage |
      | Instagram | Instagram |
      | Linkedin | LinkedIn |
      | Pinterest | Pinterest |
      | Reddit | Reddit |
      | Slack | Slack |
      | Snapchat | Snapchat |
      | Stumbleupon | StumbleUpon |
      | Tumblr | Tumblr |
      | Twitter | Twitter |
      | Website | Website |
      | Youtube | YouTube |
    But "OrganizationSocialMediaType" MUST NOT contain any similar lookups

  @OUID
  Scenario: OrganizationStateLicense
    When "OrganizationStateLicense" exists in the "OUID" metadata
    Then "OrganizationStateLicense" MUST be "String" data type
    And "OrganizationStateLicense" length SHOULD be equal to the RESO Suggested Max Length of 50

  @OUID
  Scenario: OrganizationStateLicenseState
    When "OrganizationStateLicenseState" exists in the "OUID" metadata
    Then "OrganizationStateLicenseState" MUST be "Single Enumeration" data type
    And "OrganizationStateLicenseState" MAY contain any of the following standard lookups
      | lookupValue | lookupDisplayName |
      | AB | AB |
      | AK | AK |
      | AL | AL |
      | AR | AR |
      | AZ | AZ |
      | BC | BC |
      | CA | CA |
      | CO | CO |
      | CT | CT |
      | DC | DC |
      | DE | DE |
      | FL | FL |
      | GA | GA |
      | HI | HI |
      | IA | IA |
      | ID | ID |
      | IL | IL |
      | IN | IN |
      | KS | KS |
      | KY | KY |
      | LA | LA |
      | MA | MA |
      | MB | MB |
      | MD | MD |
      | ME | ME |
      | MI | MI |
      | MN | MN |
      | MO | MO |
      | MS | MS |
      | MT | MT |
      | NB | NB |
      | NC | NC |
      | ND | ND |
      | NE | NE |
      | NF | NF |
      | NH | NH |
      | NJ | NJ |
      | NM | NM |
      | NS | NS |
      | NT | NT |
      | NU | NU |
      | NV | NV |
      | NY | NY |
      | OH | OH |
      | OK | OK |
      | ON | ON |
      | OR | OR |
      | PA | PA |
      | PE | PE |
      | QC | QC |
      | RI | RI |
      | SC | SC |
      | SD | SD |
      | SK | SK |
      | TN | TN |
      | TX | TX |
      | UT | UT |
      | VA | VA |
      | VI | VI |
      | VT | VT |
      | WA | WA |
      | WI | WI |
      | WV | WV |
      | WY | WY |
      | YT | YT |
    But "OrganizationStateLicenseState" MUST NOT contain any similar lookups

  @OUID
  Scenario: OrganizationStateOrProvince
    When "OrganizationStateOrProvince" exists in the "OUID" metadata
    Then "OrganizationStateOrProvince" MUST be "Single Enumeration" data type
    And "OrganizationStateOrProvince" MAY contain any of the following standard lookups
      | lookupValue | lookupDisplayName |
      | AB | AB |
      | AK | AK |
      | AL | AL |
      | AR | AR |
      | AZ | AZ |
      | BC | BC |
      | CA | CA |
      | CO | CO |
      | CT | CT |
      | DC | DC |
      | DE | DE |
      | FL | FL |
      | GA | GA |
      | HI | HI |
      | IA | IA |
      | ID | ID |
      | IL | IL |
      | IN | IN |
      | KS | KS |
      | KY | KY |
      | LA | LA |
      | MA | MA |
      | MB | MB |
      | MD | MD |
      | ME | ME |
      | MI | MI |
      | MN | MN |
      | MO | MO |
      | MS | MS |
      | MT | MT |
      | NB | NB |
      | NC | NC |
      | ND | ND |
      | NE | NE |
      | NF | NF |
      | NH | NH |
      | NJ | NJ |
      | NM | NM |
      | NS | NS |
      | NT | NT |
      | NU | NU |
      | NV | NV |
      | NY | NY |
      | OH | OH |
      | OK | OK |
      | ON | ON |
      | OR | OR |
      | PA | PA |
      | PE | PE |
      | QC | QC |
      | RI | RI |
      | SC | SC |
      | SD | SD |
      | SK | SK |
      | TN | TN |
      | TX | TX |
      | UT | UT |
      | VA | VA |
      | VI | VI |
      | VT | VT |
      | WA | WA |
      | WI | WI |
      | WV | WV |
      | WY | WY |
      | YT | YT |
    But "OrganizationStateOrProvince" MUST NOT contain any similar lookups

  @OUID
  Scenario: OrganizationStatus
    When "OrganizationStatus" exists in the "OUID" metadata
    Then "OrganizationStatus" MUST be "Boolean" data type

  @OUID
  Scenario: OrganizationStatusChangeTimestamp
    When "OrganizationStatusChangeTimestamp" exists in the "OUID" metadata
    Then "OrganizationStatusChangeTimestamp" MUST be "Timestamp" data type

  @OUID
  Scenario: OrganizationType
    When "OrganizationType" exists in the "OUID" metadata
    Then "OrganizationType" MUST be "Single Enumeration" data type

  @OUID
  Scenario: OrganizationUniqueId
    When "OrganizationUniqueId" exists in the "OUID" metadata
    Then "OrganizationUniqueId" MUST be "String" data type
    And "OrganizationUniqueId" length SHOULD be equal to the RESO Suggested Max Length of 25

  @OUID
  Scenario: OrganizationUniqueIdKey
    When "OrganizationUniqueIdKey" exists in the "OUID" metadata
    Then "OrganizationUniqueIdKey" MUST be "String" data type
    And "OrganizationUniqueIdKey" length SHOULD be equal to the RESO Suggested Max Length of 255

  @OUID
  Scenario: OrganizationUniqueIdKeyNumeric
    When "OrganizationUniqueIdKeyNumeric" exists in the "OUID" metadata
    Then "OrganizationUniqueIdKeyNumeric" MUST be "Integer" data type

  @OUID
  Scenario: OriginalEntryTimestamp
    When "OriginalEntryTimestamp" exists in the "OUID" metadata
    Then "OriginalEntryTimestamp" MUST be "Timestamp" data type
