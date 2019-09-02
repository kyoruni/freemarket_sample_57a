$(document).on("turbolinks:load", function() {
  // 触ったところをアクティブ状態にする＆次の階層のカテゴリーを表示
  function showChild(target) {
    $(target).addClass("active-list");
    $(target)
      .children()
      .show();
  }

  // 離れたところを非アクティブ状態にする＆次の階層のカテゴリーを隠す
  function hideChild(target) {
    $(target).removeClass("active-list");
    $(target)
      .children()
      .hide();
  }

  // カテゴリー一覧にマウスが乗ったとき
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

  // 親カテゴリーにマウスが乗ったとき
  $(".category-list-parent-item").hover(
    function() {
      showChild(this);
    },
    function() {
      hideChild(this);
    }
  );

  // 子カテゴリーにマウスが乗ったとき
  $(".category-list-child-item").hover(
    function() {
      showChild(this);
    },
    function() {
      hideChild(this);
    }
  );
});
