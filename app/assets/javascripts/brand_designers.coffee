$(document).on "turbolinks:load", ->
    $('#brand_designers_link').click ->
        event.preventDefault()
        $('#brand_designers_section').fadeToggle()
        $('#brand_pics_section').hide()
        $('#brand_locations_section').hide( )
        $('#brand_contact_section').hide( )
        $('#brand_story_section').hide()
        $('#brand_post_section').hide()
