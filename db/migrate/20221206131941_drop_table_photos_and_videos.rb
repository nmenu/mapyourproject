class DropTablePhotosAndVideos < ActiveRecord::Migration[7.0]
  def change
    drop_table :photos
    drop_table :videos
  end
end
