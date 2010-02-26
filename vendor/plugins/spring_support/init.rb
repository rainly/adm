begin
  include 'java.lang.System'
  require 'spring_support'
rescue
  $stderr.puts "cannot load java class"
end
