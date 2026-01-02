# GIMP OPERATIONS

`2.10.19` sürümü ile anlatılmıştır.

## terimler

- __toolbox__: ekranın sol tarafında, üst kısımda kalıyor. sadece simgeli button'lardan oluşan kısım.
- __tool options__: ekranın sol tarafında, alt kısımda kalıyor. kullanıcı tarafından herhangi bir tool seçildiğinde, sadece o tool'un ayarları için açılan kısım.

## hizalamayı kontrol edebilmek için grid göstergelerini aktif etme

- `view` (from main menu)
- `show grid`

Resim yakınlaştırılmayınca çizgiler görünmeyebilir. Fonksiyon bug'lı yanılgısı yaratmasın.

## var olan rengi seçme ve bu seçilen rengi herhangi bir araç (kalem gibi) için kullanma

- `tools` (from main menu)
- `color picker`
- resimden istenilen rengin bulunduğu nokta tıklanır.

Tıklandığında; `Toolbox`ın ortasında, `Tool Options` sekmesinin hemen üstündeki 2 kutucukta, seçtiğimiz renk gözükecektir. Artık kalem veya başka bir özelliğin button'una tıklandığında bu renk hala aktifliğini koruyacaktır.

## decrease quality

- `File` (from main menu)
- `export`
- `export` button
- `quality`

## editable format

XCF.

## siyah beyaz (or grayscale)

- `image` (from main menu)
- `mode`
- `grayscale`

## invert colors

röntgen filmi gibi bir gösterim sunar. bazen zor görünen bölgelerin belirgin olmasını sağlamaktadır.

- `color` (from main menu)
- `invert`

## add text

- `tools` (from main menu)
- `text`
- left click with mouse anywhere to image

## sağdaki nesneleri sola, soldakileri sağda gösterme

- `tools` (from main menu)
- `Transform Tools`
- `flip`
- left click with mouse anywhere to image

## resmi 180 ve 90 derece değiştirme (rotate image)

- `Image` (from main menu)
- `Transform`
- `Rotate 90° clockwise`

## resmi fare ile döndürme

yukarıda 180 ve 90 derece direk çevirmek için anlatılmıştı. istediğimiz derece çevirmek için ise:

- `tools` (from main menu)
- `Transform Tools`
- `rotate`
- artık fare ile resmi istediğimiz tarafa döndürebiliriz. döndürme işlemimiz bitince açılmış olan popup'tan "`rotate`" tuşuna bastığımızda işlem tamamlanacaktır.

Resmi döndürdüğümüzde bazı alanlar(resmin köşeleri) hiç renk atanmamış bölge olacaktır. resim gimp'ten png export edilirse; bu alanlar arka planı görünen formatta kaydedilir. eğer jpeg export edilirse bu alanlar beyaz olarak kaydedilir. eğer beyazlığın rengi değiştirmek istenirse tekrar gimp ile kaydedilen resmi açıp beyaz alanları farklı renge boyamak gerekir.

## selection

bölge seçebilmek için birçok farklı selection tool'dan yararlanabiliriz:

- `tools` (from main menu)
- `selection tools`
  - `Rectangle selection`: Dikdörtgen seçim
  - `Ellipse select`
  - `Free select`: Fare ile başlangıç ve bitişe kadar elle çizeceğimiz bölge seçilir.
  - `Fuzzy select`: algoritmik olarak tıklanan noktanın etrafındaki nesneyi otomatik seçmektedir.
  - `by color select`: tıkladığımız yerine etrafındaki aynı renkte olanları otomatik seçiyor
- mouse ile resimden seçim yapılır
- klavyeden "`enter`" tuşuna basılır
- klavyeden "`delete`" button'una basılır (veya `Edit` (from main menu) --> `Clear`)

## save only the selection as image (crop image)

remove selection'ın tersidir. dışta kalan kısım silinir.

- `tools` (from main menu)
- `Transform Tools`
- `Crop`
- Fare ile resimden dikdörtgen seçim yapılır.
- Klavyeden `Enter` tuşuna basıldığında seçilen kısım haricindeki kısımlar silinmiş olacaktır.

