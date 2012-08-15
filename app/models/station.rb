# encoding: UTF-8
class Station
  extend ActiveModel::Naming


  STATIONS = [
    {
      :id => "KBX",
      :name => "London Kings Cross",
      :things_to_see => "The entrance to Platform 9¾ can be seen on the external wall onto Eusto Road."
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
      :nearest_pub => "The Doric Arch by the bus station outside is a Fullers pub and serves a range of guest ales."
    },
    {
      :id => "PAD",
      :name => "London Paddington",
      :things_to_see => "A statue of Paddington Bear sits by the bottom of the escalators."
    },
    {
      :id => "EDB",
      :name => "Edinburgh Waverley"
    },
    {
      :id => "LST",
      :name => "London Liverpool Street",
      :things_to_see => "A rusting sculpture called 'Fulcrum' sits outside the Eastern entrance. Walk inside and look up.",
      :nearest_pub => "There's a Wetherspoon above the main concourse and plenty of pubs nearby."
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
      :name => "Manchester Piccadilly"
    },
    {
      :id => "FST",
      :name => "London Fenchurch Street"
    },
    {
      :id => "VIC",
      :name => "London Victoria"
    }
  ]

  attr_accessor :name, :id, :things_to_see, :nearest_pub

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