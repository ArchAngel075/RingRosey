local function ArcSegment(cx,cy,radius1,radius2,start,arc)
  local out_radius = radius1
  local in__radius = radius2
  local arc = arc
  local arc_start = start
  local arc_size = arc/2
  local x1,y1,x2,y2
  local x3,y3,x4,y4
  x1,y1 = cx + in__radius * math.cos(math.rad(arc_start-arc_size)), cy + in__radius * math.sin(math.rad(arc_start-arc_size))
  x2,y2 = cx + in__radius * math.cos(math.rad(arc_start+arc_size)), cy + in__radius * math.sin(math.rad(arc_start+arc_size))
  --
  x3,y3 = cx + out_radius * math.cos(math.rad(arc_start-arc_size)), cy + out_radius * math.sin(math.rad(arc_start-arc_size))
  x4,y4 = cx + out_radius * math.cos(math.rad(arc_start+arc_size)), cy + out_radius * math.sin(math.rad(arc_start+arc_size))
  return x1,y1 , x2,y2 , x4,y4 , x3,y3
end
local function ArcSegments(x,y,outer_radius,inner_radius,steps,arc)
  local rings = {}
  local r1 = outer_radius
  local r2 = inner_radius
  local ri = steps or 1
  local r3 = r1/ri
  local arc = arc or 45
  local i = 0
  for r = r2,r1,r3 do
    i = i + 1
    rings[i] = {}
    local k = 0
    for start = 0,360,arc do
      k = k + 1
      rings[i][k] = {ArcSegment(x,y,r,r2,start,arc)}
    end
  end
  return rings
end

return {
  ArcSegment=ArcSegment,
  ArcSegments=ArcSegments,
}