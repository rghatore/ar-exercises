class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_interger: true,  greater_than: 0 }
  validate :men_or_women

  def men_or_women
    unless mens_apparel.present? || womens_apparel.present?
      errors.add(:base, "Shop must sell either mens or womens apparel")
    end
  end

end
