javascript:
(function () {

    /* tested on searx 0.16.0 version */

    function ___addCookie(prop, val) {
        document.cookie = prop + "=" + val;
    }
    
    function ___inject_cookies() {

        /* all settings are depend on server. so we set them anyway. */

        ___addCookie("safesearch", "0");

        ___addCookie("results_on_new_tab", "1");

        ___addCookie("method", "POST");

        ___addCookie("locale", "en");

        ___addCookie("language", "en-US");

        ___addCookie("enabled_plugins", "Open_result_links_on_new_browser_tabs");

        ___addCookie("categories", "\"general\\054files\\054images\\054it\\054map\\054music\\054news\\054science\\054social media\\054videos\"");

        /* this is a must. otherwise search engines are not injected. */
        ___addCookie("disabled_engines", "");

        /* includes all engines on all categories. but this is only for one instance. */
        /* if other instancess have any additional search engines, they should be enable manuallly. */
        ___addCookie("enabled_engines", "\"ccc-tv__videos\\054reddit__news\\054dictzone__general\\054wikiquote__general\\054ina__videos\\054etymonline__general\\0541x__images\\054google play apps__files\\054startpage__general\\054faroo__news\\054faroo__general\\054searchcode code__it\\054rubygems__it\\054fdroid__files\\054gigablast__general\\054acgsou__music\\054framalibre__it\\054reddit__social media\\054bitbucket__it\\054openrepos__files\\054acgsou__videos\\054tokyotoshokan__files\\054frinkiac__images\\054bing__general\\054tokyotoshokan__music\\054nyaa__files\\054wikibooks__general\\054duden__general\\054npm__it\\054mojeek__general\\054habrahabr__it\\054reddit__general\\054geektimes__it\\054wiktionary__general\\054wikipedia__general\\054yandex__general\\054free software directory__it\\054wikisource__general\\054mymemory translated__general\\054library genesis__general\\054wikinews__news\\054seznam__general\\054nyaa__music\\054yahoo__general\\054acgsou__images\\054tokyotoshokan__videos\\054apk mirror__it\\054nyaa__images\\054etools__general\\054kickass__music\\054nyaa__videos\\054wikiversity__general\\054voat__social media\\054google play music__music\\054duckduckgo images__images\\054kickass__videos\\054google__general\\054acgsou__files\\054erowid__general\\054google play movies__videos\\054archive is__general\\054reddit__images\\054unsplash__images\\0541337x__videos\\054kickass__files\\054wikivoyage__general\\054gitlab__it\"");
    }
    
    ___inject_cookies();

    /* open settings in another tab to validate if they are enabled */
    window.open(document.URL + "/preferences#tab_engine");

})();
