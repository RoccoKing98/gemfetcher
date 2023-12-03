class CreateFileInputs < ActiveRecord::Migration[7.1]
  def change
    create_table :file_inputs do |t|

      t.timestamps
    end
  end
end
