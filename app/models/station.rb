# encoding: UTF-8
class Station
  extend ActiveModel::Naming


  STATIONS = [
    {
      :id => "KBX",
      :name => "Kings Cross",
      :things_to_see => "The entrance to magical Platform&#160;9¾",
      :nearest_pub => "The Parcel Yard, in the station’s old post sorting office",
      :luggage_storage => "By platforms 9–11 <br>£8.50 for 24 hours",
      :time_to_kill => "See what's on at the British Library, 5 minutes walk away",
      :lunch_to_go => "M&S, Burger King, Boots. Better options at St Pancras",
      :meet_at => "Underneath the new geodesic canopy",
      :number => 1
    },
    {
      :id => "BHM",
      :name => "Birmingham New Street",
      :things_to_see => "The nearby <cite>Selfridges</cite> is an architectural marvel",
      :luggage_storage => "By the Bullring entrance <br>£3-7 per item",
      :time_to_kill => "Escape the shopping centre into Birmingham proper",
      :number => 15
    },
    {
      :id => "GTW",
      :name => "Gatwick Airport",
      :luggage_storage => "In the South Terminal building <br>£8 per item per day",
      :number => 9
    },
    {
      :id => "LBG",
      :name => "London Bridge",
      :lunch_to_go => "There’s a few interesting lunch options beneath the station",
      :things_to_see => "Get dizzy looking up at the <cite>Shard</cite> skyscraper just outside",
      :luggage_storage => "Not available <br>Nearest facility at Waterloo",
      :time_to_kill => "Have a wander through Borough Market across the road",
      :number => 16
    },
    {
      :id => "EUS",
      :name => "Euston",
      :nearest_pub => "The <cite>Doric Arch</cite> by the bus station serves a range of guest ales",
      :luggage_storage => "Opposite platforms 16–18 <br>£8.50 per item",
      :lunch_to_go => "Head just outside for a reasonable selection of food choices",
      :time_to_kill => "Stroll the tree-lined avenues of Bloomsbury just across the road",
      :number => 14
    },
    {
      :id => "PAD",
      :name => "Paddington",
      :things_to_see => "Paddington Bear sits by the bottom of the escalators",
      :luggage_storage => "On Platform 10 <br>£8.50 per item",
      :lunch_to_go => "Lots of options, not just your standard fare",
      :time_to_kill => "Take stroll through Kensington Gardens",
      :number => 10
    },
    {
      :id => "EDB",
      :name => "Edinburgh Waverley",
      :luggage_storage => "On platform 2  <br>£7 per item per day",
      :lunch_to_go => "M&amp;S, Boots and a few others",
      :time_to_kill => "Get outside and admire the view of the Castle",
      :best_coffee => "Costa in the station",
      :number => 5
    },
    {
      :id => "LST",
      :name => "Liverpool Street",
      :things_to_see => "Walk inside rusting sculpture <cite>Fulcrum</cite> by the East entrance",
      :nearest_pub => "There's plenty of old city pubs nearby, including <cite>Dirty Dick</cite>",
      :best_coffee => "On a weekday there’s plenty of artisan coffee carts outside",
      :luggage_storage => "On Platform 10. £8.50 per item.",
      :time_to_kill => "Take a trip to nearby Spitalfields market",
      :number => 6
    },
    {
      :id => "LDS",
      :name => "Leeds",
      :luggage_storage => "By the Wellington Street entrance <br>£3-7 per item",
      :nearest_pub => "The <cite>Scarborough Tap</cite> across the road is a great pub with real beer",
      :time_to_kill => "A trip through the shops on Leeds' main shopping street",
      :number => 7
    },
    {
      :id => "LIV",
      :name => "Liverpool Lime Street",
      :things_to_see => "Statues of notable locals Ken Dodd and Bressie Braddock are here",
      :luggage_storage => "By Northern Rail booking office <br>£3-7 per item",
      :time_to_kill => "The nearby Walker Art Gallery is always worth a quick explore",
      :best_coffee => "There’s a Costa",
      :lunch_to_go => "M&amp;S, Boots",
      :number => 13
    },
    {
      :id => "MAN",
      :name => "Manchester Piccadilly",
      :things_to_see => "Platform 12 hosts exhibitions of local art and photography",
      :luggage_storage => "Halfway down platforms 10 &amp; 11 <br>£3 – £7 per item",
      :nearest_pub => "The Balcony Bar (you’ll find it) <br>– awful but convenient",
      :meet_at => "The top of the escalators down to the Metrolink platforms",
      :best_coffee => "The two Costa units serve a reasonable Flat White",
      :lunch_to_go => "There’s a pie kiosk on the concourse, or Carluccio’s upstairs",
      :time_to_kill => "Take a stroll through Manchester's historic Northern Quarter",
      :number => 2
    },
    {
      :id => "FST",
      :name => "Fenchurch Street",
      :luggage_storage => "Not available <br>Nearest facility at Liverpool Street",
      :number => 4
    },
    {
      :id => "VIC",
      :name => "Victoria",
      :luggage_storage => "Between platforms 7 &amp; 8 <br>£8.50 per item",
      :lunch_to_go => "Try <cite>Sushi Express</cite> for cheap, fresh pick-and-mix sushi",
      :number => 8
    },
    {
      :id => "CHX",
      :name => "Charing Cross",
      :nearest_pub => "Cavenous <cite>Gordon's&#160;Wine&#160;Bar</cite> has atmosphere in spades",
      :best_coffee => "Caffe Nero is your best bet",
      :time_to_kill => "Walk along the Thames admiring London’s finest views",
      :number => 12
    },
    {
      :id => "GLC",
      :name => "Glasgow Central",
      :lunch_to_go => "Bagels, M&S, Boots.",
      :best_coffee => "<cite>Franco's</cite> on the station concourse, a friendly independent barrista",
      :meet_at => "The corner by the entrance to the Grand Central Hotel isn’t too busy",
      :lunch_to_go => "Plenty of lunch places on nearby Argyle Street",
      :time_to_kill => "Take in some of the brilliant local architecture",
      :number => 11
    },
    {
      :id => "CST",
      :name => "Cannon Street",
      :nearest_pub => "The Bell nearby serves decent ales in a traditional pub atmosphere",
      :number => 3
    },
    {
      :id => "WAT",
      :name => "Waterloo",
      :meet_at => "The traditional meeting place is beneath the famous station clock",
      :things_to_see => "The Victory Arch memorialises railwaymen killed in wartime",
      :nearest_pub => "The nearby <cite>Fire Station</cite> is a popular pub in an unusual building",
      :number => 17

    },
    {
      :id => "STP",
      :name => "St Pancras",
      :things_to_see => "A John Betjeman statue celebrates the poet’s role in saving the station",
      :meet_at => "Bronze sculpture <cite>Meeting Place</cite> is an obvious place to meet at",
      :best_coffee => "<cite>Le Pain De Quotidean</cite> serves French-style coffee in a bowl",
      :lunch_to_go => "A range of high-quality food outlets means you’ll be spoit for choice",
      :nearest_pub => "Try the <cite>Betjemen Arms</cite>, which also offers a great view",
      :time_to_kill => "Admire the grandeur of the St&#160;Pancras hotel",
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
