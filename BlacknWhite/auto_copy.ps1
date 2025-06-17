function Copy-YASB {
    cp "$env:USERPROFILE\.config\yasb\*" .\YASB\
}

function Copy-Glaze {
    cp "$env:USERPROFILE\.glzr\glazewm\*" .\glazewm
}

Copy-Glaze
# Copy-YASB