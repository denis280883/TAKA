class User < ActiveRecord::Base
  attr_accessible :email, :password_digest, :password, :password_confirmation, :avatar
  has_secure_password
  validates_presence_of :password, :on => :create
  validates :email, uniqueness: true, presence: true

  #use attached file with image paperclip
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
