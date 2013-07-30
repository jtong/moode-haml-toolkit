def load_component_template(component_name)
  return File.read("component/_#{component_name}.haml")
end

