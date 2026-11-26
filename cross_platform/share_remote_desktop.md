# SHARE REMOTE DESKTOP

Remote desktop alternatives (share desktop).

## 📌 FROM WEB BROWSER (WITHOUT LOGIN)

- <https://meet.jit.si/> (`Jitsi`) --> it requires login.

- <https://meet.element.io/> (it uses `Jitsi` on background. but the servers are independent from above link.)

- <https://talky.io/>

-  <https://p2p.mirotalk.com/>

## 📌 OTHERS

you can join all belows via `web browser` and `without an account`.

- `zoom`

- `google hangouts`

- `microsoft teams` (On Fedora-Gnome works only via `Firefox` `Flatpak`)

## 📌 RDP

Bunun için modem'de port forwarding yapmak şart. Eğer aynı `LAN`'da isek gerek yok tabi.

### 📌📌 Gnome (as server)

`Gnome` native olarak (eklentisiz ve programsız) `RDP` server açıyor. GUI ile şuradan yapılıyor:

`Gnome` settings --> `system` --> `Remote desktop` --> Burada 2 seçenek var:

- `Desktop sharing`

  o anda OS'a login olunmuş olması lazım.

- `remote login`

  login olmamış Linux user'ına da bağlanılabilir. Burada Gnome ayarlar kısmında username ve password istiyor. Bu bilgileri girdiğimizde, bize bağlanan client, Gnome login ekranını görüyor (user listesinin olduğu ekranı karşısında görecektir). Yani server makineyi sıfırdan açmış gibi ekran paylaşılacak client'a. Tabi burada artık client, ekrandaki user listesinden user'ı seçip, şifresini de doğru girmesi gerekecektir.

### 📌📌 Android (as server)

https://f-droid.org/packages/net.christianbeier.droidvnc_ng/

### 📌📌 Clients for RDP

https://github.com/yusuf-daglioglu/tutorials/blob/master/tutorials/others.md#-remote-desktop-softwares-and-protocols

### 📌📌 MS Windows (as server)

`MS Windows` 11 `HOME` does not include `RDP` server. It must be `PRO`.