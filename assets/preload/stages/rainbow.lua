local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 630;
local yy = 403.5;
local xx2 = 770;
local yy2 = 493.5;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
local zoomshit = 0;
local bfx = 805.25;
local bfy = 489.7;
local gfx = 846.95;
local gfy = -287;

function onCreate()


	-- background shit

	
	makeLuaSprite('bg', 'bg', -10, -10);
	setLuaSpriteScrollFactor('bg', 0, 0);

	makeLuaSprite('blue', 'blue', -13, -35);
	setLuaSpriteScrollFactor('blue', 0.3, 0.3);

	makeLuaSprite('red', 'red', -40, -62);
	setLuaSpriteScrollFactor('red', 0.5, 0.5);

	makeLuaSprite('green', 'green', 48.5, 464.4);
	setLuaSpriteScrollFactor('green', 0.7, 0.7);

	makeLuaSprite('floor', 'floor', -210.05, 606.4);
	setLuaSpriteScrollFactor('floor', 1, 1);

	makeLuaSprite('yellow', 'yellow', -65.9, 108.65);
	setLuaSpriteScrollFactor('yellow', 1.5, 1.5);

	makeLuaSprite('watermark', 'watermark', 28.5, 636.15);
	setLuaSpriteScrollFactor('watermark', 0, 0);

	addLuaSprite('bg', false);
	addLuaSprite('blue', false);
	addLuaSprite('red', false);
	addLuaSprite('green', false);
	addLuaSprite('floor', false);

	addLuaSprite('yellow', true);
	addLuaSprite('watermark', true);
		setObjectCamera('watermark','hud')
end




function onUpdate()

	for i = 0, getProperty('opponentStrums.length')-5 do
		setPropertyFromGroup('opponentStrums',i,'visible',true)
		setPropertyFromGroup('opponentStrums',i,'y',200)
		setPropertyFromGroup('opponentStrums',i,'x',50)
end

        setProperty('gf.visible',false);

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',1)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            setProperty('defaultCamZoom',1.2)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end

	zoomshit = (getProperty('camGame.zoom')/1);
	setProperty('yellow.scale.x',zoomshit)
	setProperty('yellow.scale.y',zoomshit)
	
	setProperty('yellow.x',-65.9*zoomshit)
	setProperty('yellow.y',108.65*zoomshit)
    

end


