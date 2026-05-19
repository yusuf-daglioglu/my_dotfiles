// I personally don't need this feature.
user_pref("dom.webnotifications.enabled", false);

// this feature is exist only on linux. if auto-copy enabled, firefox automatically copies text on every selection. I personally don't need this feature.
user_pref("clipboard.autocopy", false);

// language of interface of firefox. This is hidden (not visible) on about:config page.
user_pref("intl.locale.requested", "en-US");

// save article feature of firefox. I personally don't need this feature.
user_pref("extensions.pocket.enabled", false);

user_pref("browser.safebrowsing.downloads.enabled", false);

user_pref("browser.safebrowsing.malware.enabled", false);

user_pref("browser.safebrowsing.phishing.enabled", false);

// overrides "go previous page" via touch device swipe left.
user_pref("browser.gesture.swipe.left", "cmd_scrollLeft");

// overrides "go next page" via touch device swipe right.
user_pref("browser.gesture.swipe.right", "cmd_scrollRight");

// firefox suggest each favorite's domain on URL bar. this prevent this unused feature.
user_pref("browser.urlbar.autoFill", false);

// in some cases (short-timed or small-sized videos) firefox does not enable popup mode.
user_pref("media.videocontrols.picture-in-picture.video-toggle.always-show", true);

// large response are truncating by firefox. if its truncated there is no way to copy whole response as string. this config disables the automatic truncate feature.
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

// FPP is very simple then RFP.
user_pref("privacy.resistFingerprinting", true);
// enable it also on private browsing
user_pref("privacy.resistFingerprinting.pbmode", true);

// - letterboxing can be used without enabling RFP. there are independent.
// - letterboxing automatically calculates a rounded value per window.
// - there is no need to set "privacy.window.maxInnerWidth" if letterboxing enabled.
// - "privacy.window.maxInnerWidth" can be set optionally if letterboxing is disabled.
// - "privacy.window.maxInnerWidth" fakes the web pages the screen size. but the real screen is different so the page may break.
user_pref("privacy.resistFingerprinting.letterboxing", true);
