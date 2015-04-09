dayOne =
"""
|Aperture Medical|Audacy|LUCID VR|UProspie|Shoes Incorporated|Huzza|
|Mesopharm Therapeutics Inc.|Healthy Horizons Lactation Services|Magnetos|YCore|inner circle|TILIKIN Logistics|
|Genesis Technologies|Inquix|Vurge|FoodMatix|Kibbit|Helping Hands Healthcare|
|Intact Therapeutics|ODECI Inc.|Ebotic|Give A Day Global|"Loro (Closer Labs Inc.)"|TapTax|
|Molecular Cosmetics|NeoSTREAM/NeoGenesis Inc|Nom Naturals|8packs|The Rook|Leprechaun|
|EVIMED- Central Venous Catheter Connector|Spectrum|NexTint|Acquainted|CookNook|MarketRPM|
|müvr|SnapCart|RISE and SHINE|aProlix|PartyPuzzle|New Hope Ecotech|
|neoLIFE therapeutics|Serve||soundGrow|Mailias|NowKash|
|NeurEcho|FirstResponse Disaster Solutions||||[Alter]|
"""

dayTwo =
"""
|Footsteps|Opticent Health|JetInsight|POVI, AntWish Inc|Eden|Sessions|MagicChalk|
|Miti Health|SimpleHealth|Optima|RexFit|ArtsUp|QuickSpace|A2Z China|
|Apprentice Field Suite|SmartLens|Parakeet|SomaSole Inc|GlamPass|Bandura Games|Codehub|
|Beacon|FirstStep|Qollaboration|MYcrogrid|Couch Potatoes|Civil|Libra|
|DoseDoctor|Torix Medical|Quorum|Create Cusine|FindX|Wolio|Panotip|
|Gayle|White Light Medical - AccuSpine|Rhythmiq|Ale Mail|Frucket|Ready!|TOTO Express|
|Legacy Partners|Wickit Medical|BioCarbon Engineering|Cerulean Robotics|Verbatm|UnifiApp||
|Rehab Hero|Genemetric|Solfice CivilMaps|||||
|UberHealth for families|TocoTrack|Bounty Box|||||
|Call Ambulance|FlossTime|XStream|||||
"""

linkId = (name) ->
  return name.toLowerCase().split(" ").join("-")

printLinkedTable = (day) ->
  table = day.split("|")
  tableLinked = []
  for team in table
    if team.length > 0 and team isnt "\n"
      tableLinked.push("[#{team}](##{linkId(team)})")
    else
      tableLinked.push(team)
  
  console.log tableLinked.join("|")

printLinkedTable dayTwo
