# -*- coding: utf-8 -*-
require 'spec_helper'

describe "StaticPages" do
  
 describe "Home page" do  
  it "debe aparecer la frase 'Sample App' en tag h1" do
   visit '/static_pages/home'
   page.should have_selector('h1', :text => 'Sample App')
  end
  it "debe contener el título Home" do
   visit '/static_pages/home'
   page.should have_selector('title', 
          :text => 'Ruby on Rails Tutorial Sample App | Home')
  end 
 end

 describe "Help page" do
  it "debe aparecer la frase 'Help' en tag h1" do
   visit '/static_pages/help'
   page.should have_selector('h1', :text => "Help")
  end
  it "debe contener el título help" do
   visit '/static_pages/help'
   page.should have_selector('title',
      :text => "Ruby on Rails Tutorial Sample App | Help")
  end
 end

 describe "About page" do
  it "debe aparecer la frase 'About Us' en tag h1." do
   visit '/static_pages/about'
   page.should have_selector('h1', :text => "About Us")
  end
  it "debe contener el título About Us" do
   visit '/static_pages/about'
   page.should have_selector('title', 
        :text => "Ruby on Rails Tutorial Sample App | About Us")
  end
 end

end
