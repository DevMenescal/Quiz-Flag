
local composer = require("composer")

local cena = composer.newScene(  )

function cena:create( event )
    local cenaCarregamento = self.view 

    local x = display.contentWidth
    local y = display.contentHeight  

    local meioX = display.contentCenterX
    local meioY = display.contentCenterY


    local fundo = display.newImageRect( cenaCarregamento, "recursos/imagens/background.jpg", x, y )

    fundo.x = meioX
    fundo.y = meioY

    local logo = display.newImageRect( cenaCarregamento, "recursos/imagens/logo.png", x*0.9, y*0.3 )

    logo.x = meioX
    logo.y = y*0.3

    local texto = display.newText( cenaCarregamento, "CARREGANDO...", meioX, y*0.7, nil, 80 )

    texto:setFillColor(0, 0, 0)

    local barra = display.newRoundedRect( cenaCarregamento, meioX, y*0.75, 0, y*0.05, 100 )

    transition.to( barra, {
        time = math.random( 5000, 10000 ),
        width = x*0.8,
        barra:setFillColor( 0, 1, 0 ),
        onComplete = function ()
            composer.gotoScene( "cenas.menu", {time=300, effect = "fade"} )
        end
       } )
    
       -- Barra carregada = x*0.8
       -- Barra vazia = 0

end

cena:addEventListener("create", cena)
return cena


