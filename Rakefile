VERSION = File.read(File.join(File.dirname(__FILE__), "VERSION"))

desc "Build the websolr-sunspot_rails gem for local testing"
task :build do
  system "gem build websolr-sunspot_rails_geoding.gemspec"
end

desc "Release the websolr-sunspot_rails_geoding gem"
task :release => :build do
  version_tag = "v#{VERSION}"
  system "git tag -am 'Release version #{VERSION}' '#{version_tag}'"
  system "git push -f origin #{version_tag}:#{version_tag}"
  system "gem push websolr-sunspot_rails_geoding-#{VERSION}.gem"
  FileUtils.rm("websolr-sunspot_rails_geoding-#{VERSION}.gem")
end