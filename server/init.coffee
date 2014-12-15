Meteor.startup ->
  Inject.rawModHtml 'addUnresolved', (html) ->
      html = html.replace '<body>', '<body unresolved fit layout vertical>'
