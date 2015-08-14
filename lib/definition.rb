class Definition
  @@definitions = []
  def initialize(definition)
    @definition = definition
  end

  def define
    @definition
  end

  def self.all_definitions
    @@definitions
  end

  def save
    @@definitions.push(self)
  end
end
