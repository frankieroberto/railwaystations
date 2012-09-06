# encoding: UTF-8
class Station
  extend ActiveModel::Naming


  STATIONS = [
    {
      :id => "KBX",
      :name => "Kings Cross",
      :things_to_see => "The entrance to Platform 9¾ can be glimpsed by Muggles next to Platform 9.",
      :nearest_pub => "The Parcel Yard is a Fullers pub within the station’s old parcel sorting office.",
      :luggage_storage => "By platforms 9-11. £8.50 for 24 hours.",
      :time_to_kill => "See what's on for free at the British Library, 5 minutes walk away.",
      :lunch_to_go => "M&S, Burger King, Boots. Better options at St Pancras.",
      :number => 1
    },
    {
      :id => "BHM",
      :name => "Birmingham New Street",
      :luggage_storage => "By the Bullring entrance. £3 - £7 per item, depending on hours.",
      :time_to_kill => "Get out of that shopping centre into Birmingham proper. Admire the splendid building of Selfridges.",
      :number => 15
    },
    {
      :id => "GTW",
      :name => "Gatwick Airport",
      :luggage_storage => "In the South Terminal building. £8 per item per day.",
      :number => 9
    },
    {
      :id => "LBG",
      :name => "London Bridge",
      :luggage_storage => "Not available at this station. Nearest facility at Waterloo.",
      :time_to_kill => "Pick up a tasty treat at Borough Market. And don't forget to get dizzy looking at The Shard.",
      :number => 16
    },
    {
      :id => "EUS",
      :name => "Euston",
      :nearest_pub => "The Doric Arch by the bus station outside is a Fullers pub and serves a range of guest ales.",
      :luggage_storage => "Opposite platforms 16–18. £8.50 per item.",
      :lunch_to_go => "Head just outside for a good selection.",
      :time_to_kill => "Stroll the tree lined avenues of Bloomsbury just across the road.",
      :number => 14
    },
    {
      :id => "PAD",
      :name => "Paddington",
      :things_to_see => "Paddington Bear sits by the bottom of the escalators.",
      :luggage_storage => "On Platform 10. £8.50 per item.",
      :lunch_to_go => "Lots of options, not just your standard fare.",
      :time_to_kill => "A short walk in Kensington Gardens.",
      :number => 10
    },
    {
      :id => "EDB",
      :name => "Edinburgh Waverley",
      :luggage_storage => "On platform 2. £7 per item per day.",
      :lunch_to_go => "M&amp;S, Boots and a few others.",
      :time_to_kill => "Get outside and admire the view of the Castle.",
      :best_coffee => "Costa in the station.",
      :number => 5
    },
    {
      :id => "LST",
      :name => "Liverpool Street",
      :things_to_see => "A rusting sculpture called 'Fulcrum' sits outside the Eastern entrance. Walk inside and look up.",
      :nearest_pub => "A Wetherspoons above the main concourse and plenty of old city pubs nearby.",
      :best_coffee => "On a weekday, plenty of coffee carts outside. Or the usuals inside.",
      :luggage_storage => "On Platform 10. £8.50 per item.",
      :time_to_kill => "Take a trip to nearby Spitalfields market.",
      :number => 6
    },
    {
      :id => "LDS",
      :name => "Leeds",
      :luggage_storage => "By the Wellington Street entrance. £3-7 per item.",
      :nearest_pub => "The Scarborough Tap is a great pub with real beer, it's across the road from the main entrance.",
      :time_to_kill => "A trip through the shops on Leeds' main shopping street.",
      :number => 7
    },
    {
      :id => "LIV",
      :name => "Liverpool Lime Street",
      :things_to_see => "Statues of notable locals Ken Dodd and Bressie Braddock stand on the concourse. You can’t miss them.",
      :luggage_storage => "Opposite the Northern Rail booking office. £3-7 per item.",
      :time_to_kill => "You're a short walk from the Walker Art Gallery. Maybe catch a later train?",
      :best_coffee => "There’s a Costa.",
      :lunch_to_go => "M&amp;S, Boots.",
      :number => 13
    },
    {
      :id => "MAN",
      :name => "Manchester Piccadilly",
      :things_to_see => "The wall by platform 12 hosts exhibitions of local art and photography.",
      :luggage_storage => "Halfway down platforms 10 &amp; 11. £3 – £7 per item, depending on hours.",
      :nearest_pub => "The Balcony Bar (you'll find it) has sofas and televisions.",
      :meet_at => "The top of the escalators down to the Metrolink tram platforms.",
      :best_coffee => "Two Costa units, a Starbucks and a Pret. Take your pick.",
      :lunch_to_go => "Plenty of your station standards.",
      :time_to_kill => "Take a stroll through Manchester's Northern Quarter.",
      :number => 2
    },
    {
      :id => "FST",
      :name => "Fenchurch Street",
      :luggage_storage => "Not available here. Nearest facility at Liverpool Street.",
      :number => 4
    },
    {
      :id => "VIC",
      :name => "Victoria",
      :luggage_storage => "Between platforms 7 &amp; 8. £8.50 per item.",
      :lunch_to_go => "The usuals and a couple of decent sushi options.",
      :number => 8
    },
    {
      :id => "CHX",
      :name => "Charing Cross",
      :nearest_pub => "The ancient, cavenous Gordon's Wine Bar can get very busy, but has atmosphere in spades.",
      :best_coffee => "Caffe Nero.",
      :time_to_kill => " Exit towards the tube station to walk along the Thames and admire one of London's finest views.",
      :number => 12
    },
    {
      :id => "GLC",
      :name => "Glasgow Central",
      :lunch_to_go => "Bagels, M&S, Boots.",
      :best_coffee => "Franco's on the station concourse, nice friendly little independent place.",
      :meet_at => "In the corner by the entrance to the Grand Central Hotel there are places to stand which aren't too busy.",
      :lunch_to_go => "Plenty of places on Argyle Street, exit at the lower level from the station.",
      :time_to_kill => "Looking at the brilliant architecture that Glasgow has to offer! The Lighthouse is worth a visit on Mitchell Lane. Also good shopping within easy walking of the station (head north).",
      :number => 11
    },
    {
      :id => "CST",
      :name => "Cannon Street",
      :nearest_pub => "Nearby pub The Bell serves decent ales in a traditional pub atomsphere.",
      :number => 3
    },
    {
      :id => "WAT",
      :name => "Waterloo",
      :meet_at => "Under the clock, naturally.",
      :things_to_see => "Inside the Victory Arch entrance is a memorial to railway staff killed during the two World Wars.",
      :nearest_pub => "The Fire Station across the pub is a popular spot in an unusual building.",
      :number => 17

    },
    {
      :id => "STP",
      :name => "St Pancras",
      :things_to_see => "A statue of John Betjeman admiring the roof celebrates the poet’s role in saving the station.",
      :meet_at => "The large bronze statue of a couple embracing by Paul Day, titled, naturally enough, <cite>Meeting Place</cite>.",
      :best_coffee => "Le Pain De Quotidean serves coffee in the typical French style of a bowl-like cup.",
      :nearest_pub => "Try The Betjemen Arms up on the concourse level which also comes with a great view.",
      :lunch_to_go => "Step outside and admire the grandeur of the St Pancras hotel. And wonder if you can afford to stay…",
      :number => 18
    }
  ]

  attr_accessor :name, :id, :things_to_see, :nearest_pub, :luggage_storage, :meet_at, :best_coffee, :number, :lunch_to_go, :time_to_kill

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def self.find(id)
    Station.new(STATIONS.select {|station| station[:id] == id }.first)
  end

  def self.find_by_number(number)
    station = STATIONS.select {|station| station[:number] == number }.first
    if station
      Station.new(station)
    else
      nil
    end
  end

  def to_param
    id
  end

  def self.all
    stations = []
    STATIONS.sort {|a,b| a[:name] <=> b[:name]}.each do |station|
      stations << Station.new(station)
    end
    stations
  end


end
