class Questionary < ApplicationRecord
  before_create :generate_url
  belongs_to :user
  has_many :questions


  # def to_param
  #   self.permalink
  # end

  private 
  # Generates an 8 character alphanumeric id
  def generate_url
    self.url = SecureRandom.hex(8)
  end 
end
