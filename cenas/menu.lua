
local composer = require("composer")

local cena = composer.newScene(  )

function cena:create( event )
    local cenaMenu = self.view 

    local x = display.contentWidth
    local y = display.contentHeight  

    local meioX = display.contentCenterX
    local meioY = display.contentCenterY

    local fundo =display.newImageRect( cenaMenu, "recursos/imagens/background.jpg", x, y )

    fundo.x = meioX
    fundo.y = meioY
   
    local textoMenu = display.newText( cenaMenu, "MENU", meioX, y*0.15, nil, 200 )
    textoMenu:setFillColor(0, 0, 0)

    local bloco =display.newRoundedRect(cenaMenu, meioX, meioY, x*0.8, meioY, 100)
    bloco.alpha = 0.6

    local botaoJogar = display.newRoundedRect( cenaMenu, meioX, y*0.35, x*0.7, y*0.07, 100 )
    botaoJogar:setFillColor(0, 0, 0.6)

    local textoJogar = display.newText( cenaMenu, "JOGAR", botaoJogar.x, botaoJogar.y, nil, 100 )

    local botaoTutorial = display.newRoundedRect( cenaMenu, meioX, meioY, x*0.7, y*0.07, 100 )
    botaoTutorial:setFillColor(0, 0, 0.6)

    local textoTutorial = display.newText( cenaMenu, "TUTORIAL", botaoTutorial.x, botaoTutorial.y, nil, 100 )

    local botaoCreditos = display.newRoundedRect( cenaMenu, meioX, y*0.65, x*0.7, y*0.07, 100 )
    botaoCreditos:setFillColor(0, 0, 0.6)

    local textoCreditos = display.newText( cenaMenu, "CRÉDITOS", botaoCreditos.x, botaoCreditos.y, nil, 100)

    -- CRIAÇÃO DA FUNÇÃO VERIFICA TOQUE
    
    function verificaToque( event )
        if event.phase == "began" then
            if event.target == botaoJogar then
                composer.gotoScene( "cenas.jogo",{
                    time = 3000, effect = "fade"
                } )

            elseif event.target == botaoTutorial then
                composer.gotoScene( "cenas.tutorial", {
                    time = 3000, effect = "fade"
                })
               

            elseif event.target == botaoCreditos then
                composer.gotoScene("cenas.creditos", {
                    time = 3000, effect = "fade"
                })

                     
            end

        end



    end


    botaoJogar:addEventListener("touch", verificaToque)
    botaoTutorial:addEventListener("touch", verificaToque)
    botaoCreditos:addEventListener("touch", verificaToque)



end


cena:addEventListener("create", cena)
return cena





