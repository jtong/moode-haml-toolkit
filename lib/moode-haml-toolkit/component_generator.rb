class  Object < BasicObject

  haml_files = File.join("component", "*.haml")
  Dir.glob haml_files do |file|
    file_name = File.basename file , ".haml"
    method_name = file_name[1, file_name.length].to_sym
    if(not self.respond_to? method_name)
      self.send :define_method, method_name do |args = {}|
        template = load_component_template(method_name)
        Haml::Engine.new(template).render Object.new, args
      end
      puts "with component: #{method_name}"
    end
  end

  containers_files = File.join("component", "container", "*.haml")
  Dir.glob containers_files do |file|
    file_name = File.basename file , ".haml"
    method_name = file_name[1, file_name.length].to_sym
    if(not self.respond_to? method_name)
      self.send :define_method, method_name do |args = {}, &block|
        container "component/container/_#{method_name}.haml", args, &block
      end
      puts "with container: #{method_name}"
    end
  end
end

