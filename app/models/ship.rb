class Ship

attr_reader :name, :type, :booty

SHIPS = []

  def initialize(args)
    @name =
    @type =
    @booty =
    SHIPS << self
  end
end
