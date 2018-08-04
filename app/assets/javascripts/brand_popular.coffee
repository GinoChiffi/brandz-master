$ ->
  $('#brands_popular').imagesLoaded ->
    $('#brands_popular').masonry
      itemSelector: '.brandpopularbox'
      isFitWidth: true
