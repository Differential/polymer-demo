Template.home.rendered = ->
  #SEO Page Title & Description
  document.title = "Differential | Polymer demo"
  $("<meta>", { name: "description", content: "Something" }).appendTo "head"

# You can bind events to the Polymer elements the
# same way you would with a regular HTML element
Template.home.events =
  'click paper-button': (evt) ->
    console.log 'clicked: ', evt.target

  
