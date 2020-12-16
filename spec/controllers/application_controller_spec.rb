require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  it { should use_before_action(:set_current_user) }
end