local allowCountdown = false

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.60 then
        setProperty('health', health- 0.02);
    end
end


function onStartCountdown()

	if not allowCountdown and isStoryMode and not seenCutscene then 
		
	 	runTimer('startCutscene', 0.1);
		setProperty('inCutscene', true);

		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startCutscene' then
		startVideo('curse');
		return Function_Stop;
	end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end
