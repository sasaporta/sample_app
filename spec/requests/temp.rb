require 'spec_helper'
require 'helpers/application_helper_spec.rb'

describe "Static pages" do
  include Helpers

  subject { page }

  describe "Home page" do
    before do
      visit root_path
      print "a\n"
    end

    describe "after creating one micropost" do
      before { print "b\n" }
      it "should indicate one micropost in the sidebar" do
        page.should have_content("")
      end
    end

    describe "after creating a second micropost" do
      before { print "c\n" }

      it "should indicate two microposts in the sidebar" do
        page.should have_content("")
      end
    end
  end
end
