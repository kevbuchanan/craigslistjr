class Post < ActiveRecord::Base
  belongs_to :category
  before_save :generate_key

  private
  def generate_key
    self.key = Digest::MD5.hexdigest(self.title)
  end
end
