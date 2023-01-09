local allowCountdown = false
local stops = 0;
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	 if not allowCountdown and isStoryMode and not seenCutscene then
       
		setProperty('inCutscene', true);
        
        if stops == 0 then
            
            
            setProperty('camHUD.alpha',0)
			setProperty('camFollowPos.x',-1000)
			setProperty('camFollowPos.y',-1000)
			
            
            
			runTimer('startC',12)
			runTimer('CutsceneAmbience',0.1)
			runTimer('snap',7)
			runTimer('snapSound',8)
			runTimer('henchmen',8)
			runTimer('henchmenstory',0.1)
			runTimer('cam',12)
			runTimer('finale',8.8)
			runTimer('150',2)
			runTimer('sun2',0.2)
			runTimer('sun1',12)
            
        
        end
        if stops == 1 then
        
			setProperty('camHUD.alpha',1)
		runTimer('startDialogue', 0.1);
		allowCountdown = true;
        
        end
        stops = stops + 1
		return Function_Stop;
	end
	return Function_Continue;
end
vol = 0
function onUpdate()

if vol < 1 then setPropertyFromClass('flixel.FlxG','sound.music.volume',vol);vol = vol + 0.01 end


end

function lerp(a,b,t) return a * (1-t) + b * t end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue');
	end
	if tag == 'startC' then -- Timer completed, play dialogue
		startCountdown();
	end
	if tag == '150' then -- Timer completed, play dialogue
        doTweenX('wwywD','camFollowPos',450,1,'sineInOut')
        doTweenZoom('wwhw','camGame',0.75,1,'sineInOut')
			doTweenY('wwwD','camFollowPos',460,1,'sineInOut')
			end
	if tag == 'sun2' then -- Timer completed, play dialogue
        setProperty('limoSunset2.x', -2430)
        doTweenX('limoSunset2','limoSunset2',-2430,95,'sineOut')
		end
	if tag == 'sun1' then -- Timer completed, play dialogue
        setProperty('limoSunset2.x', -2430)
        doTweenX('limoSunset2','limoSunset2',-2000,95,'sineOut')
		end
	if tag == 'CutsceneAmbience' then -- Timer completed, play dialogue
        playSound('CutsceneAmbience')
	end
	if tag == 'henchmenstory' then -- Timer completed, play dialogue
			setProperty('bgLimo2.x', 1500)
		setProperty('limoDancer2.x', 2050)
		setProperty('limoDancer3.x', 1750)
		setProperty('limoDancer4.x', 2350)
		setProperty('limoDancer5.x', 2650)
		end
	if tag == 'henchmen' then -- Timer completed, play dialogue
        doTweenX('wwywD','camFollowPos',1000,1,'sineInOut')
        doTweenZoom('wwhw','camGame',1.00,1,'sineInOut')
			doTweenY('wwwD','camFollowPos',300,1,'sineInOut')
			setProperty('bgLimo2.x', 1500)
		doTweenX('bgLimo2','bgLimo2',-150,4,'sineOut')
		setProperty('limoDancer2.x', 2050)
		doTweenX('limoDancer2','limoDancer2',550,4,'sineOut')
		setProperty('limoDancer3.x', 1750)
		doTweenX('limoDancer3','limoDancer3',250,4,'sineOut')
		setProperty('limoDancer4.x', 2350)
		doTweenX('limoDancer4','limoDancer4',850,4,'sineOut')
		setProperty('limoDancer5.x', 2650)
		doTweenX('limoDancer5','limoDancer5',1150,4,'sineOut')
	end
	if tag == 'snap' then -- Timer completed, play dialogue
        characterPlayAnim('dad','snap',true)
        end
	if tag == 'snapSound' then -- Timer completed, play dialogue
        playSound('CutsceneSnap')
	end
	if tag == 'cam' then -- Timer completed, play dialogue
       doTweenX('wwywD','camFollowPos',620,1,'sineInOut')
        doTweenZoom('wwhw','camGame',0.7,1,'sineInOut')
		doTweenY('wwwD','camFollowPos',320,1,'sineInOut')
	end
	if tag == 'finale' then -- Timer completed, play dialogue
       characterPlayAnim('dad','idle',true)
       setProperty('dad.specialAnim',false)
	end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end