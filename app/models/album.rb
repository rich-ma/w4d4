# == Schema Information
#
# Table name: albums
#
#  id              :bigint(8)        not null, primary key
#  band_id         :integer          not null
#  live_recording? :boolean          default(FALSE)
#  title           :string           not null
#  year            :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Album < ApplicationRecord
  valides :band_id, :live_recording?, :title, :year, presence: true

  belongs_to :band,
  foreign_key: :band_id,
  class_name: :Band

  

end
