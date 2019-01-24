RSpec.describe Song do
  describe "Class Methods" do
    describe ".total_play_count" do
      it "returns total play counts for all songs" do
        Song.create(title: "Song 1", length: 180, play_count: 3)
        Song.create(title: "Song 2", length: 220, play_count: 4)

        expect(Song.total_play_count).to eq(7)
      end
    end
  end
end 
