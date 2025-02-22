
# EXPORT CONTACT WITHOUT NOTE AND PHOTO

- Import vcf file to gnome-contacts app.
- export it. it will remove the photos.
- to delete notes from exported file open vscode. and replace this with empty string:

```
^.*NOTE:.*$\n
```

# Delete gnome-contacts data
Gnome-contacts uses Evolution (mail app of Gnome) as contact storage. Delete Evolution data from $HOME/.local/share and restart Gnome desktop manager.