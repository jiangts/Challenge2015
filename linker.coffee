dayOne =
"""
|First Step          | Y Core                | Beacon                           | Mesopharm Therapeutics              | Evimed - Central Venous Catheter Connector | Neolife Therapeutics     |
|Legacy Partners     | Miti Health           | FirstResponse Disaster Solutions | NexTint                             | Give A Day Global                          | CookNook                 |
|Spectrum            | TOTO Express          | Bounty Box                       | Create Cuisine                      | Bandura Games                              | FoodMatix                |
|                    | BioCarbon Engineering |                                  |                                     |                                            |                          |
"""

dayTwo =
"""
| Legacy Partners        |                                            | TOTO Express                        | FirstResponse Disaster Solutions | NexTint                            | Give A Day Global        | Setup  |
| Miti Health            | Neolife Therapeutics                       | BioCarbon Engineering               | Bounty Box                                     | Create Cuisine                     | Bandura Games            | Setup  |
| Beacon                 | Mesopharm Therapeutics                     | Quorum                              | Spectrum                                       | CookNook                           | FoodMatix                | Setup  |
|                        |                                            |                                     |                                                |                                    |                          |        |
| First Step             | White Light Medical                        | Qollaboration                       | SnapCart                                       | MYcrogrid                          | Eden                     | Setup  |
| Apprentice Field Suite | FlossTime                                  | Healthy Horizons Lactation Services | Tilikin Logistics                              | Cerulean Robotics                  | SoundGrow                | Setup  |
| Footsteps              | Genesis Technologies                       | Solfice CivilMaps                   | ODECI                                          | Nom Naturals                       | Ready                    | Setup  |
|                        |                                            |                                     |                                                |                                    |                          |        |
| smartlens              | Simple Health                              | Assured                             | Serve                                          | aProlix                            | Party Puzzle             | Setup  |
|                        | Aperture Medical                           | JetInsight                          | Audacy                                         | 8packs                             | UnifiApp                 | Setup  |
|                        | Evimed - Central Venous Catheter Connector |                                     | XStream                                        | SomaSole                           | Kibbit                   | Setup  |
"""

linkId = (name) ->
  return name.toLowerCase().split(" ").join("-")

printLinkedTable = (day) ->
  table = day.split("|")
  tableLinked = []
  for team in table
    if team.length > 0 and team isnt "\n"
      team = team.trim()
      tableLinked.push("[#{team}](##{linkId(team)})")
    else
      tableLinked.push(team)
  
  console.log tableLinked.join("|")

printLinkedTable dayTwo
