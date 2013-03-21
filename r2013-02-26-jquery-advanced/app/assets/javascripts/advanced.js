$(function(){

  // $('#age').change(validate_age);
  // $('body').mouseover(colorize);
  $('body').keypress(shortcut);

});

function shortcut(data)
{
  var text = $('#text').text();
  $('#text').text(text + String.fromCharCode(data.which));

  switch(String.fromCharCode(data.which))
  {
    case 'b':
      $('#text').css('color', 'blue');
    break;
    case 'g':
      $('#text').css('color', 'green');
    break;
    case 'y':
      $('#text').css('color', 'yellow');
    break;
    case 'r':
      $('#text').css('color', 'red');
    break;
    case 'p':
      $('#text').css('color', 'purple');
    break;
    default:
      $('#text').css('color', 'black');
  }
}

// function colorize(eventdata)
// {
//   var x = eventdata.clientX;
//   var y = eventdata.clientY;

//   $('#x').text(x);
//   $('#y').text(y);

//   var red = ((x * y) % 256);
//   var green = ((x * y * 2) % 256);
//   var blue = ((x * y * 3) % 256);

//   $('body').css('background-color', 'rgb('+red+','+green+','+blue+')');

//   if((x % 2) == 0)
//     $('#x').css('color', 'red');
//   else
//     $('#x').css('color', 'green');

//   if((y % 2) == 0)
//     $('#y').css('color', 'red');
//   else
//     $('#y').css('color', 'green');
// }


// function validate_age()
// {
//   $('body').children('p').remove();
//   var p = $('<p>');
//   $('body').prepend(p);
//   var age = parseInt($('#age').val());
//   p.text(age);
//   if(age >17)
//     p.addClass('green');
//   else
//     p.addClass('red');
// }
