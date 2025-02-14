import requests

proxies = {
    'http': 'http://52.234.42.212:8888',
    'https': 'https://52.234.42.212:8888',
}

out = requests.get("https://www.baidu.com/", proxies=proxies, timeout=5)
print(out)

