pico-8 cartridge // http://www.pico-8.com
version 16
__lua__

mode = "menu"
--------------------------------------------------------------
-- main menu loop
--------------------------------------------------------------
function menuloop()
    cls()
    print('~ ul gamejam 2 ~');
    print('theme: simplicity');
    print('\n++ credits ++\n')
    print('dave\ndarren\nbrian\njono')
    if btn(4) or btn(5) then
        mode = "game"
        cls()
    end
end

function menudrawloop()

end

--------------------------------------------------------------
-- main game loop
--------------------------------------------------------------
function gameloop()
    speed = 5
    playerx = 1
    playery = 1
    toprightperameter = 0 
    bottomleftperameter = 0 -- dont know perameters yet 

    if (btn(0) and playerx > bottomleftperameter) then playerx -= speed end
    if (btn(1) and plyerx < toprightperameter) then playerx += speed end
    if (btn(2) and playery < toprightperameter) then playery += speed end
    if (btn(3) and playery > bottomleftperameter) then playery -= speed end
    -- draw a sprite
    if btn(4) then 
        mode = "end"
    end
end

function gamedrawloop()

end

--------------------------------------------------------------
-- main end screen loop
--------------------------------------------------------------
function endloop()
    cls()
    print("game over");
    if btn(4) or btn(5) then
        mode = "menu"
        cls()
    end
end

function enddrawloop()

end

--------------------------------------------------------------
-- main update loops
--------------------------------------------------------------
function _update()
    if mode == "menu" then
        menuloop()
    elseif mode == "game" then
        gameloop()
    elseif mode == "end" then
        endloop()
    end
end

function _draw()
    if mode == "menu" then
        menudrawloop()
    elseif mode == "game" then
        gamedrawloop()
    elseif mode == "end" then
        enddrawloop()
    end
end
__sfx__
01020000060500605007050090500b0500d05011050120501305013050130501305011050100500c0500705003050010500000000000000000000000000000000000000000000000000000000000000000000000
01020000010500b05007050010500a05007050030500f050080500a05007050010500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
010200000305006050090500e0500105004050090500e0500000005050080500e0500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
010200000315002150021500315005150081500c1500f150000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
010200000000002150051500715009150081500415001150000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0003000000000061500a1500c150051500a1500d150041500b1500d15000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00020000055500a5500e55007550055500c5500855001550135500755007550005000050000500005000050000400004000040000000000000000000000000000000000000000000000000000000000000000000
00020000025500455006550085500a5500c5500e5500c550095500355001550000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000200000855006550025500a55004550015500955005550015500a700067000270001700000000b7000870006700027000170000000000000000000000000000000000000000000000000000000000000000000
00020000077500e75005750167500a750187500c7501b7500e7501c7501d7500d7501e7500f750227502375023750237500000000000000000000000000000000000000000000000000000000000000000000000
00020000287501375023750137501e750107501a7500b750157500a750127500875010750067500d750047500a750017500675001750000000000000000000000000000000000000000000000000000000000000
000f0000237000e000180002100023000220001b0001800016000160001600015000170001a0001d0002000022000230000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
01160000107031c5001a5001c50010003000000000000000100030000000000000001000300000000000000010003000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000001950019500185001750000000185003450016500385000000015500000000000000000155000000000000000001550000000155000000015500155001450014500155001550015500165001650016500
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0010000c0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000c00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019000000000000000000000000000000000000000000000000000000000000000
01220000150501305011050100500e05010050150441505200000150521505200000150501305011050100500e050100501105411052000001105211052000000000000000000000000000000000000000000000
0110000c0e0550e053000031705517053000031005510053000031705517053000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0110000c1c0501a050000001c0501a050000002305023050000002405023050000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0110010d000001a0351a0351a0351a03500000170351a0351a0351a0351a035000031703500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__music__
00 1d214344
03 1d211f40
00 5d5f6044

