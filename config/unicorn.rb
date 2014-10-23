# http://unicorn.bogomips.org/
# https://blog.heroku.com/archives/2013/2/27/unicorn_rails
# http://devblog.thinkthroughmath.com/blog/2013/02/27/managing-request-queuing-with-rails-on-heroku/

listen ENVied.PORT, backlog: ENVied.UNICORN_BACKLOG
worker_processes ENVied.UNICORN_WORKERS
timeout ENVied.UNICORN_TIMEOUT
preload_app true

before_fork do |_server, _worker|
  Signal.trap 'TERM' do
    puts 'Unicorn master intercepting TERM and sending myself QUIT instead.'
    Process.kill 'QUIT', Process.pid
  end

  ActiveRecord::Base.connection.disconnect! if defined?(ActiveRecord::Base)
end

after_fork do |_server, _worker|
  Signal.trap 'TERM' do
    puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT.'
  end

  ActiveRecord::Base.establish_connection if defined?(ActiveRecord::Base)
end
