class Absence < Event
  validates :start_date, :end_date, :event_type, presence: true

  scope :today, (-> { where('start_date <= :today AND end_date >= :today', today: Time.zone.today) })

  # Contants
  #
  TYPES = %i(workshop vacation sick other).freeze
end

# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string
#  location    :string
#  start_date  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  event_type  :string
#  end_date    :date
#  user_id     :integer
#  type        :string
#  description :text
#
