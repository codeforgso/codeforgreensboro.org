guard :bundler do
  watch('Gemfile')
end

guard :livereload do
  watch(%r{app/views/.+\.(erb|haml|slim)$})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
  # Rails Assets Pipeline
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(scss|css|js|html))).*}) { |m| "/assets/#{m[3]}" }
end

guard :puma, force_run: true, port: 9292, daemon: true do
  watch('Gemfile.lock')
  watch(%r{^config|lib/.*})
end

notification :off

