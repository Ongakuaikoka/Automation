import time
import os
from selenium import webdriver
from selenium.webdriver.common.by import By

driver = webdriver.Chrome()

#item = ("name", id, price_threshold)
item_set = [	("Mother's Sorrow IS", "10297", 20001), 
		("Aetherial Dust", "11807", 93001), 
		("Chromium Plating", "18124", 63001), 
		("Dreugh Wax", "211", 6001), 
		("Tempering Alloy", "5687", 3501), 
		("Chromium Grains", "17927", 6001),
		("Aetheric Cipher", "11894", 600001),
		("Worm Cult Gold", "17514", 500001),
		("Xivkyn Style", "6642", 300001),
		("Sword Of Vicious Death", "7533", 300001),
		("Perfect Roe", "6132", 8001),
		("Rosin", "2677", 1501),
		("Zircon Plating", "17799", 16001),
		("Potent Nirncrux", "3790", 14001),
		("Corn Flower", "511", 201),
		("Hakeijo", "4794", 15001)]


def check(name, threshold):

	price_box = driver.find_element(By.XPATH, "//*[contains(@class,'gold-amount bold')]")

	price_box_source = price_box.get_attribute('innerHTML')
	price_box_list = price_box_source.split()
	price = float(price_box_list[3].replace(',', ''))
	if price<threshold:
		last_seen = driver.find_element(By.XPATH, "//*[contains(@class,'bold hidden-xs')]").text
		if (last_seen == "Now") or ((int(last_seen.split()[0]) < 15) and (last_seen.split()[1] == "Minute")): 
			location = driver.find_element(By.XPATH, '//*[@id="body"]/table/tbody/tr[3]/td[2]/section/div/table/tbody/tr[1]/td[3]/div[1]').text
			guild = driver.find_element(By.XPATH, '//*[@id="body"]/table/tbody/tr[3]/td[2]/section/div/table/tbody/tr[1]/td[3]/div[2]').text	
			print ("LOW PRICE DETECTED")
			print (name," - ", price, " - ", last_seen)
			print (location, " - ", guild)
			print ("==================")
			os.system('say "psst, alert"')

try:
	while True:
		for item in item_set:
			driver.get("https://eu.tamrieltradecentre.com/pc/Trade/SearchResult?ItemID=" + item[1] + "&SortBy=Price&Order=asc")
			source = driver.page_source
			if ('captcha' in source):
				os.system('say "ffuck"')
				print ("CHANGE SERVER NOW")
				break
			if ('constraint' in source):
				continue
			else:
				check(item[0], item[2])
		t = time.localtime()
		current_time = time.strftime("%H:%M:%S", t)
		print(current_time)
		time.sleep(120)
except KeyboardInterrupt:
	print('interrupted!')

driver.quit()

