require 'spec_helper'

describe Bibliothecary::Parsers::Bower do
  it 'has a platform name' do
    expect(described_class.platform_name).to eq('bower')
  end

  it 'parses dependencies from bower.json' do
    expect(described_class.analyse_file('bower.json', fixture_path('bower.json'))).to eq({
      :platform=>"bower",
      :path=>"spec/fixtures/bower.json",
      :dependencies=>[
        {:name=>"jquery", :requirement=>">= 1.9.1", :type=>"runtime"}
      ]
    })
  end

  it 'matches valid manifest filepaths' do
    expect(described_class.match?('bower.json')).to be_truthy
  end

  it "doesn't match invalid manifest filepaths" do
    expect(described_class.match?('node_modules/foo/bower.json')).to be_falsey
  end
end
