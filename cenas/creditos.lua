
local composer = require("composer")

local cena = composer.newScene(  )

function cena:create( event )
    local cenaCreditos = self.view 

    local x = display.contentWidth
    local y = display.contentHeight  

    local meioX = display.contentCenterX
    local meioY = display.contentCenterY


end

cena:addEventListener("create", cena)
return cena


