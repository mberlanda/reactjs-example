#= require jquery
#= require jquery_ujs
#= require react
#= require_tree .

$ ->
  # leanpub-start-insert
  virtualDomAfterClick = React.DOM.div(
    {id: "render-me-react-please"},
    React.DOM.span(
      {},
      "You clicked the link"
    )
  )
  # leanpub-end-insert

  linkClicked = (event) ->
    # leanpub-start-insert
    React.renderComponent(
      virtualDomAfterClick,
      document.body
    )
    # leanpub-end-insert
    
  virtualDomBeforeClick = React.DOM.div(
    {id: "render-me-react-please"},
    React.DOM.a(
      {href:"javascript:void(0)", onClick: linkClicked},
      "Click me"
    )
  )

  React.renderComponent(
    virtualDomBeforeClick,
    document.body
  )
