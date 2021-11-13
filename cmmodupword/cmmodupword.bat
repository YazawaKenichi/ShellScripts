@echo off

setlocal enabledelayedexpansion

rem echo selt cm=%~d0%~p0cm3d2
mkdir %~d0%~p0tmp
set cm=%~d0%~p0cm3d2_
echo.
if defined cm (
    echo cm3d2_*
    for /l %%z in (1, 1, 500) do (
        set str=!cm!%%z
        rem echo  = !str!
        call :mv !str!
    )
    echo cm3d2_b_*
    set cm=%cm%b_
    for /l %%z in (1, 1, 500) do (
        set str=!cm!%%z
        rem echo  = !str!
        call :mv !str!
    )
    echo cm3d2_c_*
    set cm=%cm%c_
    for /l %%z in (1, 1, 500) do (
        set str=!cm!%%z
        rem echo  = !str!
        call :mv !str!
    )
    echo cm3d2_d_*
    set cm=%cm%d_
    for /l %%z in (1, 1, 500) do (
        set str=!cm!%%z
        rem echo  = !str!
        call :mv !str!
    )
    echo cm3d2_e_*
    set cm=%cm%e_
    for /l %%z in (1, 1, 500) do (
        set str=!cm!%%z
        rem echo  = !str!
        call :mv !str!
    )
    echo cm3d2_f_*
    set cm=%cm%f_
    for /l %%z in (1, 1, 500) do (
        set str=!cm!%%z
        rem echo  = !str!
        call :mv !str!
    )
    echo cm3d2_g_*
    set cm=%cm%g_
    for /l %%z in (1, 1, 500) do (
        set str=!cm!%%z
        rem echo  = !str!
        call :mv !str!
    )
    echo cm3d2_h_*
    set cm=%cm%h_
    for /l %%z in (1, 1, 500) do (
        set str=!cm!%%z
        rem echo  = !str!
        call :mv !str!
    )
    echo cm3d2_i_*
    set cm=%cm%i_
    for /l %%z in (1, 1, 500) do (
        set str=!cm!%%z
        rem echo  = !str!
        call :mv !str!
    )
)

exit /b

:mv
rem echo in mv
if exist %1 (
    rem echo %1 is exist
    cd %1
    move * ../tmp
    popd
    rem rmdir /s "%1"
)

endlocal

