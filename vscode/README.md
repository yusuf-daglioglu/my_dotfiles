# VSCODE CONFIGS

## CONFIG DIR

- For `VSCodium`:

  > $HOME/.config/VSCodium

- For `VSCode`:

  > $HOME/.config/Code

- For `Flatpak` `VSCodium`

  > $HOME/.var/app/com.vscodium.codium

## VSCODE PROFILE

### PROFILE DIR

the default profile can not be removed and it's directory path is different then custom ones. Example:

Each custom profile has it's own files here (`100001` is the ID of custom profile):

> /User/profiles/100001

The default profile is on it's parent folder:

> /User

### MY CONFIGS

> only_unused_extensions_disabled.code-profile

file can be imported via UI. The file contains:

- disabled built-in extension (it's exported from `VSCodium`. Therefore it may not disable all extensions of `VSCode`.)
- NOT INCLUDED: `settings.json` (use `profile_settings.json`)
- NOT INCLUDED: global-state (other settings like UI button visibility)

### DEFAULT THEME

`Default theme` is built-in theme-extension (with id: `vscode.theme-defaults`) and it can be disabled. But if it's disabled then syntax-highlighting features may not work.

## PROFILE DEFAULT

Sometimes `VSCode` opens itself with default profile (especially when unexpected close of `VSCode`). To change this behavior, below config should be set from settings manually:

> window.newWindowProfile
