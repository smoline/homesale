// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  $('p').on('click', function(event) {
    $(this).css({ color: 'red' })
  })
})

$('#query').on('input', function(event) {
  console.log('you typed something')
})
