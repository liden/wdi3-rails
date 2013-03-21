$(function(){

  $('#add_color').click(add_color);
  $('#colors').on('click', '.box', set_color);
  $('#clear_colors').click(clear);
  $('#add_image').click(add_image);
  $('#clear_image').click(clear_image);
  $('#clear_painting').click(clear_painting);
  $('#images').on('click', '.image_box', set_image);
  $('#canvas').on('mouseover', '.paint', paint_color);
  create_paint_boxes();

});

function add_image()
{
  var image = $('#image').val();
  var box = $('<div>');
  box.addClass('image_box');
  box.css('background-image', 'url(' + image + ')');
  $('#images').prepend(box);
  $('#image').val('');
  $('#image').focus();
}

function set_image()
{
  var box = $(this);
  var image = box.css('background-image');
  $('#canvas').css('background-image', image);
}

function clear_image()
{
  $('#canvas').css('background-image', 'url()');
}

function clear_painting()
{
  $('#canvas').empty();
  create_paint_boxes();
}

function paint_color()
{
  var color = $('#selected').css('background-color');
  var box = $(this);
  box.css('background-color', color);
}

function create_paint_boxes()
{
  for(var i = 0; i < 5625; i++)
  {
    var paint = $('<div>');
    paint.addClass('paint');
    $('#canvas').append(paint);
  }
}

function clear()
{
  $('#colors').empty();
  $('#selected').css('background-color', 'white');
}

function set_color()
{
  var box = $(this);
  var color = box.css('background-color');
  $('#selected').css('background-color', color);
}

function add_color()
{
  var color = $('#color').val();
  var box = $('<div>');
  box.addClass('box');
  box.css('background-color', color);
  $('#colors').prepend(box);
  $('#color').val('');
  $('#color').focus();
}