module SengiriYaml
  require "yaml"
  require "pathname"

  class Loader
    # load divided yaml files
    # @param src_dir [String] divided yaml dir
    # @return [Hash] merged yaml hash
    def load_dir(src_dir)
      merged_content = ""

      Pathname.glob("#{src_dir}/*.yml") do |yaml_path|
        content = yaml_path.read.gsub(/^---$/, "")
        merged_content << content
      end

      YAML.load(merged_content)
    end
  end
end
