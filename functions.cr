require "yaml"
require "./config.cr"

class Functions
  def initialize
    configs = Config.new
    @func_file = YAML.parse(File.read(configs.fonction_filename))
    @functions = Hash(String, String).new
    fill_function_hash
  end

  private def fill_function_hash
    @func_file.each do |key, value|
      @functions.merge!({key.to_s => value.to_s})
    end
  end

  def functions
    @functions
  end
end