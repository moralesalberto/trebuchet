

class Trebuchet
  attr_reader :game_window
  
  def initialize(game_window)
    @game_window = game_window
  end
  
  def base
    @base ||= Base.new(self)
  end
  
  def lever
    @lever ||= Lever.new(self)
  end
  
  def draw
    base.draw
    lever.draw
  end
  
  def update
    lever.update
  end
  
  
end
