puma_tmp = File.expand_path(
  File.join(File.dirname(__FILE__), '..', 'tmp', 'puma')
)
FileUtils.mkdir_p puma_tmp
pidfile File.join(puma_tmp, 'puma.pid')
state_path File.join(puma_tmp, 'puma.state')

