// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {

  // Favoriting
  $('.s-ul').on('click', '.fav-heart', function(event) {
    let homeId = $(this).data("homeid")
    console.log(`The value is ${homeId}`)
    $(this).replaceWith( `<p class="pull-left faved-heart" data-remote=true data-type=script data-homeid="${homeId}"> &hearts;</p>` )

    $.ajax({
      type: "POST",
      url: 'favorites/' + homeId,
      success: function(event) {
        // $(this).css({ color: 'red' })
      }
    })
  })

  // Unfavoriting
  $('.s-ul').on('click', '.faved-heart', function(event) {
    let homeId = $(this).data("homeid")
    console.log(`The value is ${homeId}`)
    $(this).replaceWith( `<p class="pull-left fav-heart" data-remote=true data-type=script data-homeid="${homeId}"> &hearts;</p>` )

    $.ajax({
      type: "DELETE",
      url: 'favorites/destroy/' + homeId,
      success: function(event) {
        // $(this).css({ color: 'red' })
      }
    })
  })

  // Square Feet to Square Meters on index
  $('.s-ul').on('click', '.sqFeetMeters', function(event) {
    let sqFeet = $(this).data("sqfeet")
    let sqMeters = (sqFeet * 0.0929).toFixed(2)
    console.log(`The value is ${sqMeters}`)
    $(this).replaceWith( `<p class="secondleftline sqMetersFeet" data-sqfeet="${sqFeet}">${sqMeters} SqMeters</p>` )
  })

  // Square Meters to Square Feet on index
  $('.s-ul').on('click', '.sqMetersFeet', function(event) {
    let sqFeet = $(this).data("sqfeet")
    console.log(`The value is ${sqFeet}`)
    $(this).replaceWith( `<p class="secondleftline sqFeetMeters" data-sqfeet="${sqFeet}">${sqFeet} SqFeet</p>` )
  })

  // Square Feet to Square Meters on show
  $('.s-ul').on('click', '.sqFeet', function(event) {
    let sqFeet = $(this).data("sqfeet")
    let sqMeters = (sqFeet * 0.0929).toFixed(2)
    console.log(`The value is ${sqMeters}`)
    $(this).replaceWith( `<h4 class="sqMeters" data-sqfeet="${sqFeet}">${sqMeters} Square Meters</h4>` )
  })

  // Square Meters to Square Feet on show
  $('.s-ul').on('click', '.sqMeters', function(event) {
    let sqFeet = $(this).data("sqfeet")
    console.log(`The value is ${sqFeet}`)
    $(this).replaceWith( `<h4 class="sqFeet" data-sqfeet="${sqFeet}">${sqFeet} Square Feet</h4>` )
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

// Pagination with AJAX and kaminari
  $('.pagination').on('click', '.page', function(event) {
      var baseUrl = document.location.target;
  })

})
