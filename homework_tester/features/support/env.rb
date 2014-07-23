$: << File.expand_path("../../lib", File.dirname(__FILE__))
require 'aruba/cucumber'

ENV['PATH'] = "../homework_assignments/#{ENV['STUDENT']}#{File::PATH_SEPARATOR}#{ENV['PATH']}"

puts ENV['PATH']

Before do
  @dirs = File.join(File.dirname(__FILE__), "../..")
end
