@loadbtm on
@Echo Off

rem Config:
        set SOUND_REPO=%BAT%\sounds


rem Gather possible sounds:
        set POSSIBLE_SOUNDS=%@expand["C:\BAT\sounds\*.wav"]




rem USAGE:
        iff "%1" == "" then
                echo.                                                                                                        
                set banner=        %ansi_color_bright_green%%star% %star2% %star3%  %ansi_color_bright_green%basic-sounds.bat %star3% %star2% %star1%%ansi_color_normal%
                echo %big_top%%banner%
                echo %big_bot%%banner%
                echo %big_off%
                echos %ansi_color_advice%USAGE: basic-sounds [
                for %tmp_snd in (%POSSIBLE_SOUNDS%) echos %@name[%tmp_snd] `|` ``
                echos %@ansi_move_left[3]
                echo ]  %ansi_erase_to_eol%``
                echo.
                echo %ansi_color_less_important% `>` Quickly plays WAV file in: %italics_on%%SOUND_REPO%%italics_off%
        endiff



rem Do it:
        set sound=%bat%\sounds\%1.wav
        if     exist "%sound%" call play-WAV-file.bat %2$ "%sound%" >nul
        if not exist "%sound%" echo %ANSI_COLOR_ERROR%*** %italics_on%%SOUND%%italics_off% does not exist! ***

