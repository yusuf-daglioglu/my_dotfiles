# REMOTE DESKTOP ALTERNATIVES

## SIGNAL

Signal messenger

## FROM WEB BROWSER (WITHOUT LOGIN)

https://meet.jit.si/

https://meet.element.io/ (it uses Jitsi on background. but the servers are independed from above link.)

https://talky.io/

https://p2p.mirotalk.com/

## WEB BROWSER (WITH FAKE ACCOUNT)
  
http://whereby.com

## SERVER IS NATIVE & CLIENT IS WEB BROWSER

- 1

  https://rustdesk.com/web (this is version 2 beta)

  v1-web-client is only available on PRO version. but v2 of web client is beta. they allow to use.

  supports android client via f-droid.

  use flatpak as client (even inside virtual machine).

- 2

  https://www.dwservice.net/

- 3

  TeamViewer (it has web client which be logged in via fake email)

  use the client inside virtual machine.

## OTHERS

you can join all belows via web browser without an account.

- zoom

- google hangouts

- microsoft teams (On Fedora-Gnome works only via Firefox Flatpak)

## RDP

Bunun için modem'de port forwarding yapmak şart. Eğer aynı LAN'da isek gerek yok tabi.

Gnome native olarak (eklentisiz ve programsız) RDP server açıyor. GUI ile şuradan yapılıyor:

Gnome settings --> system --> Remote desktop --> Burada 2 seçenek var:

- Desktop sharing

  o anda OS'a login olunmuş olması lazım.

- remote login

  login olmamış Linux user'ına da bağlanılabilir. Burada Gnome ayarlar kısmında username ve password istiyor. Bu bilgileri girdiğimizde, bize bağlanan client, Gnome login ekranını görüyor (user listesinin olduğu ekranı karşısında görecektir). Yani server makineyi sıfırdan açmış gibi ekran paylaşılacak client'a. Tabi burada artık client, ekrandaki user listesinden user'ı seçip, şifresinide doğru girmesi gerekecektir.

Clients for RDP: 

https://github.com/yusuf-daglioglu/tutorials/blob/master/tutorials/others.md#remote-desktop-softwares-and-protocols
