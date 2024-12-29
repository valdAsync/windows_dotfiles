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

# Git Aliases

function gst {
    git status
}

function gaa {
    git add -A
}

function gc {
    git commit @args
}

function gcm {
    git checkout main
}

function gd {
    git diff
}

function gdc {
    git diff --cached
}

function co {
    git checkout @args
}

function up {
    git push
}

function upf {
    git push --force
}

function pu {
    git pull
}

function pur {
    git pull --rebase
}

function fe {
    git fetch
}

function re {
    git rebase
}

function glr {
    git l -30
}

Invoke-Expression (& { (zoxide init --cmd cd powershell | Out-String) })
