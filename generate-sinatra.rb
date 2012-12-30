def exec_with_status(cmd, inputs_hash)
  puts "- `rvm use #{inputs_hash[:rvm]}; #{cmd}`"
  `rvm use #{inputs_hash[:rvm]}; #{cmd}`
end

DEFAULTS = {
  rvm: '1.9.3-head'
}

inputs = {}

exec_with_status("touch app.rb", inputs)
exec_with_status("touch config.rb", inputs)
exec_with_status("touch Gemfile", inputs)
exec_with_status("mkdir public", inputs)
exec_with_status("mkdir views", inputs)
exec_with_status("mkdir views/images", inputs)
exec_with_status("mkdir views/javascripts", inputs)
exec_with_status("mkdir views/stylesheets", inputs)

