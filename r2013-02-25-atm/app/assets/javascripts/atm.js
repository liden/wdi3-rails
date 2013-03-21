$(function(){

  show_balance();
  $('#message').hide();
  $('#s_deposit').click(add_savings);
  $('#s_withdraw').click(subtract_savings);
  $('#c_deposit').click(add_checking);
  $('#c_withdraw').click(subtract_checking);

});

var savings_balance = 0;
var checking_balance = 0;
var msg = '';

function add_savings()
{
  var deposit = parseInt($('#s_amount').val());
  savings_balance += deposit;
  msg = ('You deposited $' + deposit + ' to savings. Your account balance is now $' + savings_balance + '.');
  message(msg);
  show_balance();
}

function subtract_savings()
{
  var withdraw = parseInt($('#s_amount').val());
  if(withdraw < savings_balance)
  {
    savings_balance -= withdraw;
      // $('#message').text('You withdrew $' + withdraw + '. Your new balance is $' + savings_balance + '.');
      // $('#message').hide(1000);
  }
  else
  {
    $('#message').text('Your savings account balance is $' + savings_balance + '. please try again.');
    $('#message').hide(1000);
  }
  show_balance();
}

function add_checking()
{
  var deposit = parseInt($('#c_amount').val());
  $('#c_amount input').empty();
  checking_balance += deposit;
  show_balance();
}

function subtract_checking()
{
  var withdraw = parseInt($('#c_amount').val());
  var total_balance = savings_balance + checking_balance;
  if(withdraw <= checking_balance)
    checking_balance -= withdraw;
  else if(withdraw >= total_balance)
    $('#message').text('Your combined checking and savings account balance is $' + total_balance + '. please try again.');
  else
  {
    var deduct_from_savings = withdraw - checking_balance;
    checking_balance = 0;
    savings_balance -= deduct_from_savings;
    $('#message').text('You withdrew $' + withdraw + '. Your checking account balance is $' + checking_balance + 'and your savings account balance is $' + savings_balance + '.');
  }
  show_balance();
}

function show_balance()
{
  $('#s_balance').text('$' + savings_balance);
  $('#s_amount input').empty();
  if(savings_balance == 0)
    $('#s_balance').addClass('zero');
  else
    $('#s_balance').removeClass('zero');
  $('#c_balance').text('$' + checking_balance);
  if(checking_balance == 0)
    $('#c_balance').addClass('zero');
  else
    $('#c_balance').removeClass('zero');
  $('#c_amount input').empty();
}

function message(msg)
{
  $('#message').show();
  $('#message').text(msg);
}