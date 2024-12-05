define-command sway-kak-vertical -docstring "Create a new window below" %{
  sway-terminal-vertical kak -c %val{session} -e "execute-keys :buffer <space> %val{buffile} <ret> :select <space> %val{selection_desc} <ret>" 
}

define-command sway-kak-horizontal -docstring "Create a new window right" %{
  sway-terminal-horizontal kak -c %val{session} -e "execute-keys :buffer <space> %val{buffile} <ret> :select <space> %val{selection_desc} <ret>" 
}

define-command sway-kak-tab -docstring "Create a new window right" %{
  sway-terminal-tab kak -c %val{session} -e "execute-keys :buffer <space> %val{buffile} <ret> :select <space> %val{selection_desc} <ret>" 
}

define-command sway-kak-window -docstring "Create a new window right" %{
  sway-terminal-window kak -c %val{session} -e "execute-keys :buffer <space> %val{buffile} <ret> :select <space> %val{selection_desc} <ret>" 
}

alias global new sway-kak-window

declare-user-mode sway
map global sway h :sway-kak-horizontal<ret> -docstring '← new horizontal window'
map global sway v :sway-kak-vertical<ret> -docstring '→ new vertical window'
map global sway w :sway-kak-window<ret> -docstring '↑ new window in current layout'
map global sway t :sway-kak-tab<ret> -docstring '↓ new tabbed window'
