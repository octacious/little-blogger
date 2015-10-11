require './scripts/generate'
directory 'site'

POSTS = Dir.glob('posts/**/*.txt').to_a.map do |path|
	output_path = path.sub(/\Aposts/, 'site').sub(/\.txt\Z/, '.html')

	file output_path => path do
		IO.write(output_path,
			Blogger.generate_html(IO.read(path)))

		puts "=> #{path}"
	end

	output_path
end

task :default => 'site'
task :default => POSTS