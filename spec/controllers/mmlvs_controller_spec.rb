require 'spec_helper'

describe MmlvsController do
  describe 'GET index ' do
    before do
      @mmlvs = FactoryGirl.create(:mmlvs_with_vital_signs)
    end

    it 'should' do
      get :index
      assigns(:mmlvs).should eq [@mmlvs]
    end
  end
end
