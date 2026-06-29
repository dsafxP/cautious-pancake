default: write

_deploy_custom VARIANT \
    nav_bg bg selection \
    fg muted \
    pink purple cyan green orange red \
    text subtext \
    border:
    sed \
        -e "s/@@CUST_NAV_BG@@/{{nav_bg}}/g" \
        -e "s/@@CUST_BG@@/{{bg}}/g" \
        -e "s/@@CUST_SELECTION@@/{{selection}}/g" \
        -e "s/@@CUST_FG@@/{{fg}}/g" \
        -e "s/@@CUST_MUTED@@/{{muted}}/g" \
        -e "s/@@CUST_PINK@@/{{pink}}/g" \
        -e "s/@@CUST_PURPLE@@/{{purple}}/g" \
        -e "s/@@CUST_CYAN@@/{{cyan}}/g" \
        -e "s/@@CUST_GREEN@@/{{green}}/g" \
        -e "s/@@CUST_ORANGE@@/{{orange}}/g" \
        -e "s/@@CUST_RED@@/{{red}}/g" \
        -e "s/@@CUST_TEXT@@/{{text}}/g" \
        -e "s/@@CUST_SUBTEXT@@/{{subtext}}/g" \
        -e "s/@@CUST_BORDER@@/{{border}}/g" \
        .eldritch-@@VARIANT@@.css > themes/eldritch-{{VARIANT}}.css

write:
    mkdir -p themes

    # Cthulhu palette
    just _deploy_custom "cthulhu" \
        "#454759" "#212337" "#323449" \
        "#ebfafa" "#7081d0" \
        "#f265b5" "#a48cf2" "#04d1f9" "#37f499" "#f7c67f" "#f16c75" \
        "#ebfafa" "#7081d0" \
        "#5b5c66"

    # Abyss palette
    just _deploy_custom "abyss" \
        "#353746" "#171928" "#252738" \
        "#d8e6e6" "#506299" \
        "#d154a1" "#8b75d9" "#0396b3" "#2dcc82" "#d4a666" "#cc5860" \
        "#ebfafa" "#7081d0" \
        "#474852"

    # Dusk palette
    just _deploy_custom "dusk" \
        "#d5d9db" "#f0f3f4" "#e2e6e8" \
        "#1e2029" "#5b73dc" \
        "#fb5bb6" "#8a69f7" "#8a69f7" "#38ff9f" "#ffaf4d" "#fb5b66" \
        "#1e2029" "#7081d0" \
        "#c9cbcd"
