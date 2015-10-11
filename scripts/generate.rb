#!/usr/bin/env ruby

module Blogger

  def self.tag(name, *contents)
    "<#{name}>#{contents.join}</#{name}>"
  end

  def self.generate_html(post_text)
    tag('html',
      tag('head', tag('title', 'A post')),
      tag('body', tag('p', post_text)))
  end

  def self.generate_index(post_urls)
  	urls = post_urls.map do |u|
      # Post urls currently include the 'site/' part,
      # so we need to get rid of that.
      u['site/'] = '/'
      tag('p', %Q|<a href="#{u}">#{u}</a>|)
    end

  	tag('html',
  		tag('head', tag('title', 'List of Posts')),
  		tag('body', urls.join))
  end

end
