class AddImageToBoards < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :report_image, :string
  end
end
