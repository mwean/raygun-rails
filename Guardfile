# More info at https://github.com/guard/guard#readme

livereload = lambda do
  watch(%r{app/views/.+\.haml$})
  watch(%r{app/helpers/.+\.rb})
  watch(/public\/.+\.(css|js|html)/)
  watch(%r{config/locales/.+\.yml})

  # Rails Assets Pipeline
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(css|scss))).*}) { '/assets/application.css' }
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(js))).*}) { '/assets/application.js' }
end

guard(:livereload, host: 'localhost') { livereload.call }
guard(:livereload, host: 'app_prototype.dev') { livereload.call }
