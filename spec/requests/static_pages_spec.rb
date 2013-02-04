# -*- coding: utf-8 -*-
require 'spec_helper'

describe "StaticPages" do
  
 describe "Home page" do  
  it "debe aparecer la frase 'Sample App' en tag h1" do
   visit root_path
   page.should have_selector('h1', :text => 'Sample App')
  end
  it "debe contener el título básico" do
   visit root_path
   page.should have_selector('title', 
          :text => 'Ruby on Rails Tutorial Sample App')
  end
  it "no tiene un título por defecto" do
   visit '/static_pages/home'
   page.should_not have_selector('title',:text => '| Home') 
  end
 end

 describe "Help page" do
  it "debe aparecer la frase 'Help' en tag h1" do
   visit help_path
   page.should have_selector('h1', :text => "Help")
  end
  it "debe contener el título help" do
   visit help_path
   page.should have_selector('title',
      :text => "Ruby on Rails Tutorial Sample App | Help")
  end
 end

 describe "About page" do
  it "debe aparecer la frase 'About Us' en tag h1." do
   visit about_path
   page.should have_selector('h1', :text => "About Us")
  end
  it "debe contener el título About Us" do
   visit about_path
   page.should have_selector('title', 
        :text => "Ruby on Rails Tutorial Sample App | About Us")
  end
 end

 describe "Contact page" do
  it "debe aparecer la frase 'Contact' en tag h1." do
   visit contact_path
   page.should have_selector('h1', :text => "Contact")
  end
  it "debe contener el título Contact" do
   visit contact_path
   page.should have_selector('title',
        :text => "Ruby on Rails Tutorial Sample App | Contact")
  end 
 end

end
