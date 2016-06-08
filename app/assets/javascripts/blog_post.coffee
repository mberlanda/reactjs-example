DOM = React.DOM

BlogPost = React.createClass
  getInitialState: ->
    fullContentVisible: false
  render: ->
    DOM.div
      className: 'blog-content'
      DOM.h1
        key: 'blog-title'
        className: 'title'
        @props.blogpost.title
      DOM.p
        key: 'blog-lead'
        className: 'lead'
        @props.blogpost.lead
      DOM.a
        key: 'blog-more'
        href: "#!/more"
        onClick: @continueReadingClicked
        "Continue reading ->"
      if @state.fullContentVisible
        DOM.div
          key: 'blog-full-content'
          @props.blogpost.fullContent
  
  continueReadingClicked: (event) ->
    unless @state.fullContentVisible
      @pros.metricsAdapter.track('full-content-hit')
    @setState fullContentVisible: true

blogPost = React.createFactory(BlogPost)
post = blogPost(metricsAdapter: @googleAnalyticsAdapter)
componentInstance = ReactDOM.renderComponent(post, document.getElementById('blog'))