function show_new_task_form()
{
  $('#new_task').hide();
  $('.taskform').show();
  $('#create_task').show();
  $('#update_task').hide();
  $('#title').val('');
  $('#description').val('');
  var date = moment().add('days', 1).format("MM/DD/YYYY");
  $('#duedate').val(date);
  $('#is_complete').removeAttr('checked');
  $('#address').val('');
  $('#title').focus();
}

function hide_task_form()
{
  $('#new_task').show();
  $('.taskform').hide();
}

function create_task()
{
  var priority_id = $('#priority_id').val();
  var title = $('#title').val();
  var description = $('#description').val();
  var duedate = $('#duedate').val();
  var is_complete = $('#is_complete').is(':checked');
  var address = $('#address').val();
  var token = $('input[name=authenticity_token]').val();

  $.ajax({
      dataType: 'json',
      type: "post",
      url: "/tasks",
      data: {authenticity_token:token, 'task[priority_id]':priority_id, 'task[title]':title, 'task[description]':description, 'task[duedate]':duedate, 'task[is_complete]':is_complete, 'task[address]':address}
    }).done(process_task);

  return false;
}

function delete_task()
{
  var task_id = $(this).prev().prev().text();
  var token = $('input[name=authenticity_token]').val();

  $.ajax({
    dataType: 'json',
    type: "post",
    url: "/tasks/" + task_id,
    data: {_method: 'delete', authenticity_token:token}
  }).done(process_task);

  return false;
}

function edit_task()
{
  show_edit_task_form();

  var task_id = $(this).prev().text();
  var task = _.find(tasks, function(t){return t.id == task_id;});

  $('#title').val(task.title);
  $('#description').val(task.description);
  $('#duedate').val(moment(task.duedate).format("MM/DD/YYYY"));
  $('#address').val(task.address);
  if(task.is_complete == true)
    $('#is_complete').attr('checked', 'checked');
}

function update_task()
{

  var priority_id = $('#priority_id').val();
  var title = $('#title').val();
  var description = $('#description').val();
  var duedate = $('#duedate').val();
  var is_complete = $('#is_complete').is(':checked');
  var address = $('#address').val();
  var token = $('input[name=authenticity_token]').val();
  var task_id = $('#task_id').val();

  $.ajax({
      dataType: 'json',
      type: "post",
      url: "/tasks/" + task_id,
      data: {_method: 'put', authenticity_token:token, 'task[priority_id]':priority_id, 'task[title]':title, 'task[description]':description, 'task[duedate]':duedate, 'task[is_complete]':is_complete, 'task[address]':address}
    }).done(process_task);

  return false;
}

function show_edit_task_form()
{
  $('.taskform').show();
  $('#create_task').hide();
  $('#update_task').show();
  $('#title').focus();
}

function process_task(task_list)
{
  _.each(task_list, display_task);
}

function display_task(task)
{
  add_marker(task.latitude, task.longitude, task.title);

  var li = $('<li>');
  li.text(task.title);
  $('#tasks').append(li);

  hide_task_form();
}