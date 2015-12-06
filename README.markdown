### Little Blogger

This is a minimal Ruby script for generating HTML pages out of your
blog posts. Instead of writing lots of HTML by hand, you can run this
script to generate the code for your website, quickly and efficiently!

Post filetypes supported: .txt

Usage:

1. Save your posts as files in a folder named `posts` in the same directory as the script. You can organize them in any way you'd like, and even use subdirectories!
2. Generate your website using Ruby with the `rake` gem: `rake`.
3. The generated HTML will be saved under a folder named 'gen', which will be created if it doesn't already exist.

Go ahead and host the website under a HTML server of your liking, or use Barking Iguana's web-server one-liner!

```
# cd /path/to/project/root
# ruby -rwebrick -e'WEBrick::HTTPServer.new(:Port => 3000, :DocumentRoot => Dir.pwd).start'
```
