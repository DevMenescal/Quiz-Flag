
local composer = require("composer")

local cena = composer.newScene(  )

function cena:create( event ) 
    local cenaCreditos = self.view

    local x = display.contentWidth
    local y = display.contentHeight  

    local meioX = display.contentCenterX
    local meioY = display.contentCenterY

    local textoJogo = display.newText( cenaCreditos, "CRÉDITOS", meioX, meioY, nil, 200  )



end

cena:addEventListener("create", cena)
return cena