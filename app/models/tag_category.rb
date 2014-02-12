class TagCategory < ActiveRecord::Base
  validates :name, presence: true

  has_many :tags

  def to_s
    name
  end

  def to_label
    name.downcase
  end

  def self.for_select
    all.map { |category| [category, category.id] }
  end
end
