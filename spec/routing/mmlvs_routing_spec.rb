require 'spec_helper'
describe MmlvsController do
  describe 'routing' do
    it 'routes to /mmlvs/compare_vs_lb.html' do
      expect(get('mmlvs/compare_vs_lb')).to route_to('mmlvs#compare_vs_lb')
    end
  end
end
