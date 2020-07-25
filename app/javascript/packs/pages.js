(function($) {
  "use strict";

  /**
   * Pages.
   * @constructor
   * @property {string}  VERSION      - Build Version.
   * @property {string}  AUTHOR       - Author.
   * @property {string}  SUPPORT      - Support Email.
   * @property {string}  pageScrollElement  - Scroll Element in Page.
   * @property {object}  $body - Cache Body.
   */
  var Pages = function() {
    this.VERSION = "4.1.0";
    this.AUTHOR = "Revox";
    this.SUPPORT = "support@revox.io";

    this.pageScrollElement = "html, body";
    this.$body = $("body");

    this.setUserOS();
    this.setUserAgent();
  };

  $(document).on("click", ".sidebar-menu a", function(e) {

    if (
      $(this)
        .parent()
        .children(".sub-menu") === false
    ) {
      return;
    }
    var el = $(this);
    var parent = $(this)
      .parent()
      .parent();
    var li = $(this).parent();
    var sub = $(this)
      .parent()
      .children(".sub-menu");

    if (li.hasClass("open active")) {
      el.children(".arrow").removeClass("open active");
      sub.slideUp(200, function() {
        li.removeClass("open active");
      });
    } else {
      parent
        .children("li.open")
        .children(".sub-menu")
        .slideUp(200);
      parent
        .children("li.open")
        .children("a")
        .children(".arrow")
        .removeClass("open active");
      parent.children("li.open").removeClass("open active");
      el.children(".arrow").addClass("open active");
      sub.slideDown(200, function() {
        li.addClass("open active");
      });
    }
    //e.preventDefault();
  });
})(window.jQuery);
(function($) {
  "use strict";
 $.Pages.init();
})(window.jQuery);
