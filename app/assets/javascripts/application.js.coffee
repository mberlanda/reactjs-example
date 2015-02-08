#= require jquery
#= require jquery_ujs
#= require react
#= require_tree .

$ ->
  React.renderComponent(
    React.DOM.div({}, "Hello world!"),
    document.body
  )
