require './scripts/generate'

directory 'site'
directory 'css'

directory 'site/css' => ['site', 'css'] do
	cp_r 'css', 'site/css'
end

POSTS = Dir.glob('posts/**/*.txt').to_a.map do |path|
	output_path = path.sub(/\Aposts/, 'site').sub(/\.txt\Z/, '.html')

	file output_path => path do
		IO.write(output_path,
			Blogger.generate_html(IO.read(path)))

		puts "=> #{path}"
	end

	output_path
end

file 'site/index.html' => 'site' do
	IO.write('site/index.html',
		Blogger.generate_index(POSTS))
end

task :default => ['site/css', 'site/index.html', *POSTS]