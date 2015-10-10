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

end
