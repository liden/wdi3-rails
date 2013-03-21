$(function(){

  $('#btn').click(cool_popup);
  $('#btncolor').click(backgroundcolor);
  $('#hide').click(hideme);
  $('#show').click(showme);
  $('#calc').click(compute_area);

});

function compute_area()
{
  var width = parseInt($('#width').val());
  var height = parseInt($('#height').val());
  var a = area(width, height);
  $('#area').text(a + 'sq ft');
  if(a < 100)
    $('#area').addClass('success');
  else
    $('#area').addClass('alert');
}

function area(width, height)
{
  return width * height;
}


function hideme()
{
  $('h1').hide();
}

function showme()
{
  $('h1').show();
}



function cool_popup()
{
  var name = $('#name').val();
  alert(name + ' you have won 1 billion dollars!');
}

function backgroundcolor()
{
  var color = $('#color').val();
  $('body').css('background-color', color);
}

