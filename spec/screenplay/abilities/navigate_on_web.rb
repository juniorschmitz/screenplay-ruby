# frozen_string_literal: true

class NavigateOnWeb
  def self.with(driver)
    Capybara.register_driver :selenium do |app|
      case driver
      when :chrome
        caps = Selenium::WebDriver::Remote::Capabilities.chrome('goog:chromeOptions' => { 'args' => ['--ignore-ssl-errors', '--ignore-certificate-errors', '--disable-popup-blocking',
                                                                                                     '--disable-gpu', '--disable-translate', '--start-maximized', '--incognito', '--no-sandbox', '--acceptInsecureCerts=true', '--window-size=1420,835',
                                                                                                     '--disable-impl-side-painting', '--debug_level=3'] })
        if ENV['HEADLESS']
          caps['goog:chromeOptions']['args'] << '--headless'
          caps['goog:chromeOptions']['args'] << '--disable-site-isolation-trials'
        end
        client = Selenium::WebDriver::Remote::Http::Default.new
        client.read_timeout = 90
        options = { browser: :chrome, desired_capabilities: caps, http_client: client }
      end
      Capybara::Selenium::Driver.new(app, options)
    end
    Capybara.default_driver = :selenium
    Capybara.app_host = $URL
  end
end
