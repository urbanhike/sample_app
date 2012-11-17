require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do
    it "should have the h1 content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    it "should have the title '| Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', 
                        :text => "| Home")
    end
  end  

  describe "Help page" do
    it "should have the h1 content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    it "should have the title content '| Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', 
                            :text => '| Help')
    end
  end

  describe "About page" do
    it "should have the h1 content 'About' and 'Jake'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
      page.should have_selector('p', :text => 'Jake')
    end
    it "should have the title content 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title', 
                              :text => '| About')
    end
  end
end