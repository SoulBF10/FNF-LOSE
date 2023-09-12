function onCreate()
	makeLuaSprite('void', 'void', -800, -300);
	setScrollFactor('void', 0, 0);
	screenCenter('void')
	scaleObject('void', 0.8, 0.8);

	addLuaSprite('void', false);

	makeAnimatedLuaSprite('Video', 'WOMANINTRO', 0, 0);
	addAnimationByIndices('Video','Start','WOMANINTRO intro', 1, 10, true)
	addAnimationByPrefix('Video','Open','WOMANINTRO intro', 10, true)
	scaleObject('Video', 2.2, 2.2);
	setObjectCamera('Video', "hud")

end

function onCreatePost()
	setScrollFactor('boyfriend', 1.6, 1.6)
end

function onMoveCamera(target)
	if target == 'dad' then
		setProperty('defaultCamZoom', 1.6)
	else
		setProperty('defaultCamZoom', 1.1)
	end
end