## kalem kullanımı

- `tools` (from main menu)
- `paint tools`
- `pencil`
- renk seçimi için

Kalem yerine fırça kullanılmamalıdır. ileride kalem ile işaretlenen yerin rengi değiştirilmek istendiğinde; fırçanın boyadığı yerlerin etrafı her zaman birleşik (bütünleşik) olmadığından, tüm renkler birden değiştirilememektedir.

Kalem ayarları:

- `renk`: ekranda sol tarafta açık olan toolbox'taki 2 renk yan yana olan kare kutucuktan seçim yapılır.
- `opacity` (transparanlık): ekranda sol tarafta `Tool options` sekmesindeki `Opacity` değerinin azaltılması ile yapılabilir.
- `Kalem ucu büyüklüğü`; ekranda sol tarafta `Tool options` sekmesindeki `size` değerinin azaltılması ile yapılabilir.

## resimde aynı renkte olan bir yerin rengini değiştirme

örneğin; kalemle çizilmiş yerlerin rengini değiştirmek için kullanılır.

- `tools` (from main menu)
- `paint tools`
- `Bucket fill`
- ekranda sol tarafta açık olan toolbox'taki 2 renk yan yana olan kare kutucuktan renk seçim yapılır.
- fare ile ekranda boyamak istediğimiz yere tıklanır.

## aydınlık değiştirme

- `colors` (from main menu)
- `Brightness-Contrast...`

## seçilen bölgeyi blur (bulanık) yapma

- `tools` (from main menu)
- `paint tools`
- `blue / sharpen`

ek seçenekler ekranın sol tarafındaki `tool options` sekmesinde:

- `size`
- "`rate`" ve "`force`" değerleri arttırıldıkça bulanıklaştırma oranı artar.
- `convolve type`:
  - "`blue`" seçili ise tıklanan yer bulanıklaştırılır.
  - "`sharpen`" ise tam tersi keskinleştirir.

## seçilen bölgedeki objeyi silme (remove object inside selection)

Bu fonksiyon için:

> flatpak install org.gimp.GIMP.Plugin.Resynthesizer

seçeneklerden en son versiyon seçilmeli.

bu metodun düzgün çalışacağı garanti değildir.

- "`Free Select`" ile ilgili objenin çevresi seçilir.(seçim seçenekler farklı başlıkta anlatılıyor)
- `filters` (from main menu)
- `enhance`
- `heal selection...`
- `OK`

Bu özellik bir eklentiye bağlı. Linux'ta plugin'lerin gömülü olduğu bir `AppImage` var. Onun içinde bu özellik yüklü geldi.

## resmi anime/çizgi film yapısında çizilmiş hale getirme (detayları yok etme)

- `select` tool'lar ile manipüle edeceğimi bölge seçilir (başka başlıkta anlatılıyor). eğer seçilmez ise tüm resimde manipülasyon olacaktır.
- `Filters` (from main menu)
- `Artistic`
- `Cartoon` (diğer seçenekleri de kurcalayabiliriz. bu menüde hep artistic seçenekler mevcut)
- değerlerle rastgele oynayabiliriz
- `OK` button

## resize

- `image` (from main menu)
- `scale image...`
- yeni değerler set edilir
- `scale` button

yeni değerlerin girildiği yerde bir tane zincir işareti vardır. yükseklik ve genişliğin değerleri oranlı olması isteniyor ise, yeni değerler girilmeden önce bu zincirin aktif olması gereklidir.

Eğer sosyal medya sitelerinde gibi profil fotoğraflarında yuvarlak şart ise, o zaman resim sadece "crop" edilmeli. yani resize yapılmamalıdır. Sosyal medya sitesindeki profil fotoğrafında çıkacak kısım tam ortalanmalı ve resim sonuçta kare olacak şekilde crop edilmelidir.

## add border like frame to whole image (add empty area right, left, bottom, and above)

- `filters` (from main menu)
- `decor`
- `add borders`
- choose color for the border
- set pixel size of the new area
- `OK` button
