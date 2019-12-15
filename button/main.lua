function love.load()

end

function love.update(dt)

end

function love.draw()
  love.graphics.setColor(0, 0, 255)
  love.graphics.rectangle("fill", 200, 400, 200, 100)
  love.graphics.setColor(255, 0, 0)
  love.graphics.circle("fill", 150, 350, 100, 100)
end
