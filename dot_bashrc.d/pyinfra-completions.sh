# pyinfra Bash completions

if command -v pyinfra >/dev/null 2>&1; then
    eval "$(_PYINFRA_COMPLETE=bash_source pyinfra)"
fi
