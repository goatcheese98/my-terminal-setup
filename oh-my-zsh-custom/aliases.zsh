# Aliases for 'cat' replacement with 'bat'
alias cat='bat --paging=never' # Use bat for all cat commands, disable pager
alias batl='bat --line-range :50' # View first 50 lines with bat
alias batgrep='bat --line-range "$(grep -n -m 1 "$1" "$2" | cut -d: -f1),+20"' # Example: batgrep "searchterm" filename

# Aliases for 'ls' replacement with 'lsd' or 'eza'

# Option A: Use eza (Recommended, newer, more features)
alias ls='eza --icons' # Enable icons for ls
alias ll='eza -la --icons' # Long list format with icons, hidden files
alias la='eza -a --icons' # All files with icons

# Option B: Use lsd (If you prefer lsd's specific look)
# alias ls='lsd --icons'
# alias ll='lsd -la --icons'
# alias la='lsd -a --icons'

# Common options for both eza and lsd you might want:
# --long: (already in ll) Detailed view
# --header: Show header row
# --git: Show git status (eza does this well)
# --tree: Show directory as a tree (eza is 'eza -T')
# --color=always: Force colors even when pipeds
