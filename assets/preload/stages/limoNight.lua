function onCreate()
	-- background shit
	makeLuaSprite('limoNight', 'limoNight/limoMoon', -580, -290);
	setLuaSpriteScrollFactor('limoNight', 0.1, 0.1);

	
	makeAnimatedLuaSprite('limoDrive2', 'limoNight/limoDriveNight',-120, 550);
    setLuaSpriteScrollFactor('limoDrive2', 1, 1);
	makeAnimatedLuaSprite('bgLimo2','limoNight/bgLimoNight', -150, 480);
	setLuaSpriteScrollFactor('bgLimo2', 0.4, 0.4);
	makeAnimatedLuaSprite('Mom_Road','limoNight/Mom_RoadNight', -300, 650);
	setLuaSpriteScrollFactor('Mom_Road', 0.4, 0.4);
	

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	makeAnimatedLuaSprite('limoDancer2', 'limoNight/limoDancerNight',550, 100);
    setLuaSpriteScrollFactor('limoDancer2', 0.4, 0.4);

	makeAnimatedLuaSprite('limoDancer3', 'limoNight/limoDancerNight',250, 100);
    setLuaSpriteScrollFactor('limoDancer3', 0.4, 0.4);
	
	makeAnimatedLuaSprite('limoDancer4', 'limoNight/limoDancerNight',850, 100);
    setLuaSpriteScrollFactor('limoDancer4', 0.4, 0.4);
	
	makeAnimatedLuaSprite('limoDancer5', 'limoNight/limoDancerNight',1150, 100);
    setLuaSpriteScrollFactor('limoDancer5', 0.4, 0.4);
	end
	
    
	addLuaSprite('limoNight', false);
	addLuaSprite('Mom_Road', false);
	addAnimationByPrefix('Mom_Road', 'idle', 'ROAD', 20, true); 
	addLuaSprite('bgLimo2', false);
	addAnimationByPrefix('bgLimo2', 'idle', 'background limo pink', 20, true); 
	addLuaSprite('limoDancer2', false);
	addAnimationByPrefix('limoDancer2', 'idle', 'bg dancer sketch PINK', 24, true); 
	addLuaSprite('limoDancer3', false);
	addAnimationByPrefix('limoDancer3', 'idle', 'bg dancer sketch PINK', 24, true);
	addLuaSprite('limoDancer4', false);
	addAnimationByPrefix('limoDancer4', 'idle', 'bg dancer sketch PINK', 24, true);
	addLuaSprite('limoDancer5', false);
	addAnimationByPrefix('limoDancer5', 'idle', 'bg dancer sketch PINK', 24, true);

	addLuaSprite('limoDrive2', false);
    setObjectOrder('limoDrive2',8);
	addAnimationByPrefix('limoDrive2', 'idle', 'Limo stage', 24, true); 

runTimer('sun',0.1)
end
function onTimerCompleted(t,l,ll)
if t == 'sun' then
		setProperty('limoNight.x', -1225)
		doTweenX('limoNight','limoNight',-580,124,'sineOut')
		end
	end