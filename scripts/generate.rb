#!/usr/bin/env ruby

module Blogger

  def self.tag(name, *contents)
    "<#{name}>#{contents.join}</#{name}>"
  end

  def self.ctag(name, flags={})
    pairs = flags.map { |k, v| "#{k}=\"#{v}\"" }
    "<#{name} #{pairs.join ' '} />"
  end

  def self.generate_post(post_text)
    "<!DOCTYPE html>\n" + tag('html',
      tag('head',
        tag('title', 'A post'),
        ctag('link', rel: 'stylesheet', type: 'text/css', href: '/css/post.css'),
      tag('body',
        tag('p', %Q|<a href="/">Go back</a>|),
        tag('p', '---'),
        tag('p', post_text))))
  end

  def self.generate_index(post_urls)
  	urls = post_urls.map do |u|
      # Post urls currently include the 'site/' part,
      # so we need to get rid of that.
      u['site/'] = '/'
      tag('p', %Q|<a href="#{u}">#{u}</a>|)
    end

  	"<!DOCTYPE html>\n" + tag('html',
  		tag('head',
        tag('title', 'List of Posts'),
        ctag('link', rel: 'stylesheet', type: 'text/css', href: '/css/index.css'),
  		tag('body', urls.join)))
  end

end
