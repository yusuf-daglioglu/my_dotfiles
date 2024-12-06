// I personaly don't need this feature.
user_pref("dom.webnotifications.enabled", false); 

// this feature is exist only on linux. if autocopy enabled, firefox automatically copies text on every selection. I personaly don't need this feature.
user_pref("clipboard.autocopy", false); 

// language of interface of firefox. This is hidden (not visible) on about:config page.
user_pref("intl.locale.requested", "en-US"); 

// save article feature of firefox. I personaly don't need this feature.
user_pref("extensions.pocket.enabled", false); 

user_pref("browser.safebrowsing.downloads.enabled", false);

user_pref("browser.safebrowsing.malware.enabled", false);

user_pref("browser.safebrowsing.phishing.enabled", false);

user_pref("privacy.donottrackheader.enabled", true);

// overrides "go previous page" via touch device swipe left.
user_pref("browser.gesture.swipe.left", "cmd_scrollLeft"); 

// overrides "go next page" via touch device swipe right.
user_pref("browser.gesture.swipe.right", "cmd_scrollRight"); 

// firefox suggest each favorite's domain on URL bar. this prevent this unused feature.
user_pref("browser.urlbar.autoFill", false); 

// in some cases (short-timed or small-sized videos) firefox does not enable popup mode.
user_pref("media.videocontrols.picture-in-picture.video-toggle.always-show", true); 

// large reponse are truncating by firefox. if its truncated there is no way to copy whole response as string. this config disables the automatic trancate feature.
user_pref("devtools.netmonitor.responseBodyLimit", 0); 

// normally firefox has very tiny scrollbar. with this config it gets bigger. this config does not effect all div objects.
user_pref("widget.gtk.overlay-scrollbars.enabled", false); 

// Firefox Android -> Settings --> Search --> Address bar --> shortcuts
user_pref("browser.urlbar.suggest.topsites", false);

// Firefox desktop -> Settings --> Privacy & Security -> Passwords --> suggest Firefox relay email masks 
user_pref("signon.firefoxRelay.feature", "disabled");

// Firefox desktop -> Settings --> Privacy & Security -> Passwords --> suggest strong passwords 
user_pref("signon.generation.enabled", false);

// warn on close only when multiple tabs opened
user_pref("browser.tabs.warnOnClose", true);

// disable popup for translation.
// Firefox shows popup only the first time the browser open a different language web page.
// you can still translate web page triggering manually.
user_pref("browser.translations.automaticallyPopup", false);
