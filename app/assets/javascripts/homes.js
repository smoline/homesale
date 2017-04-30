// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {

  // Favorites
  $('.s-ul').on('click', '.fav-heart', function(event) {
    let homeId = $(this).data("homeid")

    console.log(`The value is ${homeId}`)

    $.ajax({
      type: "POST",
      url: 'favorites/' + homeId,
      success: function(event) {
        $('.fav-heart').css({ color: "red" })
      }
    })
  })

  // Square Feet to Square Meters
  $('.s-ul').on('click', '.sqFeetMeters', function(event) {
    let sqFeet = $(this).data("sqfeet")
    let sqMeters = (sqFeet * 0.0929).toFixed(2)
    console.log(`The value is ${sqMeters}`)
    $(this).replaceWith( `<p class="secondleftline sqMetersFeet" data-sqfeet="${sqFeet}">${sqMeters} SqMeters</p>` )
  })

  // Square Meters to Square Feet
  $('.s-ul').on('click', '.sqMetersFeet', function(event) {
    let sqFeet = $(this).data("sqfeet")
    console.log(`The value is ${sqFeet}`)
    $(this).replaceWith( `<p class="secondleftline sqFeetMeters" data-sqfeet="${sqFeet}">${sqFeet} SqFeet</p>` )
  })

// Dynamic Searching
  $('#query').on('input', function(event) {
    let queryValue = $(this).val()

    console.log(`You are searching for ${queryValue}`)

    $.ajax({
      url: '/homes',
      data: { search: queryValue },
      dataType: 'script'
    })
  })


})
