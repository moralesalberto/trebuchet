class Lever

  def initialize(trebuchet)
    @trebuchet = trebuchet
    @game_window = @trebuchet.game_window
    @angle = 124
    @thickness = 40
    @center_x = 355
    @center_y = 350
    @radius = 200.0
    @color = Color.new
    @lever_color = @color.red
    @axle_color = @color.green
    @layer = 3
  end
  
  def draw
    draw_lever
    draw_axle
  end
  
  def draw_axle
    @game_window.draw_quad(
      @center_x-5, @game_window.height - @center_y-5,@color.red,
      @center_x+5,@game_window.height - @center_y-5, @color.red,
      @center_x-5,@game_window.height - @center_y+5,@color.red,
      @center_x+5,@game_window.height - @center_y+5,@color.red,
      @layer+10)
  end
  
  def draw_lever
    @game_window.draw_quad(
      x1,y1,@color.green,
      x2,y2, @color.green,
      x3,y3,@color.green,
      x4,y4,@color.green,
      @layer)
  end
  
  def update
    puts "x1: #{x1},x2: #{x2}, x3: #{x3}, x4: #{x4}"
    puts "y1: #{y1},y2: #{y2}, y3: #{y3}, y4: #{y4}"
    if @angle < 360
      @angle = @angle +1
    else
      @angle = 0
    end
  end
  
  def thickness_angle
    (Math.asin((@thickness*1.0)/(2.0*@radius)))*180.0/Math::PI
  end
  
  def x3
    (cos(@angle-thickness_angle) * @radius) + @center_x
  end
  
  def y3
    @game_window.height - (sin(@angle-thickness_angle) * @radius) - @center_y
  end
  
  def x4
    (cos(@angle-thickness_angle+180) * @radius) + @center_x
  end
  
  def y4
    @game_window.height - (sin(@angle-thickness_angle+180) * @radius) - @center_y
  end
  
  def x1
    (cos(@angle+thickness_angle) * @radius) + @center_x
  end
  
  def y1
    @game_window.height - (sin(@angle+thickness_angle) * @radius) - @center_y
  end
  
  def x2
    (cos(@angle+180+thickness_angle) * @radius) + @center_x
  end
  
  def y2
    @game_window.height - (sin(@angle+180+thickness_angle) * @radius) - @center_y
  end
  
  def sin(angle)
    Math.sin(angle*Math::PI/180).round(5)
  end
  
  def cos(angle)
    Math.cos(angle*Math::PI/180).round(5)
  end
  

  
end
