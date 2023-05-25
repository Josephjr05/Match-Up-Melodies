function onCreate()
	-- background shit
	makeLuaSprite('chara-bg', 'chara-bg', -100, -123);
	setLuaSpriteScrollFactor('chara-bg', 1.0, 1.0);
	
	addLuaSprite('chara-bg', false);
		
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end