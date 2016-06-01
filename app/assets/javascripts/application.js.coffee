#= require jquery
#= require jquery_ujs
#= require react
#= require react_ujs
#= require_tree .

$ -> 
  ReactDOM.render(
    React.DOM.div({}, "Hello world!")
    document.getElementById("start")
  )