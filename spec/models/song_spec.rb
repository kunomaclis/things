require 'rails_helper'

RSpec.describe Song, type: :model do
  let(:song) { Song.new(name: "Thirty-three", artist: "The Smashing Pumpkins") }

  it 'has a name' do
    expect(song.name).to eq "Thirty-three"
  end

  it 'has an artist' do
    expect(song.artist).to eq "The Smashing Pumpkins"
  end
end
