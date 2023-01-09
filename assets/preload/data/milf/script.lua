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
			
            
            
			runTimer('startC',3)
			runTimer('cam',3)
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
	if tag == 'sun2' then -- Timer completed, play dialogue
        setProperty('limoNight.x', -1225)
        doTweenX('limoNight','limoNight',-1225,'sineOut')
		end
	if tag == 'sun1' then -- Timer completed, play dialogue
        setProperty('limoNight.x', -1225)
        doTweenX('limoNight','limoNight',-580,95,'sineOut')
		end
	if tag == 'cam' then -- Timer completed, play dialogue
       doTweenX('wwywD','camFollowPos',620,1,'sineInOut')
        doTweenZoom('wwhw','camGame',0.7,1,'sineInOut')
		doTweenY('wwwD','camFollowPos',320,1,'sineInOut')
	end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end