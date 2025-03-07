# Firefox user-js
"__generated_personal_user.js__" is the config file which can be use on Firefox.

It based on arkenfox's user.js. The generator (shell script) filters some configs which breaks most of web pages which I visit them daily.

You can inject the configs to your Android via "javascript_for_execute_js_on_android.js" file.

# Test
You can test your browser from: https://github.com/arkenfox/user.js/wiki/Appendix-B-Test-Sites-%5BFingerprinting%5D

Other online utilities for test web browser: https://github.com/arkenfox/user.js/wiki/Appendix-A-Test-Sites

# Why I don't use LibreWolf or Mullvad browser?
I use Mullvad as daily browser.

They are both good. but Firefox has those advantages:
- Firefox is or can be installed everywhere (because its market share) (even on company machine). Therefore I can use my custom settings anywhere.
- If any web page does not work, I can edit arkenfox on the fly. But with LibreWolf or Mullvad this case is more difficult because I can not predict which settings are changed compared to default-Mozilla-build (I should read the documentation of LibreWolf or Mullvad).
- Firefox has Android build too. arkenfox also works there. with same "user.js" I also can use Firefox on Android.

# privacy.resistFingerprinting (RFP) VS privacy.fingerprintingProtection (FPP)
RFP is more agresive then FPP.

# reset all settings (injected "user.js" and manuel changed UI settings) of Firefox without deleting cookies and extensions
close Firefox. delete "pref.js" file inside profile directory.
