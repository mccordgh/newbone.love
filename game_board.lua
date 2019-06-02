game_board = {}

function game_board.init()
    game_board.vertical_scroll_offset = 0
    game_board.vertical_offset = game.tile_height
end

function game_board.update(dt)
    game_board.vertical_scroll_offset = game_board.vertical_scroll_offset - (player.vertical_speed * dt)

    if game_board.vertical_scroll_offset <= -game.tile_height then
        game_board.vertical_scroll_offset = 0
    end
end

function game_board.draw_self()
    for x = 0, game.horizontal_tile_count, 1
    do
        for y = 0, game.vertical_tile_count, 1
        do
            local xx = x * game.tile_width
            local yy = y * game.tile_height - game_board.vertical_offset - game_board.vertical_scroll_offset

            love.graphics.setColor(1, 1, 1, 1)
            love.graphics.rectangle("fill", xx, yy , game.tile_width, game.tile_height)

            love.graphics.setColor(0, 0, 0, 1)
            love.graphics.rectangle("line", xx, yy , game.tile_width, game.tile_height)
        end
    end

end
