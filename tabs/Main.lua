-- Temporary Main Game

-- Edited by Austin Kane
-- Edited on December 1st, 2016
-- Edited for ICS2O
-- This program is the main game

-- create the variables
local buttonZero = 0
local buttonOne = 1
local buttonTwo = 2
local buttonThree = 3
local buttonFour = 4
local buttonFive = 5
local buttonSix = 6
local buttonSeven = 7
local buttonEight = 8
local buttonNine = 9
local buttonZeroShowing
local buttonOneShowing
local buttonTwoShowing
local buttonThreeShowing
local buttonFourShowing
local buttonFiveShowing
local buttonSixShowing
local buttonSevenShowing
local buttonEightShowing
local buttonNineShowing
zeroIsTouched = false
zeroIsTouched2 = false
zeroIsTouched3 = false
oneIsTouched = false
oneIsTouched2 = false
oneIsTouched3 = false
twoIsTouched = false
twoIsTouched2 = false
twoIsTouched3 = false
threeIsTouched = false
threeIsTouched2 = false
threeIsTouched3 = false
fourIsTouched = false
fourIsTouched2 = false
fourIsTouched3 = false
fiveIsTouched = false
fiveIsTouched2 = false
fiveIsTouched3 = false
sixIsTouched = false
sixIsTouched2 = false
sixIsTouched3 = false
sevenIsTouched = false
sevenIsTouched2 = false
sevenIsTouched3 = false
eightIsTouched = false
eightIsTouched2 = false
eightIsTouched3 = false
nineIsTouched = false
nineIsTouched2 = false
nineIsTouched3 = false

-- Use this function to perform your initial setup
function setup()
    -- setup display and drawing functions
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()

    --create button and assign position, and make it so when they are pressed, they create an image
    border = SpriteObject("Dropbox:Level Select Frame", vec2(WIDTH/2, HEIGHT/1.8))
    border2 = SpriteObject("Dropbox:Level Select Frame", vec2(WIDTH/1.2, HEIGHT/1.8))
    border3 = SpriteObject("Dropbox:Level Select Frame", vec2(WIDTH/6.2, HEIGHT/1.8))
    
    buttonZero = Button("Dropbox:number0", vec2(WIDTH/20, HEIGHT/9))
    buttonZeroShowing = SpriteObject("Dropbox:number0", vec2(WIDTH/20, HEIGHT/4))
    buttonZeroShowing.draggable = true
    buttonZeroShowing.objectImage = ""
                
    buttonOne = Button("Dropbox:number1", vec2(WIDTH/7.35, HEIGHT/9))
    buttonOneShowing = SpriteObject("Dropbox:number1", vec2(WIDTH/7.35, HEIGHT/4))
    buttonOneShowing.draggable = true
    buttonOneShowing.objectImage = ""
    
    buttonTwo = Button("Dropbox:number2", vec2(WIDTH/4.25, HEIGHT/9))
    buttonTwoShowing = SpriteObject("Dropbox:number2", vec2(WIDTH/4.25, HEIGHT/4))
    buttonTwoShowing.draggable = true
    buttonTwoShowing.objectImage = ""

    buttonThree = Button("Dropbox:number3", vec2(WIDTH/3.01, HEIGHT/9))
    buttonThreeShowing = SpriteObject("Dropbox:number3", vec2(WIDTH/3.01, HEIGHT/4))
    buttonThreeShowing.draggable = true
    buttonThreeShowing.objectImage = ""
    
    buttonFour = Button("Dropbox:number4", vec2(WIDTH/2.32, HEIGHT/9))
    buttonFourShowing = SpriteObject("Dropbox:number4", vec2(WIDTH/2.32, HEIGHT/4))
    buttonFourShowing.draggable = true
    buttonFourShowing.objectImage = ""
    
    buttonFive = Button("Dropbox:number5", vec2(WIDTH/1.89, HEIGHT/9))
    buttonFiveShowing = SpriteObject("Dropbox:number0", vec2(WIDTH/1.89, HEIGHT/4))
    buttonFiveShowing.draggable = true
    buttonFiveShowing.objectImage = ""
    
    buttonSix = Button("Dropbox:number6", vec2(WIDTH/1.59, HEIGHT/9))
    buttonSixShowing = SpriteObject("Dropbox:number6", vec2(WIDTH/1.59, HEIGHT/4))
    buttonSixShowing.draggable = true
    buttonSixShowing.objectImage = ""
    
    buttonSeven = Button("Dropbox:number7", vec2(WIDTH/1.375, HEIGHT/9))
    buttonSevenShowing = SpriteObject("Dropbox:number7", vec2(WIDTH/1.375, HEIGHT/4))
    buttonSevenShowing.draggable = true
    buttonSevenShowing.objectImage = ""
    
    buttonEight = Button("Dropbox:number8", vec2(WIDTH/1.21, HEIGHT/9))
    buttonEightShowing = SpriteObject("Dropbox:number8", vec2(WIDTH/1.21, HEIGHT/4))
    buttonEightShowing.draggable = true
    buttonEightShowing.objectImage = ""
    
    buttonNine = Button("Dropbox:number9", vec2(WIDTH/1.08, HEIGHT/9))
    buttonNineShowing = SpriteObject("Dropbox:number9", vec2(WIDTH/1.08, HEIGHT/4))
    buttonNineShowing.draggable = true
    buttonNineShowing.objectImage = ""
