#= require jquery
#= require jquery_ujs
#= require react
#= require react_ujs
#= require_tree .

$ -> 
  virtualDom = React.DOM.div(
    {id: "render-me-react-please"},
    React.DOM.a(
      {href: "javascript:void(0)", id:"do-nothing.click"}
      "Click me"
    )
  )

  ReactDOM.render(
    virtualDom,
    document.getElementById("start")
  )