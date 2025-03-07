$x_width      = File.read("lib/data/coordinates/x_width.txt").strip.to_i
$y_height     = File.read("lib/data/coordinates/y_height.txt").strip.to_i

$current_maps = File.read("lib/data/maps/map_list.txt").strip.to_i
$map_choice   = File.read("lib/data/maps/map_choice.txt").strip.to_i
$chosen_map   = $current_maps[$maps_choice]

#########################################################################
#          Chooses a map directory based on chosen map string           #
#########################################################################
if    $chosen_map == "room 1"; $map_directory = "lib/maps/room_1/"
elsif $chosen_map == "room 2"; $map_directory = "lib/maps/room_2/"
elsif $chosen_map == "room 3"; $map_directory = "lib/maps/room_3/"
elsif $chosen_map == "room 4"; $map_directory = "lib/maps/room_4/"
elsif $chosen_map == "room 5"; $map_directory = "lib/maps/room_5/"
elsif $chosen_map == "room 6"; $map_directory = "lib/maps/room_6/"
elsif $chosen_map == "room 7"; $map_directory = "lib/maps/room_7/"
end

#########################################################################
# Chooses what coordinates to draw based on the chosen map directory    #
#########################################################################
def draw_map
  # Map frames
  ## Left Barrier Frames
  x0_y0 = File.read("#{$map_directory}x0_y0.txt")
  x0_y1 = File.read("#{$map_directory}x0_y1.txt")
  x0_y2 = File.read("#{$map_directory}x0_y2.txt")
  x0_y3 = File.read("#{$map_directory}x0_y3.txt")
  x0_y4 = File.read("#{$map_directory}x0_y4.txt")

  ## Right Barrier Frames
  x4_y0 = File.read("#{$map_directory}x4_y0.txt")
  x4_y1 = File.read("#{$map_directory}x4_y1.txt")
  x4_y2 = File.read("#{$map_directory}x4_y2.txt")
  x4_y3 = File.read("#{$map_directory}x4_y3.txt")
  x4_y4 = File.read("#{$map_directory}x4_y4.txt")

  ## Top Barrier Frames
  x0_y0 = File.read("#{$map_directory}x0_y0.txt")
  x1_y0 = File.read("#{$map_directory}x0_y1.txt")
  x2_y0 = File.read("#{$map_directory}x0_y2.txt")
  x3_y0 = File.read("#{$map_directory}x0_y3.txt")
  x4_y0 = File.read("#{$map_directory}x0_y4.txt")

  ## Bottom Barrier Frames
  x0_y4 = File.read("#{$map_directory}x0_y0.txt")
  x1_y4 = File.read("#{$map_directory}x0_y1.txt")
  x2_y4 = File.read("#{$map_directory}x0_y2.txt")
  x3_y4 = File.read("#{$map_directory}x0_y3.txt")
  x4_y4 = File.read("#{$map_directory}x0_y4.txt")  

  # Frames for row 1
  x1_y1 = File.read("#{$map_directory}x1_y1.txt")
  x2_y1 = File.read("#{$map_directory}x2_y1.txt")
  x3_y1 = File.read("#{$map_directory}x3_y1.txt")

  # Frames for row 2
  x1_y2 = File.read("#{$map_directory}x1_y2.txt")
  x2_y2 = File.read("#{$map_directory}x2_y2.txt")
  x3_y2 = File.read("#{$map_directory}x3_y2.txt")

  # Frames for row 3
  x1_y3 = File.read("#{$map_directory}x1_y3.txt")
  x2_y3 = File.read("#{$map_directory}x2_y3.txt")
  x3_y3 = File.read("#{$map_directory}x3_y3.txt")

  ############################################################################
  #                  This creates barriers you cannot pass.                  #
  ############################################################################

  # # # # . # # #
  # # . . . . . #
  # # . . . . . #
  # . . . . . . .
  # # . . . . . #
  # # . . . . . #
  # # # # . # # #

  # Verticle left
  if    $x_width == 0 and $y_height == 0; puts x0_y0
  elsif $x_width == 0 and $y_height == 1; puts x0_y1
  elsif $x_width == 0 and $y_height == 2; puts x0_y2
  elsif $x_width == 0 and $y_height == 3; puts x0_y3
  elsif $x_xidth == 0 and $y_height == 4; puts x0_y4

  # Verticle Right
  elsif $x_width == 4 and $y_height == 0; puts x4_y0
  elsif $x_width == 4 and $y_height == 1; puts x4_y1
  elsif $x_width == 4 and $y_height == 2; puts x4_y2
  elsif $x_width == 4 and $y_height == 3; puts x4_y3
  elsif $x_xidth == 4 and $y_height == 4; puts x4_y4

  # Draw map Top horizontal
  elsif $x_width == 0 and $y_height == 0; puts x0_y0
  elsif $x_width == 1 and $y_height == 0; puts x1_y0
  elsif $x_width == 2 and $y_height == 0; puts x2_y0
  elsif $x_width == 3 and $y_height == 0; puts x3_y0
  elsif $x_width == 4 and $y_height == 0; puts x4_y0

  # Draw map Bottom horizontal
  elsif $x_width == 0 and $y_height == 4; puts x0_y4
  elsif $x_width == 1 and $y_height == 4; puts x1_y4
  elsif $x_width == 2 and $y_height == 4; puts x2_y4
  elsif $x_width == 3 and $y_height == 4; puts x3_y4
  elsif $x_xidth == 4 and $y_height == 4; puts x4_y4

  ############################################################################
  #                   This fills in the center of the map                    #
  ############################################################################

  #       X
  # # # # . # # #
  # # . . . . . #
  # # . 1 2 3 . #
  # . . 1 2 3 . .
  # # . 1 2 3 . #
  # # . . . . . #
  # # # # . # # #

  #       Y
  # # # # . # # #
  # # . . . . . #
  # # . 1 1 1 . #
  # . . 2 2 2 . .
  # # . 3 3 3 . #
  # # . . . . . #
  # # # # . # # #


  ## Fills in space for drawing the map
  elsif $x_width == 1 and $y_height == 1;
  elsif $x_width == 1 and $y_height == 2; 
  elsif $x_width == 1 and $y_height == 3; 

  elsif $x_width == 2 and $y_height == 1; 
  elsif $x_width == 2 and $y_height == 2; 
  elsif $x_width == 2 and $y_height == 3; 

  elsif $x_width == 3 and $y_height == 1; 
  elsif $x_width == 3 and $y_height == 2; 
  elsif $x_width == 3 and $y_height == 3; 
  end
 
end
