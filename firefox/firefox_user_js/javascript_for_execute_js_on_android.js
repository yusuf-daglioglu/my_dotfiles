
// Debug android about:config page:
// - android adb usb debugging must be enabled
// - android firefox --> settings --> advanced --> remote debugging via usb
// - android firefox --> about:config
// - desktop firefox --> about:debugging#/setup --> Enable USB devices 
// - desktop firefox --> about:debugging#/setup --> Refresh devices and click "Connect"
// - android firefox --> popup will show up --> allow
// - desktop firefox --> about:debugging#/setup --> choose device --> choose tab and click "Inspect" 

var user_pref = function(pref, val){
  try{
    if(typeof val == "string"){
         Services.prefs.setStringPref(pref, val);      
    }
    else if(typeof val == "number"){
         Services.prefs.setIntPref(pref, val);      
    }
    else if(typeof val == "boolean"){
         Services.prefs.setBoolPref(pref, val);      
    }
  } catch(e){
    console.log("pref:" + pref + " val:" + val + " e:" + e);
  }
}

user_pref("browser.startup.homepage", "about:blank");

// add here user.js file content

// before you paste the content here,
// don't for get to set "false" below option:
// user_pref("devtools.debugger.remote-enabled", false);
// otherwise it will throw exception on runtime (when javascript is executing).
