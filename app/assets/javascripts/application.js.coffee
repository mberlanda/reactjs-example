#= require jquery
#= require jquery_ujs
#= require react
#= require react_ujs
#= require_tree .

OneTimeClickLink = React.createClass
  getInitialState: ->
    {clicked: false}
  linkClicked: (event) ->
    @setState(clicked: true)
  render: ->
    unless @state.clicked
      React.DOM.div(
        {id: "one-time-click-link"},
        React.DOM.a(
          {href:"javascript:void(0)", onClick: @linkClicked},
          "Click me"
        )
      )
    else
      React.DOM.div(
        {id: "one-time-click-link"},
        React.DOM.span({}, "You clicked the link")
      )

$ ->

  oneTimeClickLink = React.createFactory(OneTimeClickLink)
  
  ReactDOM.render(
    oneTimeClickLink(),
    document.getElementById("start")
  )