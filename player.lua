local player = {}

function player.init()
    player.height = 48
    player.width = 32
    player.x = (love.graphics.getWidth() / 2) - (player.width / 2)
    player.y = love.graphics.getHeight() - player.height
end

return player