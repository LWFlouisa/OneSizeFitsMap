# One Size Fits Each Map
Note that this is still experimental and not quite ready for production.

## Intention
Suppose you have seven rooms, and each room has a grid of 5 by 5. Then you want whatever set of frames for each room to be usable no matter how each room is placed on the map.

~~~
###.###
#@....#
#.....#
.......
#.....#
#.....#
###.###
~~~

## Exclusions
This doesn't factor in collission detection for objects in a room, because random battles goes to a seperate screen entirely. It also doesn't factor in collission detection for objects placed in each room.
