from selenium import webdriver
from csv import DictReader

driver = webdriver.Chrome()
driver.get('https://web.whatsapp.com/')

def get_cookies_values(file):
    with open(file, encoding='utf-8-sig') as f:
        dict_reader = DictReader(f)
        list_of_dicts = list(dict_reader)
    return list_of_dicts

cookies = get_cookies_values('bottobot2\cookieswhastapp.csv')

for i in cookies:
    driver.add_cookie(i)

driver.refresh()