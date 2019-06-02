local game_board = {}

function game_board.draw_board(screen_height, screen_width, tile_height, tile_width)
    love.graphics.print("screen_height: " .. screen_height, 10, 0)
    love.graphics.print("screen_width: " .. screen_width, 10, 20)
    love.graphics.print("tile_height: " .. tile_height, 10, 40)
    love.graphics.print("tile_width: " .. tile_width, 10, 60)
    -- for x = 0, screen_width, tile_width
    -- do
    --     print(x)
    -- end
end

return game_board