#= require jquery
#= require jquery_ujs
#= require react
#= require react_ujs
#= require_tree .

$ ->
  linkClicked = (event) ->
    console.log(event)
    console.log(event.target)
    alert("you clicked me")

  virtualDom = React.DOM.div(
    {id: "render-me-react-please"},
    React.DOM.a(
      {href: "javascript:void(0)", onClick: linkClicked}
      "Click me"
    )
  )

  ReactDOM.render(
    virtualDom,
    document.getElementById("start")
  )