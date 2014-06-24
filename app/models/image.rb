class Image < ActiveRecord::Base
	belongs_to :work
	has_attached_file :media, styles: {
    thumb: '300x220>'
  }

  validates_attachment_content_type :media, :content_type => /\Aimage\/.*\Z/
end
