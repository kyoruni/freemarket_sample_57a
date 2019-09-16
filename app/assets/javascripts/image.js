$(document).on('turbolinks:load', function(){
  var dropzone = $('.dropzone-area');
  var images = [];
  var inputs  =[];
  var input_area = $('.input_area');
  var preview = $('#preview');

  // 画像挿入の処理
  function insert_image (){
        $.each(images, function(index, image) {
          image.attr('data-image', index);
          preview.append(image);
        })
  }

  // 選択されたファイルを読み込んでプレビュー画像を作成
  $(document).on('change', 'input[type= "file"].upload-image',function(event) {
    var file = $(this).prop('files')[0];
    var reader = new FileReader();
    inputs.push($(this));
    var img = $(`<div class= "img_view"><img></div>`);
    reader.onload = function(e) {
      var btn_wrapper = $('<div class="btn_wrapper"><div class="btn delete">削除</div></div>');
      img.append(btn_wrapper);
      img.find('img').attr({
        src: e.target.result
      })
    }
    reader.readAsDataURL(file);
    images.push(img);

    // 画像プレビューを挿入する
    $('#preview').empty();
    insert_image();
    if(images.length == 5) {
      dropzone.css({
        'display': 'none'
      })
    } else {
        dropzone.css({
          'width': `calc(100% - (100px * ${images.length}))`
        })
      }
    var new_image = $(`<input multiple= "multiple" name="images[image][]" class="upload-image" data-image= ${images.length} type="file" id="upload-image">`);
    input_area.prepend(new_image);
  });

  // 画像プレビューを削除する
  $(document).on('click', '.delete', function() {
    var target_image = $(this).parent().parent();
    $.each(inputs, function(index, input){
      if ($(this).data('image') == target_image.data('image')){
        $(this).remove();
        target_image.remove();
        var num = $(this).data('image');
        images.splice(num, 1);
        inputs.splice(num, 1);
        if(inputs.length == 0) {
          $('input[type= "file"].upload-image').attr({
            'data-image': 0
          })
        }
      }
    })
    $('input[type= "file"].upload-image:first').attr({
      'data-image': inputs.length
    })
    $.each(inputs, function(index, input) {
      var input = $(this)
      input.attr({
        'data-image': index
      })
      $('input[type= "file"].upload-image:first').after(input)
    })
    if (images.length < 5) {
      dropzone.css({
        'display': 'block'
      })
      insert_image();
      dropzone.css({
        'width': `calc(100% - (135px * ${images.length}))`
      })
    }
  })
});