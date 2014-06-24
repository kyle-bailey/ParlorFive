class Image < ActiveRecord::Base
	has_attached_file :media, styles: {
    thumb: '300x220>'
  }

  validates_attachment_content_type :media, :content_type => /\Aimage\/.*\Z/
end
