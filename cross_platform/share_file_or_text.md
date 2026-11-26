
# SHARE FILE OR TEXT

| name                            | recommended by privacyguides | sync only | file share | text share | android | desktop  | browser app | LAN share (without internet) | share over internet |
|---------------------------------|------------------------------|-----------|------------|------------|---------|----------|-------------|------------------------------|---------------------|
| `OnionShare`                    | +                            | +         | +          | -          | -       | +        | -           | -                            | +                   |
| `Send (old-name: Firefox Send)` | +                            | -         | +          | -          | -       | -        | +           | -                            | +                   |
| `LocalSend`                     | -                            | +         | +          | +          | +       | +        | +           | +                            | -                   |
| `dufs` (`Webdav` via web page)  | -                            | +         | +          | -          | -       | +        | +           | +                            | -                   |
| `SimpleX`                       | +                            | -         | +          | +          | +       | +        | -           | -                            | +                   |
| `syncthing`                     | +                            | +         | +          | -          | +       | +        | -           | +                            | +                   |
| `element` (`matrix`)            | +                            | -         | +          | +          | +       | +        | +           | -                            | +                   |
| `pairdrop`                      | -                            | +         | +          | +          | +       | -        | +           | +                            | +                   |
| `snapdrop` (don't use it)       | -                            | +         | +          | +          | +       | -        | +           | +                            | -                   |
| `https://cryptpad.fr/drive`     | +                            | -         | +          | +          | -       | -        | +           | -                            | +                   |
| `samba`  (`smb` protocol)       | -                            | +         | +          | -          | -       | `note-1` | -           | +                            | -                   |

`note-1`: 

`smb` is supported default on all versions of:
- `MS Windows`
- `Fedora` file manager
- `MacOS`

To share some files from Ubuntu run script: [./../linux/share_file_via_samba/run.sh](./../linux/share_file_via_samba/run.sh)

Other notes:

- Do not use `SnapDrop`. It owned by a company.

- `Send (old-name: Firefox Send)` public instances: <https://github.com/timvisee/send-instances?tab=readme-ov-file#instances>

- Use `SimpleX` as note taking app. because it creates separate users for mobile and desktop. so if one of them corrupts, you can still use other device as backup.

## Syncthing installation notes

- for `Syncthing` do not use `https://github.com/researchxxl/syncthing-android` because it changed repository. I dont know what is happening.

- use `Syncthing` inside `termux`. it works. it also opens automatically the web browser from command line.

- before run `Syncthing` from `termux`, run `termux-setup-storage` command inside `termux`. file permissions will be asked.

## Microsoft Word style document

- <https://cryptpad.org/instances/>

  - without login (login also does not require email)
  - direct edit via URL (no storage/directory configuration needed)
  - multiple users can edit the file at the same time
  - works with hardened Firefox
