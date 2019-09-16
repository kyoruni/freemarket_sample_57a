$(document).on('turbolinks:load', function(){
  $('#price').on('keyup', function() {
    let input = $('#price').val();
    let price = Number(input);
    if (typeof price == 'number' && 9999999 >= price && price >= 300){
      let comissionFee = Math.floor(price / 10);
      let profit = price - comissionFee;
      $('.buy__container__main__wrapper__price__select__fee__right > p').text('¥' + comissionFee.toLocaleString());
      $('.buy__container__main__wrapper__price__select__profit__right > p').text('¥' + profit.toLocaleString());
    } else {
      $('.buy__container__main__wrapper__price__select__fee__right > p').text('-');
      $('.buy__container__main__wrapper__price__select__profit__right > p').text('-');
    }
  })
});