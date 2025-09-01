Screen = {
    x = 640,
    y = 480
}

local font = love.graphics.newFont(20)
love.graphics.setFont(font)

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')
    print("Hello from Fantasy Downloader!")
end

function love.update(dt)

end

function love.draw()
    local text = "Hello from Fantasy Downloader!"
    local textWidth = font:getWidth(text)
    local textHeight = font:getHeight(text)
    love.graphics.print(text, (Screen.x - textWidth) / 2, (Screen.y - textHeight) / 2)
end
