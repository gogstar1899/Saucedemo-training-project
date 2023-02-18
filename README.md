# Saucedemo test automation training project

This is my training automation project.
Main goal is to practice Ruby, Rspec, Selenium and Capybara.

## Description

This repository contains test plan, test scenarios, test cases and  basic automation test scrips for main funcionality of fake web-store application created for practicing automation.
I am using selenium-webdriver because it is the most popular open-source automated testing framework used to validate web applications across different browsers and platforms, also I am using Rspec to write my tests.
My aim is to learn the basics of creating project from scratch, trying to implement good practices like - don't repeat yourself, code reusability, practicing creating of project sceleton, creating separate file for test data, implementing page object model. Learn how to use code style checkers like rubocop gem and debugging tool like pry.

## Prerequisites

You will need:

```
homebrew
ruby 3.1.3
bundler
```

### Installing

Fork this repository

```
git clone <your fork>
```

cd into your cloned directory 

```
bundle install
```

You should get this message

```
Bundle complete! 11 Gemfile dependencies, 51 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
```

to run one spec when you are in project main folder

```
bundle exec rspec ./spec/features/<spec name>
```

to run all specs when you are in project main folder

```
bundle exec rspec
```

## This repository contain end to end test for https://saucelabs.com

The tests in this repository tests the main functionality on https://saucelabs.com like
login functionality, menu functionality, checkout functionality, etc.

menu_functionality_spec.rb results:

```
MenuOptions
  verify that can login with valid username and valid password
  verify that there is "menu" button in the website
  verify that the user can close the menu
  verify that the "ALL ITEM" submenu navigate to the right page
  verify that the "LOGOUT" submenu is logout the user from the account

Finished in 5.24 seconds (files took 0.93991 seconds to load)
5 examples, 0 failures
```

## Built With

* [RSpec](https://rspec.info/) - The testing framework used.
* [Selenium-WebDriver](https://www.selenium.dev/documentation/webdriver/) - web framework that permits to execute cross-browser tests.
* [Bundler](https://bundler.io/) - Gem Dependency Management.

## Authors

* **Georgi Demirev** [gogstar1899](https://github.com/gogstar1899)

## Acknowledgments

* Special thanks to SAUCELABS(https://saucelabs.com) for providing this website.
