$(document).on("turbolinks:load", function() {
  // ブランド一覧にマウスが乗ったとき
  $("#brand").hover(
    function() {
      $(".brand").show();
    },
    function() {
      $(".brand").hide();
    }
  );
});
