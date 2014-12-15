Template.home.rendered = ->
  #SEO Page Title & Description
  document.title = "USERcycle | growth analytics for every app"
  $("<meta>", { name: "description", content: "Growth analytics and alerts for every app" }).appendTo "head"

Template.home.events =
  'click paper-button': ->
    window.location = 'https://usercycle.com'
