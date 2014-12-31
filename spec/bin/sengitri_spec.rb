describe SengiriYaml do
  describe "sengiri_yaml" do
    subject { `bundle exec ./bin/sengiri_yaml #{option}` }

    context "without 2 args" do
      let(:option){ "--help" }

      let(:help) do
        <<-EOS
sengiri_yaml <source_yaml> <destination_dir>
        EOS
      end

      it{ should eq help }
    end

    context "with 2 args" do
      let(:option)         { [source_yaml, destination_dir].join(" ")  }
      let(:source_yaml)    { "#{spec_dir}/fixtures/writer/hash.yml" }
      let(:destination_dir){ temp_dir }

      include_context "uses temp dir"

      it "should create divided yaml" do
        subject
        is_asserted_by{ Dir.glob("#{temp_dir}/*.yml").count == 2 }
      end
    end
  end
end
