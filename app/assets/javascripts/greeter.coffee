
Greeter = React.createClass
  getInitialState: ->
    name: @props.intialName || "World"

  render: ->
    React.DOM.span
      className: 'greeter-message'
      "Hello, #{@state.name}!"

rootNode = document.getElementById("greeter-box")
greeter = React.createFactory(Greeter)

component = ReactDOM.render(greeter(intialName: "Andy"), rootNode)
# <span class='greeter-message'>Hello, Andy!</span>

component.setState(name: 'Marcin')
# <span class='greeter-message'>Hello, Marcin!</span>
React.unmountComponentAtNode(rootNode)

component = ReactDOM.render(greeter(), rootNode)
# <span class='greeter-message'>Hello, World!</span>