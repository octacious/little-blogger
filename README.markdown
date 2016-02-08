### Little Blogger

This is a minimal Ruby script for generating HTML pages out of your
blog posts. Instead of writing lots of HTML by hand, you can run this
script to generate the code for your website, quickly and efficiently!

Post filetypes supported: .txt

Usage:

1. Save your posts as files in a folder named `posts` in the same directory as the script. You can organize them in any way you'd like, and even use subdirectories!
2. Generate your website using Ruby with the `rake` gem: `rake`.
3. The generated HTML will be saved under a folder named 'site', which will be created if it doesn't already exist.

Go ahead and host the website under a HTML server of your liking, or host a tiny server (courtesy of [Barking Iguana](http://barkingiguana.com/2010/04/11/a-one-line-web-server-in-ruby/))!

	$ # Clone the repo to ./little-blogger
	$ cd little-blogger
	$ rake
	$ ruby -rwebrick -e'WEBrick::HTTPServer.new(:Port => 3000, :DocumentRoot => File.join(Dir.pwd, 'site')).start'
