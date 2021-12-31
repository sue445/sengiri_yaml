require "sengiri_yaml/version"
require "sengiri_yaml/writer"
require "sengiri_yaml/loader"

module SengiriYaml
  module_function

  # load divided yaml files
  # @see SengiriYaml::Loader#load_dir
  def load_dir(src_dir, permitted_classes: [], aliases: false)
    SengiriYaml::Loader.new.load_dir(src_dir, permitted_classes: permitted_classes, aliases: aliases)
  end
end
