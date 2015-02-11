#= require jquery
#= require jquery_ujs
#= require react
#= require_tree .

OneTimeClickLink = React.createClass
  render: ->
    React.DOM.div(
      {id: "one-time-click-link"},
      React.DOM.a(
        {href:"javascript:void(0)"},
        "Click me"
      )
    )

$ ->
  React.renderComponent(
    OneTimeClickLink(),
    document.body
  )
