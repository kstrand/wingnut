/*!
 * jQuery Sticky Footer 1.0
 * Corey Snyder
 * http://tangerineindustries.com
 *
 * Released under the MIT license
 *
 * Copyright 2013 Corey Snyder.
 *
 * Date: Thu Jan 22 2013 13:34:00 GMT-0630 (Eastern Daylight Time)
 */
function stickyFooter(){$("footer").removeAttr("style");if(window.innerHeight!=document.body.offsetHeight){var e=window.innerHeight-document.body.offsetHeight,t=parseInt($("footer").css("margin-top"));t+e>parseInt($("footer").css("margin-top"))&&$("footer").css({"margin-top":t+e+"px"})}}$(window).load(function(){stickyFooter()}),$(window).resize(function(){stickyFooter()});