# Browser based, multiplayer, 4X space strategy game
## Alan Hong

### Ideas
* Everything is time based, not turn-based
* Improving your empire reduces time needed to colonize a new planet, build fleets, etc.
* Allow user to customize empires before starting? Point-based system to balance choosing traits?
* Technologies to research
* Colony and Empire wide improvements and projects to build
* Customizable ship chassis, weapons, armor, etc. based on technologies researched
* Exploring new systems akin to unlocking new loot? Random chance to find new systems with valuable resources that either provide empire-wide improvements or resources needed for special ship/ship module construction
* Exploring also has chance to find a real player. Chance to detect other player while remaining hidden? Perhaps reliant on special empire trait? Or stealth tech?
* Sensor tech can improve chances to detect incoming attack sooner
* Stealth tech can negate sensor tech to a degree
* Must give vast incentives to attacking other empires in order to promote fun, multiplayer, competitive gameplay
* And/or have random, galactic disasters to promote alliances and PvE style gameplay
* Attacking another player and winning gains the attacking player valuable resources the other player had? Tech the other player may have had? Access to other systems and targets not previously known?
* Once contact established with another empire, can conduct intel gathering missions covertly? In order to discover targets of opportunity?
* Have AI empires along-side human players? Vastly more powerful? Equal in power? Weaker? A mixture of both?
* When coming into contact with another player, allow messages between both players

### Implementation Strategy / Difficulty Scores

### Schema Layout
* Users
  - has one Empire
  - has many Messages
  - id, username, password_digest

* Empires
  - has_and_belongs_to_many :empiretraits
  - has_and_belongs_to_many :technologies
  - has_and_belongs_to_many :resources
  - has many ShipDesigns
  - has many Systems
  - has many Fleets
  - belongs to one User
  - id, name, description, user_id

* EmpireTraits
  - has_and_belongs_to_many :empires
  - id, name, description

* Empires_EmpireTraits
  - id, empire_id, empiretrait_id

* Technologies
  - has_and_belongs_to_many :empires
  - has many Improvements
  - has many ShipDesigns
  - id, name, description, base_time

* Empires_Technologies
  - id, empire_id, technology_id

* Improvements
  - has_and_belongs_to_many :systems
  - belongs to a Technology
  - belongs to a Resource
  - id, name, description, base_time, technology_id, resource_id

* Resources
  - has_and_belongs_to_many :empires
  - has many Improvements
  - has many ShipDesigns
  - id, name, description

* Empires_Resources
  - id, empire_id, resource_id

* ShipDesigns
  - belongs to an Empire
  - belongs to a Technology
  - belongs to a Resource
  - has_and_belongs_to_many :fleets
  - id, name, description, chassis, weapon1, weapon2, weapon3, bombs, armor, shields, engines, sensors, option1, option2, empire_id, fleet_id, technology_id, resource_id

* Systems
  - has_and_belongs_to_many :improvements
  - belongs to an Empire
  - id, name, explored(boolean), colonized(boolean), description, empire_id
  - need to seed a bunch of systems initially?

* Systems_Improvements
  - id, system_id, improvement_id

* Fleets
  - belongs to an Empire
  - has_and_belongs_to_many :ShipDesigns
  - id, name, empire_id

* ShipDesigns_Fleets
  - id, shipDesign_id, fleet_id

* Messages
  - belongs to a User
  - id, body, user_id
