module SengiriYaml
  require "yaml"
  require "pathname"

  class Loader
    # load divided yaml files
    # @param src_dir [String] divided yaml dir
    # @return [Hash] merged yaml hash
    def load_dir(src_dir, permitted_classes: [], aliases: false)
      merged_content = ""

      Pathname.glob("#{src_dir}/*.yml").sort.each do |yaml_path|
        content = yaml_path.read.gsub(/^---$/, "")
        merged_content << content
      end

      YAML.safe_load(merged_content, permitted_classes: permitted_classes, aliases: aliases)
    end
  end
end
