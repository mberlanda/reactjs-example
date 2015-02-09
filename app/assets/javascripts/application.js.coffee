#= require jquery
#= require jquery_ujs
#= require react
#= require_tree .

$ ->
  virtualDom = (linkText) ->
    React.DOM.div(
      {id: "render-me-react-please"},
      React.DOM.a(
        {href:"javascript:void(0)"},
        linkText
      )
    )

  React.renderComponent(
    virtualDom("Click me"),
    document.body
  )

  $( "a" ).click(->
    React.renderComponent(
      virtualDom("You clicked me"),
      document.body
    )
  );
