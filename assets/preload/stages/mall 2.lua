function onCreate()
	-- background 
	makeLuaSprite('bgWalls2', 'mall2/bgWalls', -1300, -700);
	setLuaSpriteScrollFactor('bgWalls2', 0.2, 0.2);

    makeAnimatedLuaSprite('P', 'mall2/bottomBop', -300, 140) 
	setLuaSpriteScrollFactor('P',0.9, 0.9);
	
	makeAnimatedLuaSprite('up', 'mall2/upperBop', -370, -120) 
	setLuaSpriteScrollFactor('up',0.33, 0.33);
	
	makeAnimatedLuaSprite('santa2', 'mall2/santa', -800, 100) 
	setLuaSpriteScrollFactor('santa2', 1, 1);

	makeLuaSprite('christmasTree2', 'mall2/christmasTree', 390, -250);
	setLuaSpriteScrollFactor('christmasTree2', 0.40, 0.40);

	makeLuaSprite('fgSnow2', 'mall2/fgSnow', -730, 695);
	
	


	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

	makeLuaSprite('bgEscalator2', 'mall2/bgEscalator',  -1300, -670);
	setLuaSpriteScrollFactor('bgEscalator2', 0.3, 0.3);
	
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

	addLuaSprite('bgWalls2', false);
	addLuaSprite('up', false)
	addAnimationByPrefix('up','Move', 'Upper Crowd Bob', 24, true);
    addLuaSprite('bgEscalator2', false);
	addLuaSprite('christmasTree2', false);
    addLuaSprite('fgSnow2', false);
    addLuaSprite('P', false); --Added offscreen before it starts moving.
	addAnimationByPrefix('P', 'Move', 'Bottom Level Boppers', 30, true);
	addAnimationByPrefix('P','Hey', 'Bottom Level Boppers', 24, true);
	addLuaSprite('santa2', false); --Added offscreen before it starts moving.
	addAnimationByPrefix('santa2', 'Move', 'santa idle in fear', 30, true);

	
	 
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end