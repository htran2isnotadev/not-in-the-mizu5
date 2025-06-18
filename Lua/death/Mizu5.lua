local mizu = {}

function mizu:Setup()
    self(1):cmd("stretchto,0,0,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,1,0,0,0")
    self(2):cmd("xy,SCREEN_CENTER_X,SCREEN_CENTER_Y;diffusealpha,0;")
end

function mizu:Dead()
    GAMESTATE:ApplyGameCommand('sound,gomen')
    self(1):cmd("diffusealpha,.7;linear,.4;diffusealpha,0;")
    self(2):cmd("diffusealpha,1;linear,1;diffusealpha,0;")
end

return mizu