function onEvent(name, value1, value2)

    if name == "Camera Flash" then
		cameraFlash('camother', '' .. value1, value2, true)
	end
end