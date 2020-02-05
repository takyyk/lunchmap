class Report < ApplicationRecord
  validates :title, presence: true, length: { maximum: 255 }, uniqueness: true
  validates :body, presence: true, length: { maximum: 65_535 }

  belongs_to :user

  mount_uploader :report_image, ReportImageUploader
end
