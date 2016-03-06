### Little Blogger

This is a minimal Ruby script for generating HTML pages out of your
blog posts. Instead of writing lots of HTML by hand, you can run this
script to generate the code for your website, quickly and efficiently!

Post filetypes supported: .txt

Usage:

Save your posts as text files in a folder named `posts` in the same directory as the script. You can organize them in any way you'd like, and even use subdirectories!

	$ gem install rake
	$ git clone https://github.com/trigonom/little-blogger.git
	$ cd little-blogger
	$ rake host

The generated HTML will be saved under a folder named 'site', which will be created if it doesn't already exist.
