# encoding: UTF-8
class Station
  extend ActiveModel::Naming


  STATIONS = [
    {
      :id => "KBX",
      :name => "Kings Cross",
      :things_to_see => "The entrance to Platform 9¾ can be glimpsed next to Platform 9.",
      :nearest_pub => "The Parcel Yard is a Fullers pub within the station’s old parcel sorting office.",
      :number => 1
    },
    {
      :id => "BHM",
      :name => "Birmingham New Street",
      :number => 15
    },
    {
      :id => "GTW",
      :name => "Gatwick Airport",
      :number => 9
    },
    {
      :id => "LBG",
      :name => "London Bridge",
      :number => 16
    },
    {
      :id => "EUS",
      :name => "Euston",
      :nearest_pub => "The Doric Arch by the bus station outside is a Fullers pub and serves a range of guest ales.",
      :luggage_storage => "Opposite platforms 16–18. £8.50 per item.",
      :number => 14
    },
    {
      :id => "PAD",
      :name => "Paddington",
      :things_to_see => "A statue of Paddington Bear sits by the bottom of the escalators.",
      :luggage_storage => "On Platform 10. £8.50 per item.",
      :number => 10
    },
    {
      :id => "EDB",
      :name => "Edinburgh Waverley",
      :number => 5
    },
    {
      :id => "LST",
      :name => "Liverpool Street",
      :things_to_see => "A rusting sculpture called 'Fulcrum' sits outside the Eastern entrance. Walk inside and look up.",
      :nearest_pub => "There's a Wetherspoon above the main concourse and plenty of pubs nearby.",
      :luggage_storage => "On Platform 10. £8.50 per item.",
      :number => 6
    },
    {
      :id => "LDS",
      :name => "Leeds",
      :number => 7
    },
    {
      :id => "LIV",
      :name => "Liverpool Lime Street",
      :things_to_see => "Statues of notable locals Ken Dodd and Bressie Braddock stand on the concourse.",
      :number => 13
    },
    {
      :id => "MAN",
      :name => "Manchester Piccadilly",
      :things_to_see => "The end wall by platform 12 is home to rotating exhibitions of local art and photography.",
      :luggage_storage => "Halfway down platforms 10 &amp; 11. £3 – £7 per item depending on hours required.",
      :nearest_pub => "There's an obviously-named bar on the balcony level with sofas and loud televisions.",
      :meet_at => "The top of the escalators down to the Metrolink tram platforms.",
      :best_coffee => "The two Costa units serve a reasonable flat white and usually have shorter queues than the Starbucks.",
      :number => 2
    },
    {
      :id => "FST",
      :name => "Fenchurch Street",
      :number => 4
    },
    {
      :id => "VIC",
      :name => "Victoria",
      :luggage_storage => "Between platforms 7 &amp; 8. £8.50 per item.",
      :number => 8
    },
    {
      :id => "CHX",
      :name => "Charing Cross",
      :nearest_pub => "The ancient, cavenous Gordon's Wine Bar can get very busy, but has atmosphere in spades.",
      :number => 12
    },
    {
      :id => "GLC",
      :name => "Glasgow Central",
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
      :number => 18
    }
  ]

  attr_accessor :name, :id, :things_to_see, :nearest_pub, :luggage_storage, :meet_at, :best_coffee, :number

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