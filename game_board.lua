game_board = {}

function game_board.draw_board()
    for x = 0, game.vertical_tile_count - 1, 1
    do
        for y = 0, game.horizontal_tile_count - 1, 1
        do
            love.graphics.setColor(255, 255, 255, 1)
            -- love.graphics.rectangle("line", x * game.tile_width, y * game.tile_height, game.tile_width, game.tile_height)

            love.graphics.setColor(0, 255, 0, 1)
            love.graphics.print("tile size = w: " .. game.tile_width .. ", h: " .. game.tile_height)
        end
    end

end
