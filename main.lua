-- DEVICE	            PORTRAIT DIMENSIONS	    LANDSCAPE DIMENSIONS
-- 12.9″ iPad Pro	    2048px × 2732px	        2732px × 2048px
-- 10.5″ iPad Pro   	1668px × 2224px	        2224px × 1668px
-- 9.7″ iPad    	    1536px × 2048px	        2048px × 1536px
-- 7.9″ iPad mini 4	    1536px × 2048px	        2048px × 1536px
-- iPhone XS Max    	1242px × 2688px	        2688px × 1242px
-- iPhone XS        	1125px × 2436px	        2436px × 1125px
-- iPhone XR	        828px × 1792px	        1792px × 828px
-- iPhone X	            1125px × 2436px	        2436px × 1125px
-- iPhone 8 Plus	    1242px × 2208px	        2208px × 1242px
-- iPhone 8	            750px × 1334px	        1334px × 750px
-- iPhone 7 Plus    	1242px × 2208px	        2208px × 1242px
-- iPhone 7	            750px × 1334px	        1334px × 750px
-- iPhone 6s Plus   	1242px × 2208px	        2208px × 1242px
-- iPhone 6s	        750px × 1334px	        1334px × 750px
-- iPhone SE	        640px × 1136px	        1136px × 640px

local game = require("game")
local player = require("player")
local game_board = require("game_board")

function love.load()
    game.init()
    player.init()

    mouse_pressed = false
    paused = false
end

function love.update(dt)
    if paused then
        return
    end

    if mouse_pressed then
        new_x = player.x + x_dir

        if new_x < game.horizontal_padding then
            new_x = game.horizontal_padding
        end

        if new_x > (game.width - player.width - game.horizontal_padding) then
            new_x = (game.width - player.width - game.horizontal_padding)
        end

        player.x = new_x
    end
    -- update stuff with deltatime (dt)
end

function love.draw()
    if paused then
        return
    end

    love.graphics.rectangle("fill", player.x, player.y, player.width, player.height)
end

function love.mousepressed(x, y, button, isTouch)
    mouse_pressed = true

    if x > (game.width / 2) then
        x_dir = 1
    else
        x_dir = -1
    end
end

function love.mousereleased(x, y, button, isTouch)
    mouse_pressed = false

    x_dir = 0
end

function love.focus(focused)
    if not focused then
        paused = true
    else
        paused = false
    end
end

function love.quit()
    -- cleanup and end the game
end
