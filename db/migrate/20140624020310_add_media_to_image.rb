class AddMediaToImage < ActiveRecord::Migration
  def self.up
    add_attachment :images, :media
  end

  def self.down
    remove_attachment :images, :media
  end
end
