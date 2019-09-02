$(document).on("turbolinks:load", function() {
  // カテゴリー一覧
  $("#category").hover(
    function() {
      // 今触ったところをアクティブ状態にする＆親カテゴリーを表示
      $(this).addClass("active-list");
      $(".category").show();
    },
    function() {
      // 今離れたところを非アクティブ状態にする＆親カテゴリーを隠す
      $(this).removeClass("active-list");
      $(".category").hide();
    }
  );

  // 親カテゴリー
  $(".category-list-parent-item").hover(
    function() {
      // 今触ったところをアクティブ状態にする＆子カテゴリーを表示
      $(this).addClass("active-list");
      $(this)
        .children()
        .show();
    },
    function() {
      // 今離れたところを非アクティブ状態にする＆子カテゴリーを隠す
      $(this).removeClass("active-list");
      $(this)
        .children()
        .hide();
    }
  );

  // 子カテゴリー
  $(".category-list-child-item").hover(
    function() {
      // 今触ったところをアクティブ状態にする＆孫カテゴリーを表示
      $(this).addClass("active-list");
      $(this)
        .children()
        .show();
    },
    function() {
      // 今離れたところを非アクティブ状態にする＆孫カテゴリーを隠す
      $(this).removeClass("active-list");
      $(this)
        .children()
        .hide();
    }
  );
});
