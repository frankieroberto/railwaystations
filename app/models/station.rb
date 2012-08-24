# encoding: UTF-8
class Station
  extend ActiveModel::Naming


  STATIONS = [
    {
      :id => "KBX",
      :name => "London Kings Cross",
      :things_to_see => "The entrance to Platform 9¾ can be seen on the external wall onto Euston Road."
    },
    {
      :id => "BHM",
      :name => "Birmingham New Street"
    },
    {
      :id => "GTW",
      :name => "Gatwick Airport"
    },
    {
      :id => "LBG",
      :name => "London Bridge"
    },
    {
      :id => "EUS",
      :name => "London Euston",
      :nearest_pub => "The Doric Arch by the bus station outside is a Fullers pub and serves a range of guest ales.",
      :luggage_storage => "Opposite platforms 16–18. £8.50 per item."
    },
    {
      :id => "PAD",
      :name => "London Paddington",
      :things_to_see => "A statue of Paddington Bear sits by the bottom of the escalators.",
      :luggage_storage => "On Platform 10. £8.50 per item."
    },
    {
      :id => "EDB",
      :name => "Edinburgh Waverley"
    },
    {
      :id => "LST",
      :name => "London Liverpool Street",
      :things_to_see => "A rusting sculpture called 'Fulcrum' sits outside the Eastern entrance. Walk inside and look up.",
      :nearest_pub => "There's a Wetherspoon above the main concourse and plenty of pubs nearby.",
      :luggage_storage => "On Platform 10. £8.50 per item."
    },
    {
      :id => "LDS",
      :name => "Leeds"
    },
    {
      :id => "LIV",
      :name => "Liverpool Lime Street",
      :things_to_see => "Statues of notable locals Ken Dodd and Bressie Braddock stand on the concourse."
    },
    {
      :id => "MAN",
      :name => "Manchester Piccadilly",
      :things_to_see => "The end wall by platform 12 is home to rotating exhibitions of local art and photography.",
      :luggage_storage => "Halfway down platforms 10 &amp; 11. £3 – £7 per item depending on hours required.",
      :nearest_pub => "There's an obviously-named bar on the balcony level with sofas and loud televisions.",
      :meet_at => "The top of the escalators down to the Metrolink tram platforms.",
      :best_coffee => "The two Costa units serve a reasonable flat white and usually have shorter queues than the Starbucks."
    },
    {
      :id => "FST",
      :name => "London Fenchurch Street"
    },
    {
      :id => "VIC",
      :name => "London Victoria",
      :luggage_storage => "Between platforms 7 &amp; 8. £8.50 per item."
    }
  ]

  attr_accessor :name, :id, :things_to_see, :nearest_pub, :luggage_storage, :meet_at, :best_coffee

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def self.find(id)
    Station.new(STATIONS.select {|station| station[:id] == id }.first)
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