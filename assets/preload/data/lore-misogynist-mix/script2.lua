function onCreatePost()
    makeLuaSprite('ballsbox', 'void', 0, 0)
    screenCenter('ballsbox')
    setScrollFactor('ballsbox', 0, 0)
    addLuaSprite('ballsbox')
    setProperty('ballsbox.color', getColorFromHex('000000'))
    setProperty('ballsbox.alpha', 0)

    makeAnimatedLuaSprite('womanpng3', 'WOMAN', 0, 0)
    addAnimationByPrefix('womanpng3', 'the', 'WOMAN WOMAN', 15, false)
    playAnim('womanpng3', 'the')
    setObjectCamera('womanpng3', 'hud')
    addLuaSprite('womanpng3')
    screenCenter('womanpng3')
    setProperty('womanpng3.alpha', 0)

    makeAnimatedLuaSprite('womanpng2', 'WOMANINTRO', 0, 0)
    addAnimationByPrefix('womanpng2', 'that', 'WOMANINTRO intro', 15, false)
    playAnim('womanpng2', 'that')
    setObjectCamera('womanpng2', 'hud')
    addLuaSprite('womanpng2')
    screenCenter('womanpng2')
    setProperty('womanpng2.alpha', 0)
end

function onBeatHit()
    if curBeat == 0 then
        setVar('zoom', 1)
        setProperty('womanpng2.alpha', 1)
        playAnim('womanpng2', 'that')
        setVar('zoom', 1.9)
        setProperty('camGame.zoom', 1.9)
    end

    if curBeat == 14 then
        setProperty('ballsbox.alpha', 0)
        setProperty('dad.alpha', 1)
        setProperty('womanpng2.alpha', 0)
    end

    if curBeat == 20 then
    end
end

function onBeatHit()
    if curBeat == 45 then
        
    end
    if curBeat == 76 then
        setVar('zoom', 2)
    end
    if curBeat == 80 then
        setProperty('ballsbox.alpha', 1)
    end
    if curBeat == 81 then
        doTweenAlpha('thedadtween', 'dad', 0, 0.25, 'easeout')
    end

    if curBeat == 82 then
        setVar('zoom', 1)
        setProperty('womanpng3.alpha', 1)
        playAnim('womanpng3', 'the')
        setVar('zoom', 1.9)
        setProperty('camGame.zoom', 1.9)
    end

    if curBeat == 86 then
        setProperty('ballsbox.alpha', 0)
        setProperty('dad.alpha', 1)
        setProperty('womanpng3.alpha', 0)
    end

    if curBeat == 90 then
    end
end