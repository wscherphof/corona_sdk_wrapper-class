-- Wrapper-Class sample. 
--
-- Try different text, heights, widths, fontSizes etc.
--
local Wrapper = require("wrapper")

local _W = display.contentWidth
local _H = display.contentHeight

myParagraph = Wrapper:newParagraph({
	text = "Corona's framework dramatically increase productivity. Tasks like animating objects in OpenGL or creating user-interface widgets take only one line of code, and changes are instantly viewable in the Corona Simulator. ",
	width = 220,
	--height = 80, -- fontSize will be calculated automatically if set 
	font = "helvetica",
	fontSize = 16,
	--lineSpace = -5,
	alignment  = "center"
})
myParagraph:setReferencePoint(display.TopCenterReferencePoint)
myParagraph.x = _W/2
myParagraph.y = 50
myParagraph:setTextColor({255,255})

rect = display.newRoundedRect(0,0,myParagraph.width+15, myParagraph.height+15, 15 )
rect:setReferencePoint(display.CenterReferencePoint)
rect.x = _W/2
rect.y = 50+myParagraph.height/2
rect:setFillColor(50,166)
rect:setStrokeColor(255,200)
rect.strokeWidth = 1

myParagraph:toFront()
