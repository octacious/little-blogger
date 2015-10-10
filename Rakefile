directory 'gen'

task :default => 'gen' do
	require './scripts/generate'

	Dir.glob('posts/**/*.txt') do |post_path|
		# Remove the first part of the path, so that
		# the posts/ hierarchy will essentially be 'copied' over
		# to gen/.
		dirname, basename = File.split(post_path)
		dirname['posts'] = ''

		html_path = File.join('gen/', dirname, basename.sub(/\.txt\Z/, '.html'))
		html = Blogger.generate_html(IO.read(post_path))

		IO.write(html_path, html)
	end
end