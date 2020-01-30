class User < ApplicationRecord
  authenticates_with_sorcery!
  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :last_name, presence: true
  validates :first_name, presence: true

  has_many :reports, dependent: :destroy

  def report?(report)
    report.user_id == id
  end
end
