class GameWindow < Gosu::Window
  
  def initialize
    super(800,600,0)
    @trebuchet = Trebuchet.new(self)
  end
  
  def draw
    @trebuchet.draw
  end
  
  def update
    @trebuchet.update
  end
  
end
