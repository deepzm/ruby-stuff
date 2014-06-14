require 'active_record'
require 'erb'

database_configuration ||= YAML.load(
  ERB.new(File.read 'config/database.yml').result
)
ActiveRecord::Base.establish_connection(database_configuration['development'])
