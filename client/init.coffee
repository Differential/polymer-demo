# Manually initialize the router into a nested div
polymerReady = new ReactiveVar false

$(window).on "polymer-ready", ->
  polymerReady.set true

Meteor.startup ->
  $("body").append "<div fit layout vertical iron-router></div>"
  Tracker.autorun ->
    if polymerReady.get()
      Router.insert el: "[iron-router]"
      Router.start()
