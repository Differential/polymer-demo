Meteor.startup ->
  if Meteor.isClient
    Session.set("polymer-ready", true);
