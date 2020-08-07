class Service < ApplicationRecord
  belongs_to :campaign

  enum status: [:live, :saved, :rejected]

  validate :total_subscription_connot_be_greater_than_total_vacancies

  def total_subscription_connot_be_greater_than_total_vacancies
    if total_subscriptions > total_vacancies
      erros.add(:total_subscriptions, "can't be grater than total vacancies")
    end
  end
  
  before_save :calculate_total_earned

  def calculate_total_earned
    amount = self.subscription_cost * self.total_subscriptions
    self.total_earned = amount
  end

end
