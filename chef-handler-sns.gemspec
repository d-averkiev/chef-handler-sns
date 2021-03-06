$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'chef/handler/sns/version'
chef_version =
  ENV.key?('CHEF_VERSION') ? "#{ENV['CHEF_VERSION']}" : ['>= 0.9.0']

Gem::Specification.new do |s|
  s.name = 'chef-handler-sns'
  s.version = ::Chef::Handler::Sns::VERSION
  s.date = '2015-12-28'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Chef SNS reports'
  s.description =
    'Chef report handler to send Amazon SNS notifications on failures or '\
    'changes, includes IAM roles support.'
  s.license = 'Apache-2.0'
  s.authors = %(Xabier de Zuazo)
  s.email = 'xabier@zuazo.org'
  s.homepage = 'http://zuazo.github.io/chef-handler-sns'
  s.require_path = 'lib'
  s.files = %w(LICENSE README.md) + Dir.glob('lib/**/*')
  s.test_files = Dir.glob('{test,spec,features}/*')
  s.required_ruby_version = Gem::Requirement.new('>= 2.0.0')

  s.add_dependency 'aws-sdk', '~> 2.0'
  s.add_dependency 'erubis', '~> 2.0'

  s.add_development_dependency 'chef', chef_version
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'minitest', '~> 5.7'
  s.add_development_dependency 'minitest-stub-const', '~> 0.5.0'
  s.add_development_dependency 'mocha', '~> 1.1'
  s.add_development_dependency 'coveralls', '~> 0.7'
  s.add_development_dependency 'simplecov', '~> 0.9'
  s.add_development_dependency 'rubocop', '~> 0.35.0'
  s.add_development_dependency 'should_not', '~> 1.1'
  s.add_development_dependency 'yard', '~> 0.8'
end
