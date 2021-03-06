class Category < ActiveRecord::Base
	validates :name, presence: true
	has_many :articles

  def to_param
    "#{id} #{name}".parameterize
  end
end
