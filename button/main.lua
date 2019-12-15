function love.load()
  button = {}
  button.x = 200
  button.y = 200
  button.size = 50
  score = 0
  timer = 10
  myFont = love.graphics.newFont(40)
end

function love.update(dt)
  -- Timer --
  if timer > 0 then
    timer = timer - dt
  end
  if timer < 0 then
    timer = 0
  end
end

function love.draw()
  -- Button --
  love.graphics.setColor(255, 0, 0)
  love.graphics.circle("fill", button.x, button.y, button.size)
  -- Score --
  love.graphics.setColor(255, 255, 255)
  love.graphics.setFont(myFont)
  love.graphics.print(score)
  -- Timer --
  love.graphics.print(math.ceil(timer), 100, 0)
end

function love.mousepressed(x, y, b, isTouch)
  if b == 1 then
    if distanceBetween(button.x, button.y, love.mouse.getX(), love.mouse.getY()) < button.size then
      score = score + 1
      button.x = math.random(button.size, love.graphics.getWidth()-button.size)
      button.y = math.random(button.size, love.graphics.getHeight()-button.size)
    end
  end
end

function distanceBetween(x1, y1, x2, y2)
  return math.sqrt((y2-y1)^2 +(x2-x1)^2)
end
