# REMOTE DESKTOP ALTERNATIVES

Platforms which not require account.

- 1

  Signal messenger

- 2

  https://p2p.mirotalk.com/

  direct share desktop from browser without login.

- 3

  Bunun için modem'de port forwarding yapmak şart. Eğer aynı LAN'da isek gerek yok tabi.

  Gnome native olarak (eklentisiz ve programsız) RDP server açıyor. GUI ile şuradan yapılıyor:

  Gnome settings --> system --> Remote desktop --> Burada 2 seçenek var:

  - Desktop sharing
  
    o anda OS'a login olunmuş olması lazım.

  - remote login
  
    login olmamış Linux user'ına da bağlanılabilir. Burada Gnome ayarlar kısmında username ve password istiyor. Bu bilgileri girdiğimizde, bize bağlanan client, Gnome login ekranını görüyor (user listesinin olduğu ekranı karşısında görecektir). Yani server makineyi sıfırdan açmış gibi ekran paylaşılacak client'a. Tabi burada artık client, ekrandaki user listesinden user'ı seçip, şifresinide doğru girmesi gerekecektir.

- 4

  http://whereby.com

  - you can create (or join) meeting with a fake email from web client.
  - it based on browser's desktop-share feature. Therefore you can see remote desktop but you can not control the mouse or keyboard.

- 5

  https://rustdesk.com/web

  web-client is only available on PRO version. but v2 of web client is beta. they allow to use.

  supports android client via f-droid.

  use flatpak as client (even inside virtual machine).

- 6

  TeamViewer

  use the client inside virtual machine

  or it has web client which you can login via temp email.

- 7

  https://www.dwservice.net/

  it has web client.

- 8

  those apps has web client and they are not require login/account (you can not create a meeting. you can only join.)

  they based on browser's desktop-share feature. Therefore you can see remote desktop but you can not control the mouse or keyboard.

  - zoom

  - google hangouts

  - microsoft teams

# Remmina
"Remmina" works only on Linux (via Flatpak or snap). It is a GUI client for RDP(Microsoft), Spice, SSH, VNC.