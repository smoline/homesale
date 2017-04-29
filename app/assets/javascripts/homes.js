// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {

  $('#query').on('input', function(event) {
    var queryValue = $(this).val()

    // $('#spinner').show()

    $.ajax({
      url: '/homes',
      data: { search: queryValue },
      dataType: 'script'
    })
  })
})
