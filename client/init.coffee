# Manually initialize the router into a nested div
$(window).on "polymer-ready", ->
  Session.set "polymer-ready", true


Meteor.startup ->
  $("body").append "<div fit layout vertical iron-router></div>"
  Tracker.autorun ->
    if Session.get "polymer-ready"
      Router.insert el: "[iron-router]"
      Router.start()
