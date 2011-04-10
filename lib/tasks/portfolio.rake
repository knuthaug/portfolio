require 'haml'

namespace :portfolio do

  task :render do
    template = File.read('templates/index.haml')
    haml_engine = Haml::Engine.new(template)
    output = haml_engine.render
    puts output
  end

end
