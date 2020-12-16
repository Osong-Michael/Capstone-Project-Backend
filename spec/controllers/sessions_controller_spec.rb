require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  it { should route(:post, '/sessions').to(action: :create) }
  it { should route(:delete, '/logout').to(action: :logout) }
end