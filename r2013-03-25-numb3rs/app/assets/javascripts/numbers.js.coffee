class Home
  @document_ready: ->
    # photos = $('photo').length
    # max: declaration.words.length
    $('#slider').slider({ min: 0, max: photos, step: 1, slide: Home.sliding })

  @sliding: (e, ui) ->
    # album_id = $('#album').data('album-id')
    value = ui.value
    settings =
      dataType: 'script'
      type: 'get'
      # url: "/albums/#{album_id}/filter?count=#{count}"
    $.ajax(settings)

$(document).ready(Home.document_ready)