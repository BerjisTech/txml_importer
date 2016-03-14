require 'spec_helper'

describe TxmlImporter do
  it 'has a version number' do
    expect(TxmlImporter::VERSION).not_to be nil
  end

  describe '#stats' do
    it 'reports the stats of a .txml file' do
      file_path = File.expand_path('../txml_importer/spec/sample_files/sample_1.txml')
      txml = TxmlImporter::Txml.new(file_path: file_path)
      expect(txml.stats).to eq({:tu_count=>112, :seg_count=>224, :language_pairs=>[["FR-FR", "EN"]]})
    end
  end

  describe '#import' do
    it 'imports a .txml file' do
      file_path = File.expand_path('../txml_importer/spec/sample_files/sample_1.txml')
      txml = TxmlImporter::Txml.new(file_path: file_path).import
      expect(txml[0].length).to eq(112)
    end

    it 'imports a .txml file' do
      file_path = File.expand_path('../txml_importer/spec/sample_files/sample_1.txml')
      txml = TxmlImporter::Txml.new(file_path: file_path).import
      expect(txml[1].length).to eq(224)
    end

    it 'imports a .txml file' do
      file_path = File.expand_path('../txml_importer/spec/sample_files/sample_1.txml')
      txml = TxmlImporter::Txml.new(file_path: file_path).import
      expect(txml[0][0][0]).to eq(txml[1][0][0])
    end

    it 'imports a .txml file' do
      file_path = File.expand_path('../txml_importer/spec/sample_files/sample_1.txml')
      txml = TxmlImporter::Txml.new(file_path: file_path).import
      expect(txml[0][-1][0]).to eq(txml[1][-1][0])
    end

    it 'imports a .txml file' do
      file_path = File.expand_path('../txml_importer/spec/sample_files/sample_1.txml')
      txml = TxmlImporter::Txml.new(file_path: file_path)
      expect(txml.import[1][-1][1]).to eq('target')
    end
  end
end
