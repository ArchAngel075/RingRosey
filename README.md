# RingRosey
Simple Lua | Love2D ring segment helper
Authour ArchAngel075 | Jaco Kotzé
License : DO WHAT YOU WANT

### ArcSegment(cx,cy,radius1,radius2,start,arc)

cx , cy         : The center of the ring

radius1         : The outer radius (total radius) of the ring.

radius2         : The inner radius to use

start           : the starting angle to use, in degrees.

arc             : the segment size to use, in degrees.

RETURNS         :

four points x1,y1 , x2,y2 , x3,y3 , x4,y4 of the segment


### ArcSegments(x,y,outer_radius,inner_radius,steps,arc)


cx , cy        : The center of the ring
outer_radius   : The outer radius (total radius) of the ring.

inner_radius   : The inner radius to use

steps          : ring modifier, a greater value means more steps/rings of segments

arc            : the segment size to use, in degrees.

RETURNS        :

A 3-dimensioned table containing the rings which in turn contain segments which contain respective 4 points per segment.
