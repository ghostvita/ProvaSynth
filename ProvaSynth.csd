<Cabbage>  
form caption("ProvaSynth 0.4.0-a.1") size(800, 660), guiMode("queue"), pluginId("prsy"), colour(225,218,212) typeface("ui/fonts/NexaText-Trial-Heavy.ttf")
keyboard bounds(6, 554, 785, 96) channel("keyboard1") mouseOverKeyColour(255, 173, 67, 106) keySeparatorColour(0, 0, 0, 19)
image bounds(26, 54, 409, 90) channel("logo"), file("ui/logo.png")
label channel("version"), bounds(206, 114, 138, 23) text("Alpha 0.4.0"), fontSize(14) fontColour(206,104,171, 255)
infobutton file("ui/changelog.txt") bounds(216, 158, 114, 19) channel("4info"), text("Changelog alpha ver.") , fontColour:1(206,104,171,  255) colour:0(206,104,171,  255) 
infobutton file("https://drive.google.com/file/d/1Jzf3I743dgxwhbebXxAlHxj2KeL7IyFC/view?usp=sharing") bounds(138, 158, 74, 19) channel("manual"), text("Manual") , fontColour:1(206,104,171,  255) colour:0(206,104,171, 255) 

;testo


;label channel("heading"), text("OSCenità ⎍ quadra"), fontColour(255, 255, 255, 255) bounds(244, 24, 303, 26)



;preset
groupbox bounds(462, 16, 316, 183), text("PRESETS") channel("presetbox") , fontColour(53, 55, 52, 255) outlineColour(209, 204, 201, 255) colour(232, 226, 226, 255)
combobox bounds(477, 42, 226, 25), populate("*.snaps"), channelType("string") channel("presetchoose") value("1") colour(53, 55, 52, 255) text("Default", "Minecraft Keys")
filebutton bounds(710, 42, 25, 25), channel("salva") populate("*.snaps", "Presets"), mode("named preset"),  colour:0(53, 55, 52, 255) imgFile("off", "ui/save.png") imgFile("on", "ui/save.png") text(" ", "Save")
filebutton bounds(738, 42, 25, 25), channel("elimina") populate("*.snaps", "Presets"), mode("remove preset")   colour:0(53, 55, 52, 255) imgFile("off", "ui/delete.png") imgFile("on", "ui/delete.png") text(" ", "Remove")
texteditor bounds(548, 106, 210, 25) channel("autoreText"), mode("named preset")
texteditor bounds(548, 134, 210, 25) channel("infoText"), mode("named preset"), text("Press ENTER to save text")

label channel("autorelabel"), bounds(476, 106, 68, 25) text("Author:"),  fontSize(10) fontColour(53, 55, 52, 255) align("right") 
label channel("infolabel"), bounds(476, 134, 68, 25) text("Info:"),   fontSize(10) fontColour(53, 55, 52, 255) align("right")
;label channel("generelabel"), bounds(472, 132, 76, 25) text("Category:"),   fontSize(10) fontColour(53, 55, 52, 255) align("right")
;listbox bounds(552, 133, 210, 51) align("left"), channelType("typepreset"), highlightColour(206,104,171), items("Lead", "Pad", "item3", "item4"), fontSize(12)  colour(255, 255, 255), fontColour(53, 55, 52)

   
;forma d'onda
groupbox bounds(20, 212, 430, 203), text("OSCILLATOR BANK") channel("osc1box") colour(232, 226, 226, 255) fontColour(53, 55, 52, 255) outlineColour(209, 204, 201, 255) 

;label channel("osc1label"), bounds(34, 248, 68, 27) text("OSC-1"), fontColour(0, 0, 0, 255)  fontSize(12) fontColour(0, 0, 0, 255) align("left")
;label channel("osc2label"), bounds(34, 276, 68, 27) text("OSC-2"), fontColour(0, 0, 0, 255)  fontSize(12) fontColour(0, 0, 0, 255) align("left")
;label channel("osc3label"), bounds(34, 304, 68, 27) text("OSC-3"), fontColour(0, 0, 0, 255)  fontSize(12) fontColour(0, 0, 0, 255) align("left")
image bounds(46, 246, 75, 55) channel("uiwave1"), file("ui/uiwave1.png")
image bounds(196, 237, 75, 67) channel("uiwave2"), file("ui/uiwave23.png")
image bounds(344, 237, 75, 67) channel("uiwave3"), file("ui/uiwave23.png")
label channel("osc1label"), bounds(58, 388, 50, 23) text("OSC-1"), fontColour(66,68,65, 255)  fontSize(12)
label channel("osc2label"), bounds(208, 388, 50, 23) text("OSC-2"), fontColour(66,68,65, 255)  fontSize(12)
label channel("osc3lab"), bounds(356, 388, 50, 23) text("OSC-3"), fontColour(66, 68, 65, 255)  fontSize(12) 


