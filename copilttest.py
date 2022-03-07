#!/usr/bin/env python3
# Path: copilttest.py
print("Python esta funcionando")

#get name of video from youtube link
import re
import urllib.request
import urllib.parse
import urllib.error
import json
import ssl


# Ignore SSL certificate errors
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE


#url = input('Enter - ')
url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'


