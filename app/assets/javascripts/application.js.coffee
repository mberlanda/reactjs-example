#= require jquery
#= require jquery_ujs
#= require react
#= require_tree .

$ ->
  linkClicked = (event) ->
    console.log(event)
    console.log(event.target)

    React.renderComponent(
      virtualDom("You clicked me"),
      document.body
    )
    
  virtualDom = (linkText) ->
    React.DOM.div(
      {id: "render-me-react-please"},
      React.DOM.a(
        {href:"javascript:void(0)", onClick: linkClicked},
        linkText
      )
    )

  React.renderComponent(
    virtualDom("Click me"),
    document.body
  )
