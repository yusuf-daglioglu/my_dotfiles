# VSCODE CONFIGS

## CONFIG DIR

- For VSCodium:

  $HOME/.config/VSCodium

- For VSCode:

  $HOME/.config/Code

- For Flatpak VSCodium

  $HOME/.var/app/com.vscodium.codium

## VSCODE PROFILE

### PROFILE DIR

the default profile can not be removed and it's directory path is different then custom ones. Example:

Each custom profile has it's own files here (100001 is the ID of custom profile):

> /User/profiles/100001

The default profile is on it's parent folder:

> /User

### MY CONFIGS

"profile1.code-profile" file can be imported via UI. It includes:

- disabled built-in extension list (because it's exported from VSCodium it may not disable all extensions of VSCode)
- settings.json
- Note: Other settings (like UI button visibility) did not exported (in case any new VSCode feature may not conflict with my configs)

### DEFAULT THEME
"Default theme" is bult-in theme-extension (with id: vscode.theme-defaults) and it can be disabled. But if it's disabled then syntax-highlingting features may not work.

## PROFILE DEFAULT
Sometimes VSCode opens itself with default profile (especially when unexpected close of VSCode). To change this behavior, below config should be set from settings manually:

> window.newWindowProfile

