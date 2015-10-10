#!/usr/bin/env ruby

class String
  def decorate(left, right)
    "#{left}#{self}#{right}"
  end
end

# Read the post and convert it to HTML.
raise "Usage: #{$0} filename.txt" if ARGV.empty?
text = File.read(ARGV[0])
html = '<html><head><title>A post</title></head><body>' + text.decorate('<p>', '</p>') + '</body></html>'

basename = File.basename(ARGV[0], '.txt')
File.write(File.join('gen', basename + '.html'), html)