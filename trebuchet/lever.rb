class Lever

  def initialize(trebuchet)
    @trebuchet = trebuchet
    @game_window = @trebuchet.game_window
    @angle = 124
    @thickness = 24
    @center_x = 350
    @center_y = 400
    @radius = 200.0
    @color = Color.new.yellow
  end
  
  def draw
    @game_window.draw_line(x1+@center_x,y1-@center_y,@color,x2+@center_x,y2-@center_y,@color,2)
  end
  
  def update
    puts @angle
    if @angle < 360
      @angle = @angle +1
    else
      @angle = 0
    end
  end
  
  def x1
    cos(@angle) * @radius
  end
  
  def y1
    @game_window.height - (sin(@angle) * @radius)
  end
  
  def x2
    cos(@angle+180) * @radius
  end
  
  def y2
    @game_window.height - sin(@angle+180) * @radius
  end
  
  def sin(angle)
    Math.sin(angle*Math::PI/180).round(5)
  end
  
  def cos(angle)
    Math.cos(angle*Math::PI/180).round(5)
  end
  
  
end
