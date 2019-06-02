player = {}

function player.init()
    player.height = 48
    player.width = 32
    player.x = (love.graphics.getWidth() / 2) - (player.width / 2)
    player.y = love.graphics.getHeight() - player.height
    player.horizontal_speed = 200
    player.vertical_speed = 200
end

function player.update(dt)
    local new_x = player.x + (player.horizontal_speed * x_dir * dt)

    if new_x < 0 then
        new_x = 0
    end

    if new_x > (game.width - player.width) then
        new_x = game.width - player.width
    end

    player.x = new_x
end

function player.draw_self(dt)
    love.graphics.setColor(0, 1, 0, 1)

    love.graphics.rectangle("fill", player.x, player.y, player.width, player.height)
end
