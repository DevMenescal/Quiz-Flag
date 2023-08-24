
local composer = require("composer")

local cena = composer.newScene(  )

function cena:create( event )
    local cenaJogo = self.view 

    -- VARIÁVEIS DE POSIÇÃO

    local x = display.contentWidth
    local y = display.contentHeight  

    local meioX = display.contentCenterX
    local meioY = display.contentCenterY

    -- DECLARAÇÃO DOS GRUPOS (CAMADAS)

    local grupoFundo = display.newGroup()
    local grupoChina = display.newGroup()
    local grupoBrasil = display.newGroup()
    local grupoVenezuela = display.newGroup()
    local grupoTela = display.newGroup()
    local grupoDerrota = display.newGroup()

    cenaJogo:insert(grupoFundo)
    cenaJogo:insert(grupoChina)
    cenaJogo:insert(grupoBrasil)
    cenaJogo:insert(grupoVenezuela)
    cenaJogo:insert(grupoTela)
    cenaJogo:insert(grupoDerrota)

    -- DECLARAÇÃO DA PERGUNTAS

    local pergunta = {
        china = {
            bandeira = "recursos/bandeiras/china.png",
            respostas = { "CHINA", "JAPÃO", "MARROCOS"}
        },
        brasil = {
            bandeira = "recursos/bandeiras/brazil-.png",
            respostas = {"BRASIL", "COLÔMBIA", "ARGENTINA"}
        },
        venezuela = {
            bandeira = "recursos/bandeiras/venezuela.png",
            respostas = {"VENEZUELA", "COLÔMBIA", "CHILE"}
        }
    }

    -- DECLARAÇÃO DOS OBJETOS DE EXIBIÇÃO

    -- DECLARAÇÃO DE FUNDO

    local fundo = display.newImageRect( grupoFundo, "recursos/imagens/background.jpg", x, y )

    fundo.x = meioX
    fundo.y = meioY

    -- DECLARAÇÃO CHINA ( PERGUNTA 01 )

    -- CRIAÇÃO DA BANDEIRA
    local bandeiraChina =display.newImageRect( grupoChina, pergunta.china.bandeira, x*0.5, x*0.5 )
    bandeiraChina.x = meioX
    bandeiraChina.y = y*0.22

    -- CRIAÇÃO DO BLOCO CHINA
    local blocoChina = display.newRoundedRect( grupoChina, meioX, y*0.63, x*0.7, meioY, 100 )
    blocoChina.alpha = 0.6

    -- CRIAÇÃO DAS REPOSTAS
    local r1China =display.newRoundedRect( grupoChina, meioX, y*0.48, x*0.6, y*0.09, 100)
    r1China:setFillColor(0, 0.4, 0.8)

    local r1ChinaTexto = display.newText( grupoChina, pergunta.china.respostas[1], r1China.x, r1China.y, nil, 100 )

    local r2China =display.newRoundedRect( grupoChina, meioX, y*0.63, x*0.6, y*0.09, 100)
    r2China:setFillColor(0, 0.4, 0.8)

    local r2ChinaTexto = display.newText( grupoChina, pergunta.china.respostas[2], r2China.x, r2China.y, nil, 100 )

    local r3China =display.newRoundedRect( grupoChina, meioX, y*0.78, x*0.6, y*0.09, 100)
    r3China:setFillColor(0, 0.4, 0.8)

    local r3ChinaTexto = display.newText( grupoChina, pergunta.china.respostas[3], r3China.x, r3China.y, nil, 100 )

    grupoChina.alpha = 1

    -- DECLARAÇÃO DO BRASIL (PERGUNTA 02)

    -- CRIAÇÃO DA BANDEIRA
    local bandeiraBrasil =display.newImageRect( grupoBrasil, pergunta.brasil.bandeira, x*0.5, x*0.5)
    bandeiraBrasil.x = meioX
    bandeiraBrasil.y = y*0.22

    -- CRIAÇÃO DO BLOCO BRASIL
    local blocoBrasil =display.newRoundedRect( grupoBrasil, meioX, y*0.63, x*0.7, meioY, 100  )
    blocoBrasil.alpha = 0.6

    -- CRIAÇÃO RESPOSTAS 
    local r1Brasil = display.newRoundedRect(grupoBrasil, meioX, y*0.48, x*0.6, y*0.09, 100 )
    r1Brasil:setFillColor(0, 0.4, 0.8)

    local r1BrasilTexto = display.newText( grupoBrasil, pergunta.brasil.respostas[1], r1Brasil.x, r1Brasil.y, nil, 100 )

    local r2Brasil = display.newRoundedRect( grupoBrasil, meioX, y*0.63, x*0.6, y*0.09, 100  )
    r2Brasil:setFillColor(0, 0.4, 0.8)

    local r2BrasilTexto = display.newText( grupoBrasil, pergunta.brasil.respostas[2], r2Brasil.x, r2Brasil.y, nil, 100 ) 

    local r3Brasil =display.newRoundedRect( grupoBrasil, meioX, y*0.78, x*0.6, y*0.09, 100 )
    r3Brasil:setFillColor(0, 0.4, 0.8)
    
    local r3BrasilTexto = display.newText( grupoBrasil, pergunta.brasil.respostas[3], r3Brasil.x, r3Brasil.y, nil, 100 )

    grupoBrasil.alpha = 0

    -- -- DECLARAÇÃO DA VENEZUELA (PERGUNTA 03)

    -- -- CRIAÇÃO DA BANDEIRA
    -- local bandeiraVenezuela = display.newImageRect( grupoVenezuela, pergunta.venezuela.bandeira, x*0.5, x*0.5)
    -- bandeiraVenezuela.x = meioX
    -- bandeiraVenezuela.y = y*0.22

    -- -- CRIAÇÃO DO BLOCO VENEZUELA
    -- local blocoVenezuela = display.newRoundedRect( grupoVenezuela, meioX, y*0.63, x*0.7, meioY, 100  )
    -- blocoVenezuela.alpha = 0.6

    -- -- CRIAÇÃO RESPOSTAS 
    -- local r1Venezuela = display.newRoundedRect(grupoVenezuela, meioX, y*0.48, x*0.6, y*0.09, 100 )
    -- r1Venezuela:setFillColor(0, 0.4, 0.8)

    -- local r1VenezuelaTexto = display.newText( grupoVenezuela, pergunta.venezuela.respostas[1], r1Venezuela.x, r1Venezuela.y, nil, 100 )

    -- local r2Venezuela = display.newRoundedRect( grupoVenezuela, meioX, y*0.63, x*0.6, y*0.09, 100  )
    -- r2Venezuela:setFillColor(0, 0.4, 0.8)

    -- local r2VenezuelaTexto = display.newText( grupoVenezuela, pergunta.venezuela.respostas[2], r2Venezuela.x, r2Venezuela.y, nil, 100 ) 

    -- local r3Venezuela =display.newRoundedRect( grupoVenezuela, meioX, y*0.78, x*0.6, y*0.09, 100 )
    -- r3Venezuela:setFillColor(0, 0.4, 0.8)
    
    -- local r3VenezuelaTexto = display.newText( grupoVenezuela, pergunta.venezuela.respostas[3], r3Venezuela.x, r3Venezuela.y, nil, 100 )

    -- DECLARAÇÃO DAS FUNCIONALIDADES

    function verificaChina( event )
        if event.phase == "began" then
            if event.target == r1China then
                r1China:setFillColor( 0, 0.7, 0 )

                timer.performWithDelay( 1000, function ( )
                    transition.to( grupoChina, {
                        time = 1000,
                        alpha = 0,
                        onComplete = function ()
                            transition.to( grupoBrasil, {
                                time = 500,
                                alpha = 1
                            } )
                        end
                    } )
                end, 1 )

            elseif event.target == r2China then
                r2China:setFillColor(0.7,0,0)

            elseif event.target == r3China then
                r3China:setFillColor(0.7,0,0)    

            end
        end
    end
    r1China:addEventListener("touch", verificaChina)
    r2China:addEventListener("touch", verificaChina)
    r3China:addEventListener("touch", verificaChina)

    










end

cena:addEventListener("create", cena)
return cena

