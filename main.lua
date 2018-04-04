<<<<<<< HEAD
-- Title: NMath Quiz
=======
-- Title: Math Quiz
>>>>>>> 99e5967f44cbc6cd858e6643e186f7f2803d5b11
-- Name: Bassim H
-- Course: ICS2O/3C
-- This program asks a user a math question, and displays incorrect or correct depending on the answer.
-----------------------------------------------------------------------------------------------------------------------------------------------------

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--set the background colour
display.setDefault("background", 0/255, 0/255, 0/255)

------------------------------------------------------------------------------------------------------------------------------------
--LOCAL VARIABLES
------------------------------------------------------------------------------------------------------------------------------------

--create local variables
local questionObject
local correctObject
local incorrectObject
local numericField
local randomNumber1
local randomNumber2
local randomNumber3
local randomNumber4
<<<<<<< HEAD
local userAnswer
local correctAnswer
local totalSeconds = 11
local secondsLeft = 11
=======
local randomNumber5
local randomNumber6
local userAnswer
local correctAnswer
local correctAnswerObject
local totalSeconds = 21
local secondsLeft = 21
>>>>>>> 99e5967f44cbc6cd858e6643e186f7f2803d5b11
local clockText
local countDownTimer
local lives = 3
local heart1
local heart2
local heart3
local points = 0
local pointsObject
local randomOperator
local gameOver
local gameOverSound = audio.loadSound("Sounds/dead.mp3")
local gameOverSoundChannel 
<<<<<<< HEAD
=======
local correctSound
local correctSound = audio.loadSound("Sounds/correctSound.mp3")
local correctSoundChannel
local wrongSound
local wrongSound = audio.loadSound("Sounds/wrongSound.mp3")
local wrongSoundChannel
local winscreen
>>>>>>> 99e5967f44cbc6cd858e6643e186f7f2803d5b11
------------------------------------------------------------------------------------------------------------------------------------
--LOCAL FUNCTIONS
------------------------------------------------------------------------------------------------------------------------------------

local function AskQuestion()
	-- generate 2 random numbers between a max. and a min. number
	randomNumber1 = math.random(0, 20)
	randomNumber2 = math.random(0, 20)
	randomNumber3 = math.random(0, 10)
	randomNumber4 = math.random(0, 10)
<<<<<<< HEAD
	randomOperator = math.random(1, 3)
=======
	randomNumber5 = math.random(50, 100)
	randomNumber6 = math.random(0, 50)
	randomOperator = math.random(1, 4)
>>>>>>> 99e5967f44cbc6cd858e6643e186f7f2803d5b11

	if (randomOperator == 1) then
		correctAnswer = randomNumber1 + randomNumber2

		--create question in text object
		questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = " 
	
	elseif (randomOperator == 2) then
		correctAnswer = randomNumber1 - randomNumber2

		--create question in text object
		questionObject.text = randomNumber1 .. " - " .. randomNumber2 .. " = " 
		if (correctAnswer <0) then
			correctAnswer = randomNumber2 - randomNumber1
			questionObject.text = randomNumber2 .. " - " .. randomNumber1 .. " = " 
		end

	
	elseif (randomOperator == 3) then
<<<<<<< HEAD
		correctAnswer = randomNumber3 * randomNumber4
	
		--create question in text object
		questionObject.text = randomNumber3 .. " X " .. randomNumber4 .. " = " 
	end
end

local function UpdateHearts()
=======
		correctAnswer = randomNumber3 * randomNumber4 
	
		--create question in text object
		questionObject.text = randomNumber3 .. " X " .. randomNumber4 .. " = " 

	elseif (randomOperator == 4) then
		correctAnswer = randomNumber3 * randomNumber4 
		randomNumber3 = correctAnswer
		correctAnswer = randomNumber3 / randomNumber4
		questionObject.text = randomNumber3 .. " / " .. randomNumber4 .. " = "  
	end
end
 

local function UpdateHearts()

