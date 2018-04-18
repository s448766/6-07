-----------------------------------------------------------------------------------------
--
-- created by Md Faiyaz Hossain
-- created on 2018-04-01
--
-----------------------------------------------------------------------------------------

display.setDefault("background", 0.3,0.1,0.6)
display.setStatusBar(display.HiddenStatusBar)

--this is where the age will be generated so its not the same everytime.
math.randomseed( os.time() )

local age = math.random( 0, 50)
local ageGiven

--print age in the console

print(age)

--text

local whatAmidoing = display.newText("Guess how old I am", 1000, 600, native.systemFont, 128 )
whatAmidoing.id = "instructions"

--Age text Field

local ageTextFeild = native.newTextField( 1010, 800, 750, 128 )
ageTextFeild.id = "Age textfield"

--button

local enterButton = display.newImageRect('Button.png', 1050, 300)
enterButton.x = 1010
enterButton.y = 1100
enterButton.id = "Enter Button"


local function onButtonPressed( event )
	-- this will loop it if wrong

	ageGiven = tonumber(ageTextFeild.text)


	repeat

		if ageGiven == age then

			
			local correctText = display.newText("Correct", 1000, 100, native.systemFont, 128 )



	    elseif ageGiven > age then

	    	local highText = display.newText( 'Too high. Try again.', 1000, 100, native.systemFont, 128 )
	    	
	    else
	    	local lowText = display.newText( 'Too low. Try again.', 1000, 100, native.systemFont, 128 )
	    	
	    end

	    
	until( ageGiven == age )


end




enterButton:addEventListener( 'touch', onButtonPressed )