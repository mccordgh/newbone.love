game = {}

function game.init()
    -- using iPhone 7 values for now
    -- game.height = 1334
    -- game.width = 750
    -- game.horizontal_tile_count = 8
    -- game.vertical_tile_count = 16
    game.width = 640
    game.height = 1280
    -- game.horizontal_padding = ceil(game.width * .05)
    -- game.tile_width = game.width / game.horizontal_tile_count
    -- game.tile_height = game.height / game.vertical_tile_count
    game.tile_width = 64
    game.tile_height = 64
    game.horizontal_tile_count = game.width / game.tile_width
    game.vertical_tile_count = game.height / game.tile_height

    -- dividing by 2 for now (otherwise height is too tall for screen)
    game.height = game.height / 2
    game.width = game.width / 2
    game.tile_width = game.tile_width / 2
    game.tile_height = game.tile_height / 2
    -- REMOVE THIS FOR APP BUILD

    game.flags = {
        fullscreen = false,
        vsync = false,
        msaa = 0,
        stencil = true,
        depth = 0,
        resizable = false,
        borderless = false,
        centered = false,
        display = 1,
        highdpi = true -- True if high-dpi mode should be used on Retina displays in macOS and iOS. Does nothing on non-Retina displays.
    }

    love.window.setMode(game.width, game.height, game.flags)
end
