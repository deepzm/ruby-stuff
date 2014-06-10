require 'active_record_migrations'
require 'erb'

ActiveRecordMigrations.configure do |c|
  c.database_configuration = YAML.load(
    ERB.new(File.read 'config/database.yml').result
  )
end
ActiveRecordMigrations.load_tasks
