class Heridev.Routers.LoginRouter extends Backbone.Router
  routes:
    '' : 'showLoginView'
    'n' : 'showLoginView'
 
  showLoginView: ->
    view = new Heridev.Views.LoginView()
    $('#form-area').html(view.render().el)
