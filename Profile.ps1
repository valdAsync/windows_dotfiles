Invoke-Expression (&starship init powershell)

function My-Func {
    param(
        [string]$Path = "." # path for ls
    )

    eza.exe -lab --group-directories-first --git --icons $Path
}

function back {
    cd ..
}



New-Alias -Name '..' -Value back

New-Alias -Name 'll' -Value My-Func
