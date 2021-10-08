# == Schema Information
#
# Table name: blocks
#
#  id           :uuid             not null, primary key
#  block_type   :string           default("paragraph"), not null
#  format       :json
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  page_id      :uuid             not null
#  text         :string           default("")
#  image_url    :string           default("")
#  list_index   :integer          default(1)
#  checked      :boolean          default(FALSE)
#  expanded     :boolean          default(TRUE)
#  link_page_id :string           default("")
#  icon         :string           default("")
#
class Block < ApplicationRecord
  belongs_to :page,
    foreign_key: :page_id,
    class_name: :Page

end
