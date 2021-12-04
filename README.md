# ScreenPlay UI Automation with Ruby

Project created for implementing examples on how to use the Screenplay pattern using the Ruby language.

The project has examples on automated UI tests using the Screenplay pattern. 

This project was created based on other projects of mine that were using the Automation Practice Website, so as a simple example on how to use the SP pattern, the System Under Test (SUT) used for the automated tests was the Selenium Automation Practice website, which can be found at: [Automation Practice](http://automationpractice.com/index.php)

### Project stack

The project uses the following stack:
- Ruby language;
- Capybara gem;
- SitePrism gem;
- RSpec gem;
- Rubocop as linter;

### How to execute the project

The project uses bundler as the default Ruby package manager, and Cucumber as the tests executor.

For installing the project needed gems, one should:
```
bundle install
```

For running all tests sequentially, one should:
```
bundle exec rspec spec
```

Any doubts, feel free to contact me.
