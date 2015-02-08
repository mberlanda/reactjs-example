#= require jquery
#= require jquery_ujs
#= require react
#= require_tree .

$ ->
  linkText = "Click me"

  virtualDom = React.DOM.div(
    {id: "render-me-react-please"},
    React.DOM.a(
      {href:"javascript:void(0)"},
      linkText
    )
  )

  React.renderComponent(
    virtualDom,
    document.body
  )
