class Song < ActiveRecord::Base
  belongs_to :playlist

  def self.total_play_count
    sum(:play_count)
  end

end
