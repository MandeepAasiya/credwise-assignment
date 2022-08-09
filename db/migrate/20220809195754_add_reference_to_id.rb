class AddReferenceToId < ActiveRecord::Migration[7.0]
  def change
    add_reference :documents, :user, index: true
  end
end
