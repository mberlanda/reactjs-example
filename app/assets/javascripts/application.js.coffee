#= require jquery
#= require jquery_ujs
#= require react
#= require react_ujs
#= require_tree .

$ ->
  vitualDomAfterClick = React.DOM.div(
    {id: "render-me-react-please"},
    React.DOM.span({}, "You clicked the link")
  )
  

  linkClicked = (event) ->
    ReactDOM.render(
      vitualDomAfterClick,
      document.getElementById("start")
    )

  virtualDomBeforeClick = React.DOM.div(
    {id: "render-me-react-please"},
    React.DOM.a(
      {href: "javascript:void(0)", onClick: linkClicked}
      "Click me"
    )
  )

  ReactDOM.render(
    virtualDomBeforeClick,
    document.getElementById("start")
  )