from_file, to_file = ARGV
script = $0

puts "Copying from #{from_file} to #{to_file}"

# moved two operations to one line via tutorial asking
indata = File.open(from_file).read()

puts "The input file is #{indata.length} bytes long"

puts "Does the output file exist? #{File.exists? to_file}"

# found out chaining this way will auto close the file.
output = File.open(to_file, 'w').write(indata)

puts "Alright, all done."

=begin
1) require method: looks for file directly or searches based on predefined in PATH,
will not include twice if already has been required.
2) Removed some print and the STDIN.gets
3) File.open(to_file, 'w').write(File.open(from_file).read())
=end
