class Pirate

  attr_accessor :name, :weight, :height
  @@ALL = []


  def initialize(hash)
    @name = hash[:name]
    @weight = hash[:weight]
    @height = hash[:height]
    @ships = []
    @@ALL << self
    self
  end

  def self.all
    @@ALL
  end

  def ships
    @ships
  end

end