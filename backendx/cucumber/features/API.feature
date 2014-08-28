Feature: Get the list of resources 
  Retrieves list of resources such as machines, locations
  or other type of data streams.

  Scenario: Get the list of harvesters
    Given the client is logged in
    When the client requests data for "machines" that are "harvesters" 
    Then the response is a resource with multiple machines entries organized by VIN
    And each machine has the following attributes:
      |  attribute         |  descriptions    | 
      |  formats           |  String          | 
      |  meta              |  String          | 
      |  data              |  Integer         | 
    And each meta attribute of each machine contains the following information:
      |  serial_number |
      |  model_year    |
      |  model         |
      |  name          |
    And each formats attribute of each machine is valid
    And each data attributes of each machine are streams of the following resources:
      |  swath_width     |
      |  location        |
      |  header_position |
      |  wet_mass_flow   |
      |  moisture        |
      |  geofence        |