rslider bounds(46, 246, 75, 55) channel("osc1"),  range(1, 4, 1, 1, 1), trackerColour(210, 93, 120, 255) outlineColour(145,141,141, 255) markerColour(210, 93, 120, 255) popupText("OSC-1 Waveform")  
rslider bounds(196, 248, 75, 55) channel("osc2"), range(1, 3, 1, 1, 1), trackerColour(210, 93, 120, 255) outlineColour(145,141,141, 255) markerColour(210, 93, 120, 255) popupText("OSC-2 Waveform")
rslider bounds(344, 248, 75, 55) channel("osc3"), range(1, 3, 1, 1, 1),  trackerColour(210, 93, 120, 255) outlineColour(145, 141, 141, 255) markerColour(210, 93, 120, 255) popupText("OSC-3 Waveform")
rslider bounds(58, 304, 52, 45) channel("OSC-1 Gain"), range(0, 1, 1, 0.5, 0.0001), trackerColour(210, 93, 120, 255) text("Gain") textColour(66, 68, 65, 255) outlineColour(145, 141, 141, 255) markerColour(66, 68, 65, 255) fontColour(19, 14, 14, 255)
rslider bounds(208, 306, 52, 45) channel("OSC-2 Gain"), range(0, 1, 0, 0.5, 0.0001), trackerColour(210, 93, 120, 255) text("Gain") textColour(66, 68, 65, 255) outlineColour(145, 141, 141, 255) markerColour(66, 68, 65, 255) 
rslider bounds(355, 306, 52, 45) channel("OSC-3 Gain"), range(0, 1, 0, 0.5, 0.0001), trackerColour(210, 93, 120, 255) text("Gain") textColour(66, 68, 65, 255) outlineColour(145, 141, 141, 255) markerColour(66, 68, 65, 255)

combobox bounds(62, 360, 43, 27) channel("osc1ott"), colour(210, 93, 120, 255) text("0", "-", "+") popupText("OSC-1 Octave")
combobox bounds(212, 360, 43, 27) channel("osc2ott"), colour(210, 93, 120, 255) text("0", "-", "+") popupText("OSC-2 Octave")
combobox bounds(360, 360, 43, 27) channel("osc3ott"), colour(210, 93, 120, 255) text("0", "-", "+") popupText("OSC-3 Octave")



;filtro lowpass
groupbox bounds(462, 428, 141, 112), text("LP FILTER") channel("lpbox") colour(232, 226, 226, 255) fontColour(53,55,52) outlineColour(209,204,201, 255)  
rslider bounds(476, 464, 50, 58), channel("lpfiltro"), range(0, 22000, 22000, 1, 0.01), text("Cutoff"), trackerColour(117, 174, 133, 255) textColour(66, 68, 65, 255) outlineColour(145,141,141, 255) markerColour(117, 174, 133, 255) 
rslider bounds(534, 464, 54, 58), channel("lpres"), range(0, 1, 0, 1, 0.01), text("Resonance"), trackerColour(117, 174, 133, 255) textColour(66, 68, 65, 255) outlineColour(145,141,141, 255) markerColour(117, 174, 133, 255) 


;custom sine

groupbox bounds(614, 428, 164, 112), text("CUSTOM HARMONICS") channel("harmbox") colour(232, 226, 226, 255) fontColour(53,55,52, 255) outlineColour(209,204,201, 255)  
vslider bounds(616, 458, 30, 75), channel("harm1"), range(0, 1, 1, 1, 0.01), textColour(66, 68, 65, 255), trackerColour(161, 118, 128, 255) outlineColour(145,141,141, 255
vslider bounds(648, 458, 30, 75), channel("harm2"), range(0, 1, 0, 1, 0.01), textColour(66, 68, 65, 255), trackerColour(161, 118, 128, 255) outlineColour(145,141,141, 255
vslider bounds(680, 458, 30, 75), channel("harm3"), range(0, 1, 0, 1, 0.01), textColour(66, 68, 65, 255), trackerColour(161, 118, 128, 255) outlineColour(145,141,141, 255
vslider bounds(712, 458, 30, 75), channel("harm4"), range(0, 1, 0, 1, 0.01), textColour(66, 68, 65, 255), trackerColour(161, 118, 128, 255) outlineColour(145,141,141, 255
vslider bounds(744, 458, 30, 75), channel("harm5"), range(0, 1, 0, 1, 0.01), textColour(66, 68, 65, 255), trackerColour(161, 118, 128, 255) outlineColour(145,141,141, 255


;adsr
groupbox bounds(462, 212, 316, 203), text("CONTROLLERS") channel("controlbox") colour(232, 226, 226, 255) fontColour(53,55,52, 255) outlineColour(209,204,201, 255) 
rslider bounds(504, 262, 60, 60), channel("att"), range(0.001, 1, 0.01, 1, 0.01), text("Attack") trackerColour(222, 157, 93, 255) textColour(66, 68, 65, 255) outlineColour(145,141,141, 255) markerColour(222, 157, 93, 255)
rslider bounds(562, 262, 60, 60), channel("dec"), range(0, 1, 0.5, 1, 0.01), text("Decay") trackerColour(222, 157, 93, 255) textColour(66, 68, 65, 255) outlineColour(145,141,141, 255) markerColour(222, 157, 93, 255)
rslider bounds(618, 262, 60, 60), channel("sus"), range(0, 1, 0.5, 1, 0.01), text("Sustain") trackerColour(222, 157, 93, 255) colour(255, 255, 255, 255) textColour(66, 68, 65, 255) outlineColour(145,141,141, 255) markerColour(222, 157, 93, 255)
rslider bounds(676, 262, 60, 60), channel("rel"), range(0, 1, 0.25, 1, 0.01), text("Release") trackerColour(222, 157, 93, 255) textColour(66, 68, 65, 255) outlineColour(145,141,141, 255) markerColour(222, 157, 93, 255)
;stereo
checkbox bounds(640, 356, 72, 26) channel("stereo"),fontColour:0(66, 68, 65, 255), fontColour:1(222, 157, 93, 255) colour:1(222, 157, 93, 255) text("Stereo") 
rslider bounds(536, 340, 56, 56), channel("detune"), range(0, 20, 0, 1, 0.01), text("Detune"), trackerColour(222, 157, 93, 255) textColour(66, 68, 65, 255) outlineColour(145, 141, 141, 255) markerColour(222, 157, 93, 255) 





;pink noise
groupbox bounds(260, 428, 190, 112), text("NOISE") channel("pinkbox") colour(232, 226, 226, 255) fontColour(53,55,52) outlineColour(209,204,201, 255)  
checkbox bounds(282, 478, 74, 26) channel("pink"), fontColour:0(66, 68, 65, 255), fontColour:1(223, 162, 198, 255) colour:1(223, 162, 198, 255) text("On/Off") 
rslider bounds(370, 462, 50, 60), channel("pinkquanto"), range(0, 0.001, 0, 1, 1e-05), textColour(66, 68, 65, 255), text("Gain")  trackerColour(223, 162, 198, 255) outlineColour(145,141,141, 255) markerColour(223, 162, 198, 255)


;riverbero
groupbox bounds(20, 428, 229, 112), text("REVERB") channel("revbox") colour(232, 226, 226, 255) fontColour(53,55,52) outlineColour(209,204,201, 255)  
rslider bounds(48, 462, 50, 60), channel("size"), range(0, 1, 0.5, 1, 0.001), text("Stanza"), colour(255, 255, 255, 255), textColour(66, 68, 65, 255) trackerColour(117, 150, 171, 255) outlineColour(145,141,141, 255) markerColour(117, 150, 171, 255)
rslider bounds(110, 462, 50, 60), channel("fco"), range(1, 22000, 22000, 1, 0.001), text("Cutoff"), colour(255, 255, 255, 255),textColour(66, 68, 65, 255) trackerColour(117, 150, 171, 255) outlineColour(145,141,141, 255) markerColour(117, 150, 171, 255)
rslider bounds(172, 462, 50, 60), channel("rvbquanto"), range(0, 1, 0, 1, 0.001), text("Dry/Wet"), , fontColour(0, 0, 0, 255) textColour(66, 68, 65, 255) colour(255, 255, 255, 255) trackerColour(117, 150, 171, 255) outlineColour(145,141,141, 255) markerColour(117, 150, 171, 255)


</Cabbage>

<CsoundSynthesizer>
    <CsOptions>
        -n -d -+rtmidi=NULL -M0 -m0d --midi-key-cps=4 --midi-velocity-amp=5 --displays -odac
    </CsOptions>

    <CsInstruments>
        ksmps = 32
        nchnls = 2
        0dbfs = 10 
        gaRvbSend = 0
        
        instr 1
            
        ; ---- PARAMETRI
            ;Parametri: ADSR
            giAtt cabbageGetValue "att"
            giDec cabbageGetValue "dec"
            giSus cabbageGetValue "sus"
            giRel cabbageGetValue "rel"
            
            
           
            ;Parametri: Stereo
            kStereo cabbageGetValue "stereo"
            kDetune cabbageGetValue "detune"
            
            ;Parametri: OSC, ottave             
            kOsc1Ott = cabbageGetValue:i("osc1ott")
            if kOsc1Ott == 3 then
                kOsc1Ott = 0.5
            endif
            kOsc2Ott = cabbageGetValue:i("osc2ott")
            if kOsc2Ott == 3 then
                kOsc2Ott = 0.5
            endif
            kOsc3Ott = cabbageGetValue:i("osc3ott")
            if kOsc3Ott == 3 then
                kOsc3Ott = 0.5
            endif
            
            ;Parametri: OSC, gain   
            kOsc1Gain cabbageGetValue "OSC-1 Gain"
            kOsc2Gain cabbageGetValue "OSC-2 Gain"
            kOsc3Gain cabbageGetValue "OSC-3 Gain"
            
          
            ;Parametri: LPFiltro
            kFiltro chnget "lpfiltro"
            kFiltroRes chnget "lpres"
            
            ;Parametri: Selettore onda
            giOnda1 cabbageGetValue "osc1"
            giOnda2 cabbageGetValue "osc2"
            giOnda3 cabbageGetValue "osc3"
            
            ;Parametri: Pink noise
            kPinkNoise cabbageGetValue "pink"
            kPinkNoiseAmount cabbageGetValue "pinkquanto"
            
            ;Parametri: Riverbero
            gkRvbSendAmt cabbageGetValue "rvbquanto"
            gkStanza cabbageGetValue "size"
            gkCo cabbageGetValue "fco"
            
            ;Parametri: Sub-Bass
            

            ;Parametri: Custom
            kCustom1 cabbageGetValue "harm1"
            kCustom2 cabbageGetValue "harm2"
            kCustom3 cabbageGetValue "harm3"
            kCustom4 cabbageGetValue "harm4"
            kCustom5 cabbageGetValue "harm5"
                        
        ; ---- INPUT
            gkamp = p5
            gkfreq = p4
            gkfreqDet = gkfreq
            
            
        ; ---- OSCILLATORI
            ;Detuning R, se Stereo attivo
            if kStereo = 1 then
                gkfreqDet = gkfreq + kDetune
            else
                gkfreq = gkfreq
            endif
           
            ;OSC 1 --- selettore Onda
            if giOnda1 == 1 then         ;Sinusoide
                aOsc1L oscili gkamp, gkfreq/kOsc1Ott, 1
                aOsc1R oscili gkamp, gkfreqDet/kOsc1Ott, 1
            elseif giOnda1 == 2 then     ;Quadra
                aOsc1L vco2 gkamp, gkfreq/kOsc1Ott, 10
                aOsc1R vco2 gkamp, gkfreqDet/kOsc1Ott, 10
            elseif giOnda1 == 3 then     ;Saw
                aOsc1L vco2 gkamp, gkfreq/kOsc1Ott, 8
                aOsc1R vco2 gkamp, gkfreqDet/kOsc1Ott, 8
            elseif giOnda1 == 4 then     ;Custom ftgen
                aOsc1L oscili gkamp, gkfreq/kOsc1Ott, 2
                aOsc1R oscili gkamp, gkfreqDet/kOsc1Ott, 2
                kAIUTO changed kCustom1, kCustom2, kCustom3, kCustom4, kCustom5
                if kAIUTO == 1 then     
                     event "i", 2, 0, .01, kCustom1, kCustom2, kCustom3, kCustom4, kCustom5
                     cabbageSet kAIUTO, "prova", "file", "ui/provola2.png"
                endif
            endif
            ;Filtro Osc1
            aOsc1Llp moogladder aOsc1L, kFiltro, kFiltroRes
            aOsc1Rlp moogladder aOsc1R, kFiltro, kFiltroRes
            aOsc1Llp = aOsc1Llp*kOsc1Gain
            aOsc1Rlp = aOsc1Rlp*kOsc1Gain
            
            
            ;OSC 2 --- selettore Onda
           
            if giOnda2 == 1 then         ;Sinusoide
                aOsc2L oscili gkamp, gkfreq/kOsc2Ott, 1
                aOsc2R oscili gkamp, gkfreqDet/kOsc2Ott, 1
            elseif giOnda2 == 2 then     ;Quadra
                aOsc2L vco2 gkamp, gkfreq/kOsc2Ott, 10
                aOsc2R vco2 gkamp, gkfreqDet/kOsc2Ott, 10
            elseif giOnda2 == 3 then     ;Saw
                aOsc2L vco2 gkamp, gkfreq/kOsc2Ott, 8
                aOsc2R vco2 gkamp, gkfreqDet/kOsc2Ott, 8
            endif
            ;Filtro Osc2
            aOsc2Llp moogladder aOsc2L, kFiltro, kFiltroRes
            aOsc2Rlp moogladder aOsc2R, kFiltro, kFiltroRes
            aOsc2Llp = aOsc2Llp*kOsc2Gain
            aOsc2Rlp = aOsc2Rlp*kOsc2Gain
            
            
            ;OSC 3 --- selettore Onda
            
            if giOnda3 == 1 then         ;Sinusoide
                aOsc3L oscili gkamp, gkfreq/kOsc3Ott, 1
                aOsc3R oscili gkamp, gkfreqDet/kOsc3Ott, 1
            elseif giOnda3 == 2 then     ;Quadra
                aOsc3L vco2 gkamp, gkfreq/kOsc3Ott, 10
                aOsc3R vco2 gkamp, gkfreqDet/kOsc3Ott, 10
            elseif giOnda3 == 3 then     ;Saw
                aOsc3L vco2 gkamp, gkfreq/kOsc3Ott, 8
                aOsc3R vco2 gkamp, gkfreqDet/kOsc3Ott, 8
            endif
            ;Filtro Osc3
            aOsc3Llp moogladder aOsc3L, kFiltro, kFiltroRes
            aOsc3Rlp moogladder aOsc3R, kFiltro, kFiltroRes
            aOsc3Llp = aOsc3Llp*kOsc3Gain
            aOsc3Rlp = aOsc3Rlp*kOsc3Gain
              
            



            
        ; ---- ADSR
            gaAdsr madsr giAtt, giDec, giSus, giRel
            gaOutL = (aOsc1Llp+aOsc2Llp+aOsc3Llp) * gaAdsr
            gaOutR = (aOsc1Rlp+aOsc2Rlp+aOsc3Rlp) * gaAdsr
         
            
            ;send Riverbero
            gaRvbSend = gaRvbSend + (gaOutL * gkRvbSendAmt)
            
        ; ---- PINK NOISE
            if kPinkNoise == 1 then
                aPink pinkish 1
                aPink = aPink*gaAdsr
                outs (aPink*kPinkNoiseAmount)*p4, (aPink*kPinkNoiseAmount)*p4
            endif
            
        ; ---- AUDIO OUT
            outs gaOutL, gaOutR
        endin
        
        instr 2
            iCustom ftgen 2, 0, 16384, 10, p4, p5, p6, p7, p8
        endin
        
        ; --- RIVERBERO
        instr 3
            ;riverbero
            aRvbL, aRvbR reverbsc gaRvbSend, gaRvbSend, gkStanza, gkCo
            
            ;OUT del riverbero
            outs aRvbL, aRvbR
            gaRvbSend = 0
        endin

        
    </CsInstruments>

    <CsScore> 
        f1 0 16384 10 1
        f2 0 16384 10 1                                        
        ;f2 0 16384	10	1 0.5 0.333 0.25 0.2 0.1667 0.1429 0.125 0.111 0.1
        ;f3 0 16384	10	1 0 0.333 0 0.2 0 0.1429 0 0.111 0
        i 3 0 z
        
        
        ;causes Csound to run for about 7000 years...
        f0 z
    </CsScore>
    
</CsoundSynthesizer>
