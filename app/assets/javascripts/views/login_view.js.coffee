class Heridev.Views.LoginView extends Backbone.View
   
  events:
    'click input[name="commit"]' : 'login'
   
  template: JST['login/login']
 
  render: ->
    $(@el).html(@template())
    @
 
  login: (event) ->
    event.preventDefault()

    console.log 'si entra'
 
    $.ajax
      url: '/session/'
      type: 'post'
      data: @$('form').serialize()
      dataType: 'json'
      cache: false
      success: =>
        @$el.find('.notice-message').removeClass('alert')
        @$el.find('.notice-message').slideDown()
        @$el.find('.notice-message').addClass('success')
        @$el.find('.notice-message').html('<span></span><ul><li><strong>Successful Login!</strong></li></ul><a href="#">Close</a>')
        setTimeout (->
          window.location.href = "http://google.com"
        ), 2000
      error: @handleError
 
  handleError: (response) =>
    if response.status == 422
      @$el.find('#errors ul').html('')
      @$el.find('.notice-message').slideDown()
      @$el.find('.notice-message').addClass('alert')
      errors = $.parseJSON response.responseText
      _.each errors, (message) =>
        $('#errors ul').append("<li>#{message}</li>")
