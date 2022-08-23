class Dog
  attr_accessor :name, :owner

  def initialize(name)
    @name = name
  end

  def bark
    puts "Woof!"
  end

  def get_adopted(owner_name)
    # NOTE: This calls the Dog#bark method above:
    # NOTE: This is also called 'explicit receiver' syntax
    self.bark
    # NOTE: THis is called the 'implicit receiver' syntax
    bark
    self.owner = owner_name
    # NOTE: This following is NOT valid since we can't use
    # 'implict receiver' syntax for 'setter' methods, so we NEED to use 'self.owner' above
    # owner = owner_name
  end
end

fido = Dog.new("Fido")
fido.get_adopted("Sam")
