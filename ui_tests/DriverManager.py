from webdriver_manager.chrome import ChromeDriverManager


class DriverManager:

    def install_chrome_driver(self):
        return ChromeDriverManager().install()

