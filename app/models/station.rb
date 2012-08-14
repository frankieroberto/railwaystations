class Station 
  extend ActiveModel::Naming


  STATIONS = [
    {
      :id => "KBX",
      :name => "Kings Cross",
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
    	:name => "London Liverpool Street"
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