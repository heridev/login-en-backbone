window.Heridev =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  
  login: ->
    new Heridev.Routers.LoginRouter()
    Backbone.history.start()

$(document).ready ->
  Heridev.login()
