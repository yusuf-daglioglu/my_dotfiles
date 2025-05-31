
- Disable X11 and X11-fallback sockets from Flatseal.

- Always prefer Wayland supported desktop apps.

- To check if an app is running X11:
  - open related app
  - open terminal
  - run "xprop" command
  - mouse the move to related app.
  - if the icon of mouse is different, it means that app uses X11.