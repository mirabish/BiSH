pico-8 cartridge // http://www.pico-8.com
version 34
__lua__
--player code 
function _init()
	map_setup()
	make_player()
end 

function _update()
	move_player()
end


function _draw()
	cls() 
	draw_map()
	draw_player()

end


-->8
-- main update and draw
-->8
-- menu scene
-->8
--draws 

-->8
--player code
function make_player() 
	p={}

	p.x=3
	p.y=2

	p.sprite=2

end

function draw_player()
	 spr(p.sprite,p.x*8,p.y*8)

end

function move_player()
	newx = p.x 
	newy = p.y
	if (btnp(⬅️)) newx -= 1
		-- shift l
	if (btnp(➡️)) newx += 1
		-- shift r 
	if (btnp(⬆️)) newy -= 1
		-- shift u
	if (btnp(⬇️)) newy += 1
		-- shift d 
		
		-- letting using key 
		
	if (can_move(newx,newy)) then 
		p.x = mid(0, newx, 127)
		p.y = mid(0, newy, 63)
		--sets bounds to stay within map 
	end
end 
	
-->8
--map code 
function map_setup() 
-- tile settings 
 wall=0 
 key=1 
 door=2 
 anim1=3
 anim2=4 
 lose=6 
 win=7 
--sprite flags^
end

function draw_map()
	mapx=flr(p.x/16)*16
	mapy=flr(p.y/16)*16
	camera(mapx*8,mapy*8)
	-- with flr we are getting
	--a const cordinate 
	--0x0 16x0 32x0
	
	map(0,0,0,0,128,64)
	
end

function is_tile(tile_type,x,y)
	tile = mget(x,y)
	has_flag=fget(tile,tile_type) 
	return has_flag
end

function can_move(x,y) 
	return not is_tile(wall,x,y)
end

function swap_tile(x,y) 
	tile=mget(x,y) 
	mset(x,y,tile+1)
	--asks what tile is at x,y
	-- then replaces it with 
	-- that tile + 1
	-- remember to replace 
	-- with like white lightening 
	-- or something
	
end

function get_key(x,y)
	p.keys+=1 
	swap_tile(x,y) 
	
end

function open_door(x,y)
	p.keys-=1 
	swap_tile(x,y)
	

