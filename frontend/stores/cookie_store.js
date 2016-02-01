var Store = require('flux/utils').Store,
    AppDispatcher = require('../dispatcher/dispatcher'),
    LanguageStore = require('./language_store'),
    CookieConstants = require('../constants/cookie_constants');

var _cookies = {
  curLng: "English",
  curCourse: ""
};

var CookieStore = new Store(AppDispatcher);

var _COOKIE_NAMES = {
  curLng: "curLng",
  curCourse: "curCourse"
};

var addCookie = function (cookie) {
  var key = Object.keys(cookie)[0];
  window.localStorage.setItem(key, cookie[key]);
  _cookies[key] = cookie[key];
};

var fetchCookiesFromBrowser = function () {
  Object.keys(localStorage).forEach(function (key) {
    if (Object.keys(_COOKIE_NAMES).includes(key)) {
      _cookies[key] = localStorage[key];
    }
  });
};

var receiveCookies = function (cookies) {
  var key = Object.keys(cookies)[0];
  _cookies = cookies;
};


CookieStore.all = function () {
  return Object.assign({}, _cookies);
};

CookieStore.curLng = function () {
  return _cookies.curLng;
};


CookieStore.__onDispatch = function (payload) {
  if (payload.actionType === CookieConstants.COOKIES_RECEIVED) {
    var cookies = payload.cookies;
    receiveCookies(cookies);
    CookieStore.__emitChange();
  } else if (payload.actionType === CookieConstants.COOKIE_RECEIVED) {
    var cookie = payload.cookie;
    addCookie(cookie);
    CookieStore.__emitChange();
  } else if (payload.actionType === CookieConstants.FETCH_COOKIES) {
    fetchCookiesFromBrowser();
    CookieStore.__emitChange();
  }
};

window.CookieStore = CookieStore;

module.exports = CookieStore;