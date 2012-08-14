class Station

  STATIONS = [
    {
      :id => "KBX",
      :name => "Kings Cross"
    },
  ]

  attr_accessor :name, :id

  def initialize(*h)
    if h.length == 1 && h.first.kind_of?(Hash)
      h.first.each { |k,v| send("#{k}=",v) }
    end
  end

  def self.find(id)
    Station.new(STATIONS.select {|station| station[:id] == id }.first)
  end

end