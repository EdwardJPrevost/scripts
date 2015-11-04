// ==UserScript==
// @name         We'll be Twitter Counting Stars
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  replaces twitter hearts with stars
// @author       Edward Prevost
// @match        https://twitter.com/*
// @match        https://twitter.com/*/*
// @require      https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js
// @grant        none
// ==/UserScript==

// Steps to configure Twitter Stars
// - 1 - Install/Configure your browser to ignore CSP enforcement for twitter.com -> https://chrome.google.com/webstore/detail/disable-content-security/ieelmcmcagommplceebfedjlakkhpden
// - 2 - Install Tampermonkey/Greasemonkey -> https://chrome.google.com/webstore/detail/tampermonkey/dhdgffkkebhmkfjojejmpbldmpobfkfo
// - 3 - Install this script

function wellBeCountingSTARS(){
    pos = $('.HeartAnimation').css('background-position');
    $('.HeartAnimation').css({            
      'background':"url(https://s15.postimg.org/87mr5ymm1/web_star_animation.png)",
      'background-size': '2900%'
    });       
}
wellBeCountingSTARS();
$('.HeartAnimation').click(function(){wellBeCountingSTARS();});
MutationObserver = window.MutationObserver || window.WebKitMutationObserver;
observer = new MutationObserver(function(mutations, observer) {
  wellBeCountingSTARS();
});
observer.observe(document, {
  subtree: true,
  childList: true
});
$(window).scroll(function(){
  wellBeCountingSTARS();
});
