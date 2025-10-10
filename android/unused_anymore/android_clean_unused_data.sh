#!/bin/bash

___do_executables_exist() {
   for COMMAND in "$@"; do
      command -v "$COMMAND" >/dev/null 2>&1 || {
         ___print_screen "command does not exist: $COMMAND"
         return $CC_EXIT_CODE__COMMAND_NOT_FOUND
      }
   done
}

___do_executables_exist "adb" "sort" "sed" "read" "while" || exit 1

# this scripts takes about 2 minutes

# "-u" --> makes prints also unistalled apps (this is gonna need it in case of re-enable app in emergency cases.)
adb shell 'pm list packages -u' | sort | sed 's/^[^\.]\+\://' | while read -r packageid; do
   printf "%s\n" "-package: $packageid"

   if [ "$packageid" = 'org.mozilla.fennec_fdroid' ] || # this is the fork of mozilla-firefox. for user.js configs it shuld not be cleared.
      [ "$packageid" = 'nekox.messenger' ] || # telegram client
      [ "$packageid" = 'com.whatsapp' ] ||
      [ "$packageid" = 'org.dslul.openboard.inputmethod.latin' ] || # settings...
      [ "$packageid" = 'net.osmand.plus' ] || # downloaded maps
      [ "$packageid" = 'superfreeze.tool.android' ] || # freeze list
      [ "$packageid" = 'com.celzero.bravedns' ] || # rethink dns (network bloker)
      [ "$packageid" = 'fr.twentynine.keepon' ] ||
      [ "$packageid" = 'com.punksta.apps.volumecontrol' ] || # volume profiles
      [ "$packageid" = 'de.reimardoeffinger.quickdic' ] || # downloaded dictionaries
      [ "$packageid" = 'com.fsck.k9' ] || # email client
      [ "$packageid" = 'com.nutomic.syncthingandroid' ] || # sync app
      [ "$packageid" = 'com.simplemobiletools.calendar' ] || # settings...
      [ "$packageid" = 'com.asdoi.quicktiles' ] || # settings...
      [ "$packageid" = 'org.thoughtcrime.securesms' ] || # signal app
      [ "$packageid" = 'im.molly.app' ] || # signal client
      [ "$packageid" = 'com.beemdevelopment.aegis' ] || # otp
      [ "$packageid" = 'im.vector.app' ] || # element chat app
      [ "$packageid" = 'network.loki.messenger' ] || # chat app
      [ "$packageid" = 'org.schabi.newpipe' ] || # youtube client. settings like search-history etc...
      [ "$packageid" = 'com.machiav3lli.fdroid' ] || # neo-store
      [ "$packageid" = 'com.android.contacts' ] ||
      [ "$packageid" = 'com.samsung.android.kgclient' ] || # new phone does not allow to remvoe this.
      [ "$packageid" = 'com.android.providers.contacts' ]; then
      printf "%s\n" "action: did not clean because I need personel settings of that app."
   else
      # do not run this with nohup. we don't know the reaction of android runtime. it may skip some clear operations if they are paralel.
      # -n and -x are important. otherwise the whole script exits with 0. I could not solve the reason.
      adb shell -n -x pm clear "$packageid"
      printf "%s\n" "action: cleaned."
   fi
done
