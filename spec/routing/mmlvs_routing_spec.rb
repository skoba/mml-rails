require 'spec_helper'
describe MmlvsController do
  describe 'routing' do
    it 'routes to /mmlvs/compare_vs_lb.html' do
      get('mmlvs/compare_vs_lb').should route_to('mmlvs#compare_vs_lb')
    end
  end
end
