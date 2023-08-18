
local composer = require("composer")

local cena = composer.newScene(  )

function cena:create( event )
    local cenaCarregamento = self.view 

    local x = display.contentWidth
    local y = display.contentHeight  

    local meioX = display.contentCenterX
    local meioY = display.contentCenterY

    local fundo = display.newRect( cenaCarregamento, meioX, meioY, x, y )
    fundo:setFillColor(0,0,0.5)

    local logo = display.newText( cenaCarregamento, "QUIZ", meioX, meioY, nil, 300 )


























end

cena:addEventListener("create", cena)
return cena


