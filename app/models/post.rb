class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user

  has_attached_file :image, :styles => {:original =>'300x300', :thumb => '200x200'}
  validates_presence_of :image
  validates_attachment :image, presence => true,
                       :content_type => {:content_type => ['image/jpeg','image/jpg','image/png']}
end