end
__gfx__
000000000000000000000000000000000000000000000b3000000b3000000b300000000000000000000000000000000000000000000000000000000000000000
0000000000077700000000000000000000000b3000003e33000b3e33000b3e330000000000000000000000000000000000000000000000000000000000000000
007007000077e770000000000003b300000b3e33000b33ff00b333ff00b333ff00bb3b3000000000000000000000000000000000000000000000000000000000
00077000007eee7000003b3000b3e30000b333ff00b333000b3333000b3993000b333e3300bb3b30000000000000000000000000000000000000000000000000
000770000077e77000bb3e330b333ff00b3333000b3393000339930003300300033933ff0b333e3300bb3b300000000000000000000000000000000000000000
00700700000777000b3333ff0339930003399300033900f0033000300030003000003000033933ff0b333e330000000000000000000000000000000000000000
00000000000000000339930003300f0003300f00030000000300000f0000000f0000030000303000033993ff0000000000000000000000000000000000000000
000000000000000000330f000033000000330000033000000300000000000000000000f000000f0000330f000000000000000000000000000000000000000000
00000000f4fff4ff0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000444444440000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000fff4fff40000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000444444440000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000f4fff4ff0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000444444440000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000fff4fff40000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000444444440000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
22222222000220002222200022222222000222222211111100000022222222222222222222222222000000000000000000000000000000000000000000000000
22222222000220002222200022222222000222222211111100000022222222222222222222222222000000000000000000000000000000000000000000000000
22202220000220000002200000022000000220002211111100000022dddddddd22dddddddddddd22000000000000000000000000000000000000000000000000
00000000000220000002200000022000000220002211111100000022dddddddd22dddddddddddd22000000000000000000000000000000000000000000000000
02220222000220000002200000022000000220002211111100000022dddddddd22dddddddddddd22000000000000000000000000000000000000000000000000
00000000000220000002200000022000000220002211111100000022dddddddd22dddddddddddd22000000000000000000000000000000000000000000000000
00022200000220000002200000022000000220002211111100000022dddddddd22dddddddddddd22000000000000000000000000000000000000000000000000
22000002000220000002200000022000000220002211111100000022dddddddd22dddddddddddd22000000000000000000000000000000000000000000000000
11111111221111111111112200000000222222222222222200000000000000000000000000000000000000000000000000000000000000000000000000000000
11111111221111111111112200000000222222222222222200000000000000000000000000000000000000000000000000000000000000000000000000000000
11111111dd1111111111112200000000dddddddddddddddd00000000000000000000000000000000000000000000000000000000000000000000000000000000
11111111dd1111111111112200000000dddddddddddddddd00000000000000000000000000000000000000000000000000000000000000000000000000000000
11111111dd1111111111112200000000dddddddddddddddd00000000000000000000000000000000000000000000000000000000000000000000000000000000
11111111dd1111111111112200000000dddddddddddddddd00000000000000000000000000000000000000000000000000000000000000000000000000000000
11111111dd1111111111112200000000ddd555555ddddddd00000000000000000000000000000000000000000000000000000000000000000000000000000000
11111111dd111111111111220000000bbdd511115ddddddd00000000000000000000000000000000000000000000000000000000000000000000000000000000
111111220000000000000000000000001b1511115111111100000000000000000000000000000000000000000000000000000000000000000000000000000000
111111220000000000000000000000004b4511115444111100000000000000000000000000000000000000000000000000000000000000000000000000000000
111111dd000000000000000000000000464555555444111100000000000000000000000000000000000000000000000000000000000000000000000000000000
111111dd00000000000000000000000044456d6d5444111100000000000000000000000000000000000000000000000000000000000000000000000000000000
111111dd0000000000000000000000004445d6d65454111100000000000000000000000000000000000000000000000000000000000000000000000000000000
111111dd000000000000000000000000444555555444111100000000000000000000000000000000000000000000000000000000000000000000000000000000
111111dd000000000000000000000000211111111112111100000000000000000000000000000000000000000000000000000000000000000000000000000000
111111dd000000000000000000000000211111111112111100000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000200000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000222222222222222200000000222222222222222200000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000222222222222222200000000222222222222222200000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000dddddddddddddddd00000000dddddddddddddddd00000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000ddd55555555555dd00000000dddddd3ddddddddd00000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000ddd51111111115dd00000000dddd3d33dd3ddddd00000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000ddd51111111115dd00000000ddddd3d3d3d33ddd00000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000ddd51111111115dd00000000ddddd3d3d3d3dddd00000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000ddd511d1111115dd00000000ddd3d3d33d33dddd00000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000111511111111151100000000111333333331111100000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000011151dd11111151100000000111144444441111100000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000011151d111111151100000000111114444411111100000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000111511111111151100000000111114444411111100000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000111511111111151100000000111111444111111100000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000111555555555551100000000111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000111555111115551100000000111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000111555111115551100000000111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000
__gff__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000001010000000000000000000000000101000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
4fbf7fbfbf7f4f4f7f4f4f7f4f7f4fbfbfbfbfbfbfbfbfbf6e6e6e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
bfbf6661bfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf6e6e6e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
bfbf48848547545547818249bfbfbfbfbfbfbfbfbf7fbfbf6e6e6e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
bfbf45949550646550919252bf4847474749bfbfbfbfbfbf6e6e6e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
bf7f45505050505050505052bf4550505052bfbfbfbfbfbf6e6e6e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
bfbf45505050505050505052bf4550505052bfbfbfbfbfbf6e6e6e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
bfbf40404040455050505052474550505060474749bfbfbf6e6e6e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
bfbfbfbfbfbf455050505060505150505050505052bfbfbf6e6e6e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
bfbfbfbfbfbf455050505050505050505050505052bfbfbf6e6e6e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
bfbfbfbfbfbf404040404040455050505050505052bfbfbf6e6e6e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
bfbfbfbfbfbfbfbfbfbfbfbf455050505050505052bfbfbf6e6e6e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
61616161616161616161bfbf455050505050505052bfbfbf6e6e6e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
616161616161616161616e6e4550505050505050526e6e6e6e6e6e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
616161616161616161616e6e4040404040404040406e6e6e6e6e6e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
616161616161616161616e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
61616161616161617f617f7f6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
616161616161616161616e6e6e6e6e7f6e6e6e6e6e6e6e6e6e6e6e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
61616161616161617f7f6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
616161616161616161616e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000006e00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
