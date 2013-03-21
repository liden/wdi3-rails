$(function()
{

  $('#new_user').on('click', '#cancel_user', hide_user_form);
  $('#new_stock').on('click', '#cancel_stock', hide_stock_form);

});

function start_timer()
{
  setInterval(get_quotes, 1000);
}

function get_quotes()
{
  $.ajax({
    dataType: 'json',
    type: "get",
    url: "/stocks/quotes"
  }).done(process_quotes);
}

function process_quotes(quote_list)
{
  _.each(quote_list, add_to_quotes);
  _.each(quote_list, add_chart_element);
  _.each(quote_list, add_checkboxes);
  _.each(quote_list, clear_chart);
  _.each(quote_list, display_chart);
  // _.each(quote_list, display_metadata);
}

function add_to_quotes(quote)
{
  quotes[quote.symbol] = quotes[quote.symbol] || [];
  quotes[quote.symbol].push(quote);
  if(quotes[quote.symbol].length > 100) quotes[quote.symbol].shift();
}

function add_chart_element(quote)
{
  if(!$('#' + quote.symbol).length)
    $('#charts').append('<div id=' + quote.symbol + '>');
}

function add_checkboxes(quote)
{
  if(!$('#' + quote.symbol).length)
  {
    var div = $('div class="checkbox">');
    var text = $('<span><small>' + quote.symbol + '</small></span>');
    var checkbox = $('<input type=checkbox id=' + quote.symbol + '_box' + '>');
    div.append([checkbox, text]);
    $('#checkboxes').append(div);
  }
}

function clear_chart(quote)
{
  $('#' + quote.symbol).empty();
}

function display_chart(quote)
{
  if($('#' + quote.symbol + '_box').is(':checked'))
  {
    var graph = $('<div>');
    graph.attr('id', quote.symbol + '_graph');
    graph.addClass('graph');

    ('#' + quote.symbol).append(graph);

    new Morris.Line({
      element: quote.symbo + 'graph',
      data: quotes[quote.symbol],
      xkey: 'time',
      ykeys: ['quote'],
      labels: [quote.symbol],
      ymax: 'auto',
      ymin: 'auto'
    });
  }
  else
    $('#' + quote.symbol).remove();
}

function hide_user_form()
{
  $('#new_user').empty();
}

function hide_stock_form()
{
  $('#new_stock').empty();
}


// $('#stocks').on('change', 'input:checkbox', toggle_chart);

  // function toggle_chart()
// {
//   var selected_symbol = ($(this).next().text());
//   $('<div>').attr('id', selected_symbol).toggle();
// }

  // new_symbols = _.pluck(quote_list, 'symbol');
  // new_symbols = _.uniq(new_symbols);
  // all_symbols = symbols;

    // symbols = _.pluck(quotes, 'symbol');
  // symbols = _.uniq(symbols);
  // _.each(symbols, quotes_by_symbol);

  // function quotes_by_symbol(symbol)
// {
//   quotes[symbol] = _.where(quotes, {symbol : symbol});
//   if(quotes[symbol].length == 100)
//     quotes[symbol].shift();
// }

// function display_symbol(quote)
// {
//   symbol = quote['symbol'];
//   new_symbols.push(symbol);
//   difference = _.difference(new_symbols, symbols);
//   _.each(difference, add_display_symbol);
//   _.each(difference, add_chart_element);
// }

// function add_display_symbol(symbol)
// {
//   var div = $('<div>');
//   var checkbox = $('<input>').attr('type', 'checkbox');
//   var ticker = $('<span>').text(symbol);
//   div.append(checkbox).append(ticker);
//   $('#stocks').append(div);
//   symbols.push(symbol);
// }