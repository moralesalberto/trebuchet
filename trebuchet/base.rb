class Base
  attr_reader :trebuchet, :game_window
  
  def initialize(trebuchet)
    @trebuchet = trebuchet
    @game_window = @trebuchet.game_window
    @color = Color.new.yellow
    @layer = 1
  end
  
  def draw
    draw_bottom
    draw_column
  end
  
  def update
    
  end
  
  def draw_bottom
    draw_rect(50,550,600,550,24,@color,@layer)
  end
  
  def draw_column
    draw_rect(350,550,375,550,-500,@color,@layer)
  end
  
  
  def draw_rect(x1,y1,x2,y2,thickness,color,layer)
    @game_window.draw_quad(x1,y1,color,x2,y2, color,x1,y1+thickness,color,x2,y2+thickness,color,layer)
  end
  
end
