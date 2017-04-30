// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {

  // Favorites
  $('.fav-heart').on('click', function(event) {
    $(this).css({ color: "red" })
    let homeId = $(this).data("homeid")
    console.log(`The value is ${homeId}`)
  })

// Square Feet to Square Meters
  $('.sqFeetMeters').on('click', function(event) {
    let sqMeters = $(this).data("sqfeet") * 0.0929
    console.log(`The value is ${sqMeters}`)
    $(this).replaceWith( `<p class="secondleftline sqFeetMeters" data-sqfeet="<%= home.square_footage %>">${sqMeters} SqMeters</p>` )
  })

// Square Meters to Square Feet
  $('.sqFeetMeters').off('click', function(event) {
    let sqFeet = $(this).data("sqfeet")
    console.log(`The value is ${sqFeet}`)
    $(this).replaceWith( `<p class="secondleftline sqFeetMeters" data-sqfeet="<%= home.square_footage %>"><%= home.square_footage %> SqFeet</p>` )
  })

// Dynamic Searching
  $('#query').on('input', function(event) {
    let queryValue = $(this).val()

    console.log(`You are searching for ${queryValue}`)

    // $('#spinner').show()

    $.ajax({
      url: '/homes',
      data: { search: queryValue },
      dataType: 'script'
    })
  })
})
