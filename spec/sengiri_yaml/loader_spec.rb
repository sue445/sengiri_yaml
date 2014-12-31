describe SengiriYaml::Loader do
  let(:loader){ SengiriYaml::Loader.new }

  describe "#load_dir" do
    subject{ loader.load_dir(fixture_dir) }

    let(:fixture_dir){ "#{spec_dir}/fixtures/loader" }
    let(:merged_hash) do
      {
        'data1' => { 'value' => 1 },
        'data2' => { 'value' => 2 },
      }
    end

    it{ should eq merged_hash }
  end
end
