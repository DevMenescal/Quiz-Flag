
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

    -- DECLARAÇÃO DA VARIÁVEL LIMITA TOQUE

    local limitaToque = true

    -- DECLARAÇÃO DE FUNDO

    local fundo = display.newImageRect( grupoFundo, "recursos/imagens/background.jpg", x, y )

    fundo.x = meioX
    fundo.y = meioY

    -- DECLARAÇÃO DO TEMPO

    local tempo = 18 -- Com o valor de 18, eu corrijo o bug do tempo. 
    local tempoTexto = display.newText( grupoTela, tempo, x*0.1, y*0.07, nil, 150 )

    -- DECLARAÇÃO DERROTA

    local fundoDerrota = display.newRect(grupoDerrota, meioX, meioY, x, y )
    fundoDerrota:setFillColor( 0, 0, 0 ) 
    fundoDerrota.alpha = 0.9

    local textoDerrota = display.newText( grupoDerrota, "DERROTA!", meioX, y*0.4, nil, 150  )

    local botaoDerrota =display.newRoundedRect( grupoDerrota, meioX, y*0.55, x*0.6, y*0.08, 100 )

    local botaoDerrotaTexto = display.newText( grupoDerrota, "REINICIAR", botaoDerrota.x, botaoDerrota.y, nil, 100 )
    botaoDerrotaTexto:setFillColor( 0,0,0 )

    grupoDerrota.alpha = 0

    -- DECLARAÇÃO CHINA ( PERGUNTA 01 )

    -- CRIAÇÃO DA BANDEIRA

    local bandeiraChina = display.newImageRect( grupoChina, pergunta.china.bandeira, x*0.5, x*0.5 )
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

    local r3Brasil = display.newRoundedRect( grupoBrasil, meioX, y*0.78, x*0.6, y*0.09, 100 )
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

    -- CRIAÇÃO DA FUNÇÃO VERIFICA CHINA

    function verificaChina( event )
        if event.phase == "began" and grupoChina.alpha == 1 and limitaToque == true then
            if event.target == r1China then
                r1China:setFillColor( 0, 0.7, 0 )
                adicionaTempo()
                limitaToque = false
                timer.performWithDelay( 1000, function ( )
                    transition.to( grupoChina, {
                        time = 500,
                        alpha = 0,
                        onComplete = function ()
                            transition.to( grupoBrasil, {
                                time = 500,
                                alpha = 1
                            } )
                            limitaToque = true
                        end
                    } )
                end, 1 )

            elseif event.target == r2China then
                r2China:setFillColor( 0.7, 0, 0 )
                diminuiTempo()
                limitaToque = false
                timer.performWithDelay( 300, function ()
                    limitaToque = true
                end, 1 )

            elseif event.target == r3China then
                r3China:setFillColor( 0.7, 0, 0 )    
                diminuiTempo()
                limitaToque = false
                timer.performWithDelay( 300, function ()
                    limitaToque = true
                end, 1 )

            end
        end
    end
    r1China:addEventListener("touch", verificaChina)
    r2China:addEventListener("touch", verificaChina)
    r3China:addEventListener("touch", verificaChina)

    -- CRIAÇÃO DA FUNÇÃO VERIFICA BRASIL

    function verificaBrasil( event )
        if event.phase == "began" and grupoBrasil.alpha == 1 and limitaToque == true then
            if event.target == r1Brasil then
             r1Brasil:setFillColor( 0, 0.7, 0 )  
             adicionaTempo()
             limitaToque = false

            elseif event.target == r2Brasil then 
              r2Brasil:setFillColor( 0.7, 0, 0 ) 
              diminuiTempo()
              limitaToque = false
                timer.performWithDelay( 300, function ()
                    limitaToque = true
                end, 1 )

            elseif event.target == r3Brasil then
              r3Brasil:setFillColor( 0.7, 0, 0 )
              diminuiTempo()
              limitaToque = false
                timer.performWithDelay( 300, function ()
                    limitaToque = true
                end, 1 )

            end
        end
    end

    
    r1Brasil:addEventListener("touch", verificaBrasil)
    r2Brasil:addEventListener("touch", verificaBrasil)
    r3Brasil:addEventListener("touch", verificaBrasil)

    -- CRIAÇÃO DA FUNÇÃO VERIFICA VENEZUELA

    -- CRIAÇÃO DA FUNÇÃO ATUALIZA TEMPO

    function atualizaTempo()
        if tempo > 0 then -- Esta condição vai evitar que o tempo fique negativo
            tempo = tempo - 1
            tempoTexto.text = tempo
        end
    end
    timer.performWithDelay( 1000, atualizaTempo, 0 )

    -- CRIAÇÃO DA FUNÇÃO ADICIONA TEMPO

    function adicionaTempo()
        if tempo > 0 then -- Valor desse maior que zero, pois zero == perdeu
            tempo = tempo + 10
            tempoTexto.text = tempo
        end
    end

    -- CRIAÇÃO DA FUNÇÃO DIMINUI TEMPO

    function diminuiTempo()
        if tempo >= 5 then -- Valor => 5, para evitar tempo negativo 
            tempo = tempo - 5
            tempoTexto.text = tempo

        elseif tempo < 5 then -- Valor < 5, zera o tempo para evitar tempo negativo
            tempo = 0
            tempoTexto.text = tempo
        end
    end
    
    -- CRIAÇÃO DA FUNÇÃO VERIFICA TEMPO

    function verificaTempo()
        if tempo == 0 then
            grupoDerrota.alpha = 1
            grupoBrasil.alpha = 0
            grupoChina.alpha = 0
        end
    end
    Runtime:addEventListener( "enterFrame", verificaTempo)

    -- CRIAÇÃO DA FUNÇÃO DO BOTÃO REINICIAR

    function reinicia()
        composer.removeScene( "cenas.jogo" )
    end

    -- CRIAÇÃO DA FUNÇÃO DERROTA

    function derrota( event )
        if event.phase == "began" and grupoDerrota.alpha == 1 then
            reinicia()
            composer.gotoScene( "cenas.menu", {
                time = 500,
                effect = "fade"
            } )
        end
    end
    botaoDerrota:addEventListener("touch", derrota)













end

cena:addEventListener("create", cena)
return cena

