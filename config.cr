require "yaml"

class Config
  def initialize
    @configs = YAML.parse(File.read("configs.yml"))
  end

  def fonction_filename
    @configs["functions_file_name"].to_s
  end
end