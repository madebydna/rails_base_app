# to run test suite
# ruby test.rb
$:<<'test'  # add to load path
files = Dir.glob('test/**/*.rb') 
files.each{|file| require file.sub(/^test\/|.rb$/,'')}  