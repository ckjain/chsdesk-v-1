# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('form').on 'click', '.remove_fields', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('fieldset').hide()
    event.preventDefault()
    
  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()
    
  $('#meeting_meeting_name').autocomplete
    source: $('#meeting_meeting_name').data('autocomplete-source')

  $('#meeting_invited_tokens').tokenInput '/members.json'
    theme: 'facebook'
    prePopulate: $('#meeting_invited_tokens').data('load')
    preventDuplicates: true
    
  $('#meeting_attended_tokens').tokenInput '/members.json'
    theme: 'facebook'
    prePopulate: $('#meeting_attended_tokens').data('load')
    preventDuplicates: true