end
    
-- This function gets called once every frame
function touched(touch)
    
    -- make the duplicate image appear, and able to be dragged
    buttonZero:touched(touch)
    if (buttonZero.selected == true) then
        buttonZeroShowing.objectImage = "Dropbox:number0"
    end
    buttonOne:touched(touch)
    if (buttonOne.selected == true) then
        buttonOneShowing.objectImage = "Dropbox:number1"
    end
    buttonTwo:touched(touch)
    if (buttonTwo.selected == true) then
        buttonTwoShowing.objectImage = "Dropbox:number2"
    end
    buttonThree:touched(touch)
    if (buttonThree.selected == true) then
        buttonThreeShowing.objectImage = "Dropbox:number3"
    end
    buttonFour:touched(touch)
    if (buttonFour.selected == true) then
        buttonFourShowing.objectImage = "Dropbox:number4"
    end
    buttonFive:touched(touch)
    if (buttonFive.selected == true) then
        buttonFiveShowing.objectImage = "Dropbox:number5"
    end
    buttonSix:touched(touch)
    if (buttonSix.selected == true) then
        buttonSixShowing.objectImage = "Dropbox:number6"
    end
    buttonSeven:touched(touch)
    if (buttonSeven.selected == true) then
        buttonSevenShowing.objectImage = "Dropbox:number7"
    end
    buttonEight:touched(touch)
    if (buttonEight.selected == true) then
        buttonEightShowing.objectImage = "Dropbox:number8"
    end
    buttonNine:touched(touch)
    if (buttonNine.selected == true) then
        buttonNineShowing.objectImage = "Dropbox:number9"
    end

    -- make the sprites stop moving when inside the border
    if (buttonZeroShowing:isTouching(border) == true) then
        zeroIsTouched = true
    elseif (buttonZeroShowing:isTouching(border2) == true) then
        zeroIsTouched2 = true
    elseif (buttonZeroShowing:isTouching(border3) == true) then
        zeroIsTouched3 = true
    end
    
    if (buttonOneShowing:isTouching(border) == true) then
        oneIsTouched = true
    elseif (buttonOneShowing:isTouching(border2) == true) then
        oneIsTouched2 = true
    elseif (buttonOneShowing:isTouching(border3) == true) then
        oneIsTouched3 = true
    end
    
    if (buttonTwoShowing:isTouching(border) == true) then
        twoIsTouched = true
    elseif (buttonTwoShowing:isTouching(border2) == true) then
        twoIsTouched2 = true
    elseif (buttonTwoShowing:isTouching(border3) == true) then
        twoIsTouched3 = true
    end
    
    if (buttonThreeShowing:isTouching(border) == true) then
        threeIsTouched = true
    elseif (buttonThreeShowing:isTouching(border2) == true) then
        threeIsTouched2 = true
    elseif (buttonThreeShowing:isTouching(border3) == true) then
        threeIsTouched3 = true
    end
    
    if (buttonFourShowing:isTouching(border) == true) then
        fourIsTouched = true
    elseif (buttonFourShowing:isTouching(border2) == true) then
        fourIsTouched2 = true
    elseif (buttonFourShowing:isTouching(border3) == true) then
        fourIsTouched3 = true
    end
    
    if (buttonFiveShowing:isTouching(border) == true) then
        fiveIsTouched = true
    elseif (buttonFiveShowing:isTouching(border2) == true) then
        fiveIsTouched2 = true
    elseif (buttonFiveShowing:isTouching(border3) == true) then
        fiveIsTouched3 = true
    end
    
    if (buttonSixShowing:isTouching(border) == true) then
        sixIsTouched = true
    elseif (buttonSixShowing:isTouching(border2) == true) then
        sixIsTouched2 = true
    elseif (buttonSixShowing:isTouching(border3) == true) then
        sixIsTouched3 = true
    end
    
    if (buttonSevenShowing:isTouching(border) == true) then
        sevenIsTouched = true
    elseif (buttonSevenShowing:isTouching(border2) == true) then
        sevenIsTouched2 = true
    elseif (buttonSevenShowing:isTouching(border3) == true) then
        sevenIsTouched3 = true
    end
    
    if (buttonEightShowing:isTouching(border) == true) then
        eightIsTouched = true
    elseif (buttonEightShowing:isTouching(border2) == true) then
        eightIsTouched2 = true
    elseif (buttonEightShowing:isTouching(border3) == true) then
        eightIsTouched3 = true
    end
    
    if (buttonNineShowing:isTouching(border) == true) then
        nineIsTouched = true
    elseif (buttonNineShowing:isTouching(border2) == true) then
        nineIsTouched2 = true
    elseif (buttonNineShowing:isTouching(border3) == true) then
        nineIsTouched3 = true
    end
    
    if (zeroIsTouched == false and touch.state ~= MOVING) then
        buttonZeroShowing.objectCurrentLocation = buttonZeroShowing.objectStartLocation
    elseif (zeroIsTouched == true) then
        buttonZeroShowing.objectCurrentLocation = border.objectStartLocation
    end
    
    if (zeroIsTouched2 == false and touch.state ~= MOVING) then
        buttonZeroShowing.objectCurrentLocation =
        buttonZeroShowing.objectStartLocation
        elseif (zeroIsTouched2 == true) then
        buttonZeroShowing.objectCurrentLocation = border2.objectStartLocation
        end
    if (zeroIsTouched3 == false and touch.state ~= MOVING) then
        buttonZeroShowing.objectCurrentLocation =
        buttonZeroShowing.objectStartLocation
        elseif (zeroIsTouched3 == true) then
        buttonZeroShowing.objectCurrentLocation = border3.objectStartLocation
        end

    if (oneIsTouched == false and touch.state ~= MOVING) then
        buttonOneShowing.objectCurrentLocation =
        buttonOneShowing.objectStartLocation
        elseif (oneIsTouched == true) then
        buttonOneShowing.objectCurrentLocation = border.objectStartLocation
    end
    if (oneIsTouched2 == false and touch.state ~= MOVING) then
        buttonOneShowing.objectCurrentLocation =
        buttonOneShowing.objectStartLocation
        elseif (oneIsTouched2 == true) then
        buttonOneShowing.objectCurrentLocation = border2.objectStartLocation
    end
    if (oneIsTouched3 == false and touch.state ~= MOVING) then
        buttonOneShowing.objectCurrentLocation =
        buttonOneShowing.objectStartLocation
        elseif (oneIsTouched3 == true) then
        buttonOneShowing.objectCurrentLocation = border3.objectStartLocation
    end
    
    if (twoIsTouched == false and touch.state ~= MOVING) then
        buttonTwoShowing.objectCurrentLocation =
        buttonTwoShowing.objectStartLocation
        elseif (twoIsTouched == true) then
        buttonTwoShowing.objectCurrentLocation = border.objectStartLocation
        end
    if (twoIsTouched2 == false and touch.state ~= MOVING) then
        buttonTwoShowing.objectCurrentLocation =
        buttonTwoShowing.objectStartLocation
        elseif (twoIsTouched2 == true) then
        buttonTwoShowing.objectCurrentLocation = border2.objectStartLocation
        end
    if (twoIsTouched3 == false and touch.state ~= MOVING) then
        buttonTwoShowing.objectCurrentLocation =
        buttonTwoShowing.objectStartLocation
        elseif (twoIsTouched3 == true) then
        buttonTwoShowing.objectCurrentLocation = border3.objectStartLocation
    end
    
    if (threeIsTouched == false and touch.state ~= MOVING) then
        buttonThreeShowing.objectCurrentLocation =
        buttonThreeShowing.objectStartLocation
        elseif (threeIsTouched == true) then
        buttonThreeShowing.objectCurrentLocation = border.objectStartLocation
        end
    if (threeIsTouched2 == false and touch.state ~= MOVING) then
        buttonThreeShowing.objectCurrentLocation =
        buttonThreeShowing.objectStartLocation
        elseif (threeIsTouched2 == true) then
        buttonThreeShowing.objectCurrentLocation = border2.objectStartLocation
        end
    if (threeIsTouched3 == false and touch.state ~= MOVING) then
        buttonThreeShowing.objectCurrentLocation =
        buttonThreeShowing.objectStartLocation
        elseif (threeIsTouched3 == true) then
        buttonThreeShowing.objectCurrentLocation = border3.objectStartLocation
    end
    
    if (fourIsTouched == false and touch.state ~= MOVING) then
        buttonFourShowing.objectCurrentLocation =
        buttonFourShowing.objectStartLocation
        elseif (fourIsTouched == true) then
        buttonFourShowing.objectCurrentLocation = border.objectStartLocation
        end
    if (fourIsTouched2 == false and touch.state ~= MOVING) then
        buttonFourShowing.objectCurrentLocation =
        buttonFourShowing.objectStartLocation
        elseif (fourIsTouched2 == true) then
        buttonFourShowing.objectCurrentLocation = border2.objectStartLocation
                end
    if (fourIsTouched3 == false and touch.state ~= MOVING) then
        buttonFourShowing.objectCurrentLocation =
        buttonFourShowing.objectStartLocation
        elseif (fourIsTouched3 == true) then
        buttonFourShowing.objectCurrentLocation = border3.objectStartLocation
        end
    
    if (fiveIsTouched == false and touch.state ~= MOVING) then
        buttonFiveShowing.objectCurrentLocation =
        buttonFiveShowing.objectStartLocation
        elseif (fiveIsTouched == true) then
        buttonFiveShowing.objectCurrentLocation = border.objectStartLocation
                end
    if (fiveIsTouched2 == false and touch.state ~= MOVING) then
        buttonFiveShowing.objectCurrentLocation =
        buttonFiveShowing.objectStartLocation
        elseif (fiveIsTouched2 == true) then
        buttonFiveShowing.objectCurrentLocation = border2.objectStartLocation
                end
    if (fiveIsTouched3 == false and touch.state ~= MOVING) then
        buttonFiveShowing.objectCurrentLocation =
        buttonFiveShowing.objectStartLocation
        elseif (fiveIsTouched3 == true) then
        buttonFiveShowing.objectCurrentLocation = border3.objectStartLocation
    end
    
    if (sixIsTouched == false and touch.state ~= MOVING) then
        buttonSixShowing.objectCurrentLocation =
        buttonSixShowing.objectStartLocation
        elseif (sixIsTouched == true) then
        buttonSixShowing.objectCurrentLocation = border.objectStartLocation
                end
    if (sixIsTouched2 == false and touch.state ~= MOVING) then
        buttonSixShowing.objectCurrentLocation =
        buttonSixShowing.objectStartLocation
        elseif (sixIsTouched2 == true) then
        buttonSixShowing.objectCurrentLocation = border2.objectStartLocation
                end
    if (sixIsTouched3 == false and touch.state ~= MOVING) then
        buttonSixShowing.objectCurrentLocation =
        buttonSixShowing.objectStartLocation
        elseif (sixIsTouched3 == true) then
        buttonSixShowing.objectCurrentLocation = border3.objectStartLocation
    end
    
    if (sevenIsTouched == false and touch.state ~= MOVING) then
        buttonSevenShowing.objectCurrentLocation =
        buttonSevenShowing.objectStartLocation
        elseif (sevenIsTouched == true) then
        buttonSevenShowing.objectCurrentLocation = border.objectStartLocation
                end
    if (sevenIsTouched2 == false and touch.state ~= MOVING) then
        buttonSevenShowing.objectCurrentLocation =
        buttonSevenShowing.objectStartLocation
        elseif (sevenIsTouched2 == true) then
        buttonSevenShowing.objectCurrentLocation = border2.objectStartLocation
                end
    if (sevenIsTouched3 == false and touch.state ~= MOVING) then
        buttonSevenShowing.objectCurrentLocation =
        buttonSevenShowing.objectStartLocation
        elseif (sevenIsTouched3 == true) then
        buttonSevenShowing.objectCurrentLocation = border3.objectStartLocation
    end
    
    if (eightIsTouched == false and touch.state ~= MOVING) then
        buttonEightShowing.objectCurrentLocation =
        buttonEightShowing.objectStartLocation
        elseif (eightIsTouched == true) then
        buttonEightShowing.objectCurrentLocation = border.objectStartLocation
                end
    if (eightIsTouched2 == false and touch.state ~= MOVING) then
        buttonEightShowing.objectCurrentLocation =
        buttonEightShowing.objectStartLocation
        elseif (eightIsTouched2 == true) then
        buttonEightShowing.objectCurrentLocation = border2.objectStartLocation
                end
    if (eightIsTouched3 == false and touch.state ~= MOVING) then
        buttonEightShowing.objectCurrentLocation =
        buttonEightShowing.objectStartLocation
        elseif (eightIsTouched3 == true) then
        buttonEightShowing.objectCurrentLocation = border3.objectStartLocation
    end
    
    if (nineIsTouched == false and touch.state ~= MOVING) then
        buttonNineShowing.objectCurrentLocation =
        buttonNineShowing.objectStartLocation
        elseif (nineIsTouched == true) then
        buttonNineShowing.objectCurrentLocation = border.objectStartLocation
                end
    if (nineIsTouched2 == false and touch.state ~= MOVING) then
        buttonNineShowing.objectCurrentLocation =
        buttonNineShowing.objectStartLocation
    elseif (nineIsTouched2 == true) then
        buttonNineShowing.objectCurrentLocation = border2.objectStartLocation
                end
    if (nineIsTouched3 == false and touch.state ~= MOVING) then
        buttonNineShowing.objectCurrentLocation =
        buttonNineShowing.objectStartLocation
        elseif (nineIsTouched3 == true) then
        buttonNineShowing.objectCurrentLocation = border3.objectStartLocation
    end
    
    -- make them able to be touched
    buttonZeroShowing:touched(touch)
    buttonOneShowing:touched(touch)
    buttonTwoShowing:touched(touch)
    buttonThreeShowing:touched(touch)
    buttonFourShowing:touched(touch)
    buttonFiveShowing:touched(touch)
    buttonSixShowing:touched(touch)
    buttonSevenShowing:touched(touch)
    buttonEightShowing:touched(touch)
    buttonNineShowing:touched(touch)

end

-- This function gets called once every frame
function draw()
    
-- This sets a light background color and drawing parameters
    background(255, 255, 255, 255)
    
    stroke(0, 255, 0, 255)
    fill(0, 0, 0, 255)
    fontSize(50)
    font("Baskerville-BoldItalic")
    textWrapWidth(700)
    pushStyle()
    --this sets your line thickness
    strokeWidth(5)
    --do your drawing here, draw the sprites and images
    
    buttonZero:draw()
    buttonOne:draw()
    buttonTwo:draw()
    buttonThree:draw()
    buttonFour:draw()
    buttonFive:draw()
    buttonSix:draw()
    buttonSeven:draw()
    buttonEight:draw()
    buttonNine:draw()
    buttonZeroShowing:draw()
    buttonOneShowing:draw()
    buttonTwoShowing:draw()
    buttonThreeShowing:draw()
    buttonFourShowing:draw()
    buttonFiveShowing:draw()
    buttonSixShowing:draw()
    buttonSevenShowing:draw()
    buttonEightShowing:draw()
    buttonNineShowing:draw()
    border:draw()
    border2:draw()
    border3:draw()
  
    popStyle()
end