window.addEventListener("turbolinks:load", function() {
  // セレクトボックスの削除
  function remove_selectBox(target) {
    // 親カテゴリーを選択した場合、子カテゴリーのセレクトボックスを削除
    if (target == "parent") {
      $("#children_wrapper").remove();
    }
    // 親または子カテゴリーを選択した場合、孫カテゴリーのセレクトボックスを削除
    if (target == "parent" || target == "child") {
      $("#grandchildren_wrapper").remove();
    }
    // 共通 孫より下ののセレクトボックスを削除
    $("#size_wrapper").remove();
    $("#brand_wrapper").remove();
  }

  // カテゴリーセレクトボックスのオプションを作成
  function appendOption(category) {
    var html = `<option value="${category.id}">${category.name}</option>`;
    return html;
  }
  // セレクトボックスを作成
  function appendSelectBox(insertHTML, wrapper_id, category_id, target) {
    var html = "";
    html = `<div class="buy__container__main__wrapper__detail__select__category__select" id= "${wrapper_id}">
              <select id="${category_id}" name="" style="margin-bottom: 10px;">
                <option value="---">---</option>
                ${insertHTML}
              </select>
            </div>`;
    $(target).append(html);
  }

  // 親カテゴリー選択後のイベント
  $("#parent_category").on("change", function() {
    var parentCategory = $("#parent_category").val(); //選択された親カテゴリーの名前を取得
    if (parentCategory != "---") {
      //親カテゴリーが初期値でないことを確認
      $.ajax({
        url: "get_category_children",
        type: "GET",
        data: { parent_id: parentCategory },
        dataType: "json"
      })
        .done(function(children) {
          remove_selectBox("parent");
          var insertHTML = "";
          children.forEach(function(child) {
            insertHTML += appendOption(child);
          });
          appendSelectBox(
            insertHTML,
            "children_wrapper",
            "child_category",
            $("#category-insert")
          );
        })
        .fail(function() {
          alert("カテゴリー取得に失敗しました");
        });
    } else {
      remove_selectBox("parent");
    }
  });

  // 子カテゴリー選択後のイベント
  $("#category-insert").on("change", "#child_category", function() {
    var childId = $("#child_category").val(); //選択された子カテゴリーのidを取得
    if (childId != "---") {
      //子カテゴリーが初期値でないことを確認
      $.ajax({
        url: "get_category_grandchildren",
        type: "GET",
        data: { child_id: childId },
        dataType: "json"
      })
        .done(function(grandchildren) {
          if (grandchildren.length != 0) {
            remove_selectBox("child");
            var insertHTML = "";
            grandchildren.forEach(function(grandchild) {
              insertHTML += appendOption(grandchild);
            });
            appendSelectBox(
              insertHTML,
              "grandchildren_wrapper",
              "grandchild_category",
              $("#category-insert")
            );
          }
        })
        .fail(function() {
          alert("孫カテゴリー取得に失敗しました");
        });
    } else {
      remove_selectBox("child");
    }
  });

  $(function() {
    // サイズセレクトボックスのオプションを作成
    function appendSizeOption(size) {
      var html = `<option value="${size.id}">${size.name}</option>`;
      return html;
    }
    // サイズ・ブランド入力欄の表示作成
    function appendSizeBox(insertHTML) {
      var sizeSelectHtml = "";
      sizeSelectHtml = `<div class="sell-inner__form__content__right__genre_size" id= "size">
                          <label>サイズ</label>
                          <span>必須</span>
                          <div class="sell-inner__form__content__right__genre_select" id= "size_wrapper">
                            <i class="fa fa-chevron-down"></i>
                            <select id="size" name="item[size_id]">
                            <option value="---">---</option>
                              ${insertHTML}
                            </select>
                          </div>
                        </div>`;
      $("#sell-inner__form__content__right__genre_hogehoge").append(
        sizeSelectHtml
      );
    }
    // 孫カテゴリー選択後のイベント
    $("#sell-inner__form__content__right__genre_hogehoge").on(
      "change",
      "#grandchild_category",
      function() {
        var grandchildId = $("#grandchild_category option:selected").data(
          "category"
        ); //選択された孫カテゴリーのidを取得
        if (grandchildId != "---") {
          //孫カテゴリーが初期値でないことを確認
          $.ajax({
            url: "get_size",
            type: "GET",
            data: { grandchild_id: grandchildId },
            dataType: "json"
          })
            .done(function(sizes) {
              remove_selectBox("grandChild");
              if (sizes.length != 0) {
                var insertHTML = "";
                sizes.forEach(function(size) {
                  insertHTML += appendSizeOption(size);
                });
                appendSizeBox(insertHTML);
              }
            })
            .fail(function() {
              alert("サイズ取得に失敗しました");
            });
        } else {
          remove_selectBox("grandChild");
        }
      }
    );
  });
});
