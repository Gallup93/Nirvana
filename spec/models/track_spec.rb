require 'rails_helper'

describe Track, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :album_name }
    it { should validate_presence_of :run_time }
    it { should validate_presence_of :studio }
    it { should validate_presence_of :live }
    it { should validate_presence_of :cover }
  end
end
