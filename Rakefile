require './scripts/generate'

# Change this according to need.
SERVER_IP = "192.168.0.13"
SERVER_PORT = 80

directory 'site'
directory 'css'

directory 'site/css' => ['site', 'css'] do
	cp_r 'css', 'site/css'
end

POSTS = Dir.glob('posts/**/*.txt').to_a.map do |path|
	output_path = path.sub(/\Aposts/, 'site').sub(/\.txt\Z/, '.html')

	file output_path => path do
		IO.write(output_path,
			Blogger.generate_post(IO.read(path)))

		puts "=> #{path}"
	end

	output_path
end

file 'site/index.html' => 'site' do
	IO.write('site/index.html',
		Blogger.generate_index(POSTS))
end

task :build => ['site/css', 'site/index.html', *POSTS]

task :host => :default do
  require 'webrick'
  puts "Hosting at #{SERVER_IP}:#{SERVER_PORT}."
  puts "You can change this in the Rakefile."
  WEBrick::HTTPServer.new(:BindAddress => SERVER_IP, :Port => SERVER_PORT, :DocumentRoot => File.join(Dir.pwd, 'site')).start
end

task :default => :build
