# Homebrew Bash completions
if command -v brew >/dev/null 2>&1; then
    brew_prefix="$(brew --prefix)"

    if [[ -r "$brew_prefix/etc/profile.d/bash_completion.sh" ]]; then
        source "$brew_prefix/etc/profile.d/bash_completion.sh"
    elif [[ -d "$brew_prefix/etc/bash_completion.d" ]]; then
        for completion in "$brew_prefix"/etc/bash_completion.d/*; do
            [[ -r "$completion" ]] && source "$completion"
        done
        unset completion
    fi

    unset brew_prefix
fi
