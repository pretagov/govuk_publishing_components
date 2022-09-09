window.GOVUK = window.GOVUK || {}
window.GOVUK.analyticsGA4 = window.GOVUK.analyticsGA4 || {};

(function (analytics) {
  'use strict'

  var core = {
    load: function () {
      /* eslint-disable */
      (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
      new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
      j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
      'https://www.googletagmanager.com/gtm.js?id='+i+dl+ '&gtm_auth=' + window.GOVUK.analyticsGA4.vars.auth + '&gtm_preview=' + window.GOVUK.analyticsGA4.vars.preview + '&gtm_cookies_win=x';f.parentNode.insertBefore(j,f);
      })(window,document,'script','dataLayer',window.GOVUK.analyticsGA4.vars.id);
      /* eslint-enable */
    }
  }

  analytics.core = core
})(window.GOVUK.analyticsGA4)
