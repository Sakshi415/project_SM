

require 'zip'

Zip::File::create('my_archive.zip') do |zipfile|
  zipfile.add('file1.txt', 'file1.txt')
  zipfile.add('file2.txt', 'file2.txt')
end