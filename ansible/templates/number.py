with open("index.html", "r+") as html_file:
    count = int(html_file.read())
    count += 1
    html_file.seek(0)
    html_file.truncate()
    html_file.write(str(count))
    html_file.close() 




