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
    if distanceBetween(button.x, button.y, love.mouse.getX(), love.mouse.getY()) < button.size then
      score = score + 1
    end
  end
end

function distanceBetween(x1, y1, x2, y2)
  return math.sqrt((y2-y1)^2 +(x2-x1)^2)
end