>>>>>>> 99e5967f44cbc6cd858e6643e186f7f2803d5b11
	if (lives == 3) then
		heart1.isVisible = true
		heart2.isVisible = true
		heart3.isVisible = true
<<<<<<< HEAD
=======

>>>>>>> 99e5967f44cbc6cd858e6643e186f7f2803d5b11
	elseif (lives == 2) then
		heart1.isVisible = true
		heart2.isVisible = true
		heart3.isVisible = false
<<<<<<< HEAD
=======

>>>>>>> 99e5967f44cbc6cd858e6643e186f7f2803d5b11
	elseif (lives == 1) then
		heart1.isVisible = true
		heart2.isVisible = false
		heart3.isVisible = false
<<<<<<< HEAD
	elseif (lives == 0) then
		heart1.isVisible = true
		heart2.isVisible = false
		heart3.isVisible = false
		gameOverSoundChannel = audio.play(gameOverSound)
=======

	elseif (lives == 0) then
		heart1.isVisible = false
		heart2.isVisible = false
		heart3.isVisible = false
		gameOverSoundChannel = audio.play(gameOverSound)

	elseif (points == 5) then
		winscreen.isVisible = true
	end
end

local function StopTimer(event)
	if (lives == 0) then
		timer.cancel(countDownTimer)
>>>>>>> 99e5967f44cbc6cd858e6643e186f7f2803d5b11
	end
end
 
local function UpdateTime()
	
	--decrement the number of seconds	
	secondsLeft = secondsLeft - 1

	--display the number of seconds left in the clock object
	clockText.text = secondsLeft .. ""

	if (secondsLeft == 0) then
		--reset the number of seconds
		secondsLeft = totalSeconds
		lives = lives -1
<<<<<<< HEAD
=======
		wrongSoundChannel = audio.play(wrongSound)
>>>>>>> 99e5967f44cbc6cd858e6643e186f7f2803d5b11
		UpdateHearts()

		if (lives == 0) then

			gameOver.isVisible = true
			numericField.isVisible = false
			clockText.isVisible = false
			pointsObject.isVisible = false
			questionObject.isVisible = false
			incorrectObject.isVisible = false
			correctObject.isVisible = false
<<<<<<< HEAD
		else
			AskQuestion()
		end
	end
=======
			StopTimer()
		else
			AskQuestion()
		end
	end	
>>>>>>> 99e5967f44cbc6cd858e6643e186f7f2803d5b11
end

local function StartTimer()
	-- create a countdown timer that loops indefinetly
	countDownTimer = timer.performWithDelay(1000, UpdateTime, 0)
end

 local function HideCorrect()
 	correctObject.isVisible = false
 	AskQuestion()
 end

local function HideIncorrect()
 	incorrectObject.isVisible = false
 	AskQuestion()
 end

<<<<<<< HEAD

=======
>>>>>>> 99e5967f44cbc6cd858e6643e186f7f2803d5b11
 local function NumericFieldListener( event )
 	
 	--User begins editing "numericField"
 	if ( event.phase == "began" ) then


 	elseif ( event.phase == "submitted" ) then

 		--when the answer is submitted (enter key is pressed) set user input to user's answer
 		userAnswer = tonumber(event.target.text)

 		--if the user's answer and the correct answer are the same:
 		if (userAnswer == correctAnswer) then
 			correctObject.isVisible = true
 			timer.performWithDelay(2000, HideCorrect)
 			event.target.text = ""
 			points = points + 1
 			pointsObject.text = points 
 			secondsLeft = totalSeconds
<<<<<<< HEAD
=======
 			correctSoundChannel = audio.play(correctSound)
>>>>>>> 99e5967f44cbc6cd858e6643e186f7f2803d5b11

 		else
 			lives = lives -1
 			UpdateHearts()
 			incorrectObject.isVisible = true
 			timer.performWithDelay(2000, HideIncorrect)
 			event.target.text = ""
 			secondsLeft = totalSeconds
