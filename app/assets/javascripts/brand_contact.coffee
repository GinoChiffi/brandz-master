 $(document).on "turbolinks:load", ->
    $('#brand_contact_link').click ->
        event.preventDefault()
        $('#brand_contact_section').fadeToggle()
        $('#brand_pics_section').hide()
        $('#brand_locations_section').hide()
        $('#brand_designers_section').hide()
        $('#brand_story_section').hide()
        $('#brand_post_section').hide()
