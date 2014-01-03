require 'spec_helper'

describe Appointment do
  let(:appointment){ FactoryGirl.create(:appointment) }
  subject { appointment }

  context 'factory' do
    it 'has a student association' do
      expect(appointment.student).to_not eql nil
    end
    it 'has an expert association' do
      expect(appointment.expert).to_not be nil
    end
  end
end
