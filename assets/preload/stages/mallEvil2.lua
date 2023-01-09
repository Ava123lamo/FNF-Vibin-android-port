function onCreate()
	-- background shit
	makeLuaSprite('evilBG2', 'mallEvil2/evilBG2', -400, -500);
     setLuaSpriteScrollFactor('evilBG2', 0.2, 0.2);
	 scaleObject('evilBG2', 0.8, 0.8);
	

	


	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('evilTree2', 'mallEvil2/evilTree2', 300, -300);
	    setLuaSpriteScrollFactor('evilTree2', 0.40, 0.40);
		makeLuaSprite('evilSnow2', 'mallEvil2/evilSnow2', -200, 700);
		
		makeAnimatedLuaSprite('snowfall2', 'mall2/snowfall2', 600, 0) 
	setObjectCamera('snowfall2', 'other');
	addLuaSprite('snowfall2', true);
	addAnimationByPrefix('snowfall2', 'idle', 'snow', 20, true); 
	makeAnimatedLuaSprite('snowfall3', 'mall2/snowfall2', 100, 0) 
	setObjectCamera('snowfall3', 'other');
	addLuaSprite('snowfall3', true);
	addAnimationByPrefix('snowfall3', 'idle', 'snow', 20, true); 
	makeAnimatedLuaSprite('snowfall4', 'mall2/snowfall2', 600, 250) 
	setObjectCamera('snowfall4', 'other');
	addLuaSprite('snowfall4', true);
	addAnimationByPrefix('snowfall4', 'idle', 'snow', 20, true); 
	makeAnimatedLuaSprite('snowfall5', 'mall2/snowfall2', 100, 250) 
	setObjectCamera('snowfall5', 'other');
	addLuaSprite('snowfall5', true);
	addAnimationByPrefix('snowfall5', 'idle', 'snow', 20, true); 
	makeAnimatedLuaSprite('snowfall6', 'mall2/snowfall2', -200, 0) 
	setObjectCamera('snowfall6', 'other');
	addLuaSprite('snowfall6', true);
	addAnimationByPrefix('snowfall6', 'idle', 'snow', 20, true); 
	makeAnimatedLuaSprite('snowfall7', 'mall2/snowfall2', -200, 250) 
	setObjectCamera('snowfall7', 'other');
	addLuaSprite('snowfall7', true);
	addAnimationByPrefix('snowfall7', 'idle', 'snow', 20, true); 
	makeAnimatedLuaSprite('snowfall8', 'mall2/snowfall2', 1000, 0) 
	setObjectCamera('snowfall8', 'other');
	addLuaSprite('snowfall8', true);
	addAnimationByPrefix('snowfall8', 'idle', 'snow', 20, true); 
	makeAnimatedLuaSprite('snowfall9', 'mall2/snowfall2', 1000, 250) 
	setObjectCamera('snowfall9', 'other');
	addLuaSprite('snowfall9', true);
	addAnimationByPrefix('snowfall9', 'idle', 'snow', 20, true); 
		
	end

	addLuaSprite('evilBG2', false);
	addLuaSprite('evilTree2', false);
	addLuaSprite('evilSnow2', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end