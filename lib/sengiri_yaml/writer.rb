module SengiriYaml
  require "yaml"

  class Writer
    def split(src_file, dst_dir)
      FileUtils.mkdir_p(dst_dir) unless File.exist?(dst_dir)

      src_content = YAML.load_file(src_file)
      filenames = []

      case src_content
      when Hash
        src_content.each do |key, value|
          filename = "#{dst_dir}/#{key}.yml"
          File.open(filename, "wb") do |f|
            f.write({key => value}.to_yaml)
          end
          filenames << filename
        end

      when Array
        src_content.each_with_index do |element, index|
          filename = "#{dst_dir}/#{index}.yml"
          File.open(filename, "wb") do |f|
            f.write([element].to_yaml)
          end
          filenames << filename
        end

      else
        raise "Unknown type"
      end

      filenames
    end
  end
end
