class Trick < ApplicationRecord
mount_uploader:image,ImageUploader
    belongs_to :user
    has_many :videos,dependent: :destroy
    validates :name, presence: true,length: {minimum: 3}
  
end
