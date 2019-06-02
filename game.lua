local game = {}

function game.init()
    -- using iPhone 7 values divided by 2 for now (otherwise height is too tall for screen)
    game.height = 1334 / 2
    game.width = 750 / 2
    game.horizontal_padding = 16

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
        highdpi = false -- True if high-dpi mode should be used on Retina displays in macOS and iOS. Does nothing on non-Retina displays.
    }

    -- success = love.window.setMode(game.width, game.height, game.flags)
    love.window.setMode(game.width, game.height, game.flags)
end

return game