# app/assets/javascripts/components/articles.jsx.coffee
'use strict'

@Articles = React.createClass
  getInitialState: ->
    articles: @props.data

  getDefaultProps: ->
    articles: []

  render: ->
    `<div className='col-sm-8 blog-main'>
      {this.state.articles.map(function(article) {
        return (
          <div className='blog-post'>
            <h2 className='blog-post-title'><a href='/articles/{article.id}'>{article.title}</a></h2>
            <p>{article.content}</p>
            <p className='pull-right'>
              <a href='/articles/{article.id}' className='btn btn-xs btn-info'>View</a>
              <a href='/articles/{article.id}' className='btn btn-xs btn-warning'>Edit</a>
              <a href='/articles/{article.id}' className='btn btn-xs btn-danger' data-method='delete' rel='nofollow'>Delete</a>
            </p>
          </div>
        );
      })}
    </div>`
