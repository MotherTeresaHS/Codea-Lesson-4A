-- Lesson4ted by: Mr Coxall
-- Created on: Nov 2015
-- Created for: ICS2O
-- This program displays an image and let the user move it with their finger

-- variables local to entire file
local imageName
local imageSize 
local imagePosition = vec2()

-- Use this function to perform your initial setup
function setup()
    -- setup display and drawing functions
    supportedOrientations(LANDSCAPE_ANY)       
    --displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    imagePosition = vec2(WIDTH/2, HEIGHT/2)
    imageName = "SpaceCute:Beetle Ship"
    imageSize = vec2(spriteSize(imageName))
end

-- This function gets called once every frame
function touched(touch)
    
    -- local varaibles
    local currentTouchPosition = vec2(touch.x, touch.y)
    
    if (touch.state == BEGAN) then
        
    end
    
    if (touch.state == MOVING) then
        if( (imagePosition.x - imageSize.x/2) < currentTouchPosition.x and
            (imagePosition.x + imageSize.x/2) > currentTouchPosition.x and
            (imagePosition.y - imageSize.y/2) < currentTouchPosition.y and
            (imagePosition.y + imageSize.y/2) > currentTouchPosition.y ) then
            
            imagePosition = currentTouchPosition
            print(imagePosition)
        end      
    end
    
    if (touch.state == ENDED) then
        
    end
end

-- This function gets called once every frame
function draw()
    
    -- local varaibles
    
    -- This sets a dark background color 
    background(0, 0, 0, 255)
    
    sprite("SpaceCute:Background", 512, 384, 1024, 768)
    sprite(imageName, imagePosition.x, imagePosition.y)
end