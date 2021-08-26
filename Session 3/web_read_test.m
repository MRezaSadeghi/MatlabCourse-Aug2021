clc; clear
city = input("Enter the city name: ", 's');
fprintf("Loading ...\n")
url = "https://www.timeanddate.com/weather/iran/" + city;
web_data = webread(url);
index = strfind(web_data, 'class=h2>');
temp = str2double(web_data(index + 9:index + 10));
pause(0.5)
fprintf("Temperature: %d C\n", temp)

