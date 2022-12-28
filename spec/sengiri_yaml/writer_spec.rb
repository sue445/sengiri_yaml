describe SengiriYaml::Writer do
  let(:writer){ SengiriYaml::Writer.new }

  describe "#divide" do
    subject{ writer.divide(src_file, dst_dir) }

    include_context "uses temp dir"

    let(:fixture_dir){ "#{spec_dir}/fixtures/writer" }
    let(:dst_dir)    { "#{temp_dir}/dst" }

    describe "with hash yaml" do
      let(:src_file){ "#{fixture_dir}/hash.yml" }

      let(:data1_file){ "#{dst_dir}/data1.yml" }
      let(:data1_yml) do
        <<-YAML
---
data1:
  value: 1
        YAML
      end

      let(:data2_file){ "#{dst_dir}/data2.yml" }
      let(:data2_yml) do
        <<-YAML
---
data2:
  value: 2
        YAML
      end

      before do
        # exercise
        subject
      end

      it{ should eq [data1_file, data2_file] }
      it { expect(File.read(data1_file)).to eq data1_yml }
      it { expect(File.read(data2_file)).to eq data2_yml }
    end

    describe "with array yaml" do
      let(:src_file){ "#{fixture_dir}/array.yml" }

      before do
        # exercise
        subject
      end

      let(:data1_file){ "#{dst_dir}/0.yml" }
      let(:data1_yml) do
        <<-YAML
---
- data1: data1
  value: 1
        YAML
      end

      let(:data2_file){ "#{dst_dir}/1.yml" }
      let(:data2_yml) do
        <<-YAML
---
- data2: data2
  value: 2
        YAML
      end

      before do
        # exercise
        subject
      end

      it{ should eq [data1_file, data2_file] }
      it { expect(File.read(data1_file)).to eq data1_yml }
      it { expect(File.read(data2_file)).to eq data2_yml }
    end
  end
end
