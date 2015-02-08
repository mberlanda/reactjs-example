#= require jquery
#= require jquery_ujs
#= require react
#= require_tree .

$ ->
  virtualDom = React.DOM.div(
    {id: "render-me-react-please"},
    React.DOM.a(
      {href:"javascript:void(0)"},
      "Click me"
    )
  )

  React.renderComponent(
    virtualDom,
    document.body
  )
