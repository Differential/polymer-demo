Template.dashboardLayout.helpers
  currentEmail: ->
    Meteor.user()?.emails[0].address

  narrow: ->
    Session.get "drawer-panel-narrow"

Template.dashboardLayout.events
  "core-responsive-change [data-drawer-panel]": (e) ->
    Session.set "drawer-panel-narrow", e.originalEvent.detail.narrow

  "click [data-action=toggle-drawer]": ->
    $("[data-drawer-panel]")[0].togglePanel()

  "click paper-item": (e) ->
    $("[data-drawer-panel]")[0].closeDrawer()

  "click [data-action=sign-out]": ->
    Meteor.logout ->
      Router.go "/"
