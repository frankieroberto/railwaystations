class Station 
  extend ActiveModel::Naming


  STATIONS = [
    {
      :id => "KBX",
      :name => "Kings Cross"
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
    	:name => "London Euston"
    },
    {
    	:id => "PAD",
    	:name => "London Paddington"
    },
    {
    	:id => "EDB",
    	:name => "Edinburgh Waverley"
    },
    {
    	:id => "LST",
    	:name => "London Liverpool Street"
    }
  ]

  attr_accessor :name, :id

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