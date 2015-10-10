directory 'gen'

task :default => 'gen' do
	Dir.glob('posts/**/*.txt') do |post_path|
		`ruby scripts/generate.rb #{post_path}`
		basename = File.basename(post_path, '.txt')
		puts "=> #{basename}"
	end
end