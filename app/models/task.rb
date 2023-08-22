class Task < ApplicationRecord
  def change
    add_column :completed, :boolean, default: false
  end
end
