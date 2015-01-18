class @GlobalUI

  @dialog: {}

  @toast: (text, className) ->
    toast = $("[global-toast]")[0]
    toast.text = text
    toast.show()

  @showDialog: (opts) ->
    @dialog = $("[global-dialog]")[0]
    @dialog.heading = opts.heading

    Session.set "global.ui.dialogData", opts.data
    Session.set "global.ui.dialogTemplate", opts.template
    Session.set "global.ui.dialogFullOnMobile", opts.fullOnMobile?
    Tracker.afterFlush =>
      @dialog.open()

  @closeDialog: ->
    @dialog.close()


Template.globalLayout.helpers
  globalDialogTemplate: ->
    Session.get "global.ui.dialogTemplate"

  globalDialogData: ->
    Session.get "global.ui.dialogData"

  globalDialogFullOnMobile: ->
    Session.get "global.ui.dialogFullOnMobile"


Template.globalLayout.events
  "core-overlay-close-completed [global-dialog]": (e) ->
    Session.set "global.ui.dialogTemplate", null
    Session.set "global.ui.dialogData", null
    Session.set "global.ui.dialogFullOnMobile", null

  "click [data-open-dialog]": (e) ->
    node = $ e.target
    GlobalUI.showDialog
      heading: node.data("heading"),
      template: node.data("openDialog")
      data: if node.data("useContext")? then @
      fullOnMobile: node.data("fullOnMobile")

  "click [data-action=sign-in]": (evt) ->
    Router.go "accounts.signIn"

  "click [data-action=sign-up]": (evt) ->
    Router.go "accounts.signUp"

  "click [data-action=about]": (evt) ->
    Router.go "about"