<<<<<<< HEAD
=======
 			wrongSoundChannel = audio.play(wrongSound)
 			correctAnswerObject.isVisible = false
 			timer.performWithDelay(2000, HideCorrectAnswer)
>>>>>>> 99e5967f44cbc6cd858e6643e186f7f2803d5b11

 			if (lives == 0) then

				gameOver.isVisible = true
				numericField.isVisible = false
				clockText.isVisible = false
				pointsObject.isVisible = false
				questionObject.isVisible = false
				incorrectObject.isVisible = false
				correctObject.isVisible = false
<<<<<<< HEAD
=======
				StopTimer()
>>>>>>> 99e5967f44cbc6cd858e6643e186f7f2803d5b11
				gameOverSoundChannel = audio.play(gameOverSound)
			else
				AskQuestion()
			end
		end
 				  	
 	end
end

------------------------------------------------------------------------------------------------------------------------------------
--OBJECT CREATION
------------------------------------------------------------------------------------------------------------------------------------
--create the lives to display on the screen
heart1 = display.newImageRect("Images/heart.png", 100, 100)
heart1.x = display.contentWidth * 7/8
heart1.y = display.contentHeight * 1/7

heart2 = display.newImageRect("Images/heart.png", 100, 100)
heart2.x = display.contentWidth * 6/8
heart2.y = display.contentHeight * 1/7

heart3 = display.newImageRect("Images/heart.png", 100, 100)
heart3.x = display.contentWidth * 5/8
heart3.y = display.contentHeight * 1/7

--create the gameover screen
gameOver = display.newImageRect("Images/gameOver.png", 1100, 1100)
gameOver.x = 500
gameOver.y = 400
gameOver.isVisible = false

--create the clock object
clockText = display.newText("", 100, 100, Arial, 55)
clockText:setTextColor(1, 0, 0)

--displays a question and sets the colour
questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/3, nil, 55)
questionObject:setTextColor(155/255, 42/255, 198/255)

--Create the correct text object and make it invisible
correctObject = display.newText( "Correct!", display.contentWidth/1.9, display.contentHeight/2, Georgia, 60)
correctObject:setTextColor(0/255, 0/255, 255/255)
correctObject.isVisible = false

--Create the points text object and make it invisible
pointsObject = display.newText(points, display.contentWidth/1.9, display.contentHeight*2/3, Georgia, 70)
pointsObject:setTextColor(0/255, 255/255, 0/255)
pointsObject.isVisible = true


--Create the correct text object and make it invisible
incorrectObject = display.newText( "Incorrect!", display.contentWidth/1.9, display.contentHeight/2, Georgia, 60)
incorrectObject:setTextColor(255/255, 0/255, 0/255)
incorrectObject.isVisible = false

<<<<<<< HEAD
=======
--Create the correct text object and make it invisible
correctAnswerObject = display.newText( "correctAnswer", display.contentWidth/1.9, display.contentHeight/2, Georgia, 60)
correctAnswerObject:setTextColor(255/255, 0/255, 0/255)
correctAnswerObject.isVisible = false

>>>>>>> 99e5967f44cbc6cd858e6643e186f7f2803d5b11
--create a numeric field
numericField = native.newTextField( display.contentWidth/1.9, display.contentHeight/3, 170, 80 )
numericField.inputType = "number"

<<<<<<< HEAD
=======
--create a win background
winscreen = display.newImageRect("Images/win.png",  1100, 1100)
winscreen.x = 500
winscreen.y = 400
winscreen.isVisible = false

>>>>>>> 99e5967f44cbc6cd858e6643e186f7f2803d5b11
--add the event listener for the numeric field
numericField:addEventListener( "userInput", NumericFieldListener )

------------------------------------------------------------------------------------------------------------------------------------
--FUNCTION CALLS
------------------------------------------------------------------------------------------------------------------------------------

<<<<<<< HEAD
--call the function to ask the question
=======
--call functions
>>>>>>> 99e5967f44cbc6cd858e6643e186f7f2803d5b11
AskQuestion()
UpdateTime()
StartTimer()