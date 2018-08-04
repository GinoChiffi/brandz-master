$(document).on "turbolinks:load", ->
  $('#brand_post_link').click ->
      event.preventDefault()
      $('#brand_post_section').fadeToggle()
      $('#brand_pics_section').hide()
      $('#brand_designers_section').hide()
      $('#brand_contact_section').hide()
      $('#brand_story_section').hide()
      $('#brand_locations_section').hide()



