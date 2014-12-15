Template.signIn.events
  "submit [data-action=sign-in]": (e) ->
    $form = $ e.target
    if $form[0].valid
      email = $form.find("#email").val()
      pass = $form.find("#password").val()

      Meteor.loginWithPassword email, pass, (error) ->
        if error
          GlobalUI.toast error.reason
        else
          Router.go "home"
