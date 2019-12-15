function love.load()
  button = {}
  button.x = 200
  button.y = 200
  button.size = 50
  score = 0
  timer = 0
  myFont = love.graphics.newFont(40)
end

function love.update(dt)

end

function love.draw()
  -- Button --
  love.graphics.setColor(255, 0, 0)
  love.graphics.circle("fill", button.x, button.y, button.size)
  -- Score --
  love.graphics.setColor(255, 255, 255)
  love.graphics.setFont(myFont)
  love.graphics.print(score)
end

function love.mousepressed(x, y, b, isTouch)
  if b == 1 then
    --body...
  end
end
