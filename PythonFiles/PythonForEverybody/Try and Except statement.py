


try :
    hours = input("Enter in hours: ")
    rates = input("Enter in rates: ")
    float(hours)
    float(rates)
        
except:
    print("Please enter a numeric input!")



if float(hours) > 40:
    ratePerHour = float(hours) * float(rates)

    print("Rate for hours worked: ",ratePerHour)
else:
    5
    print("Did not work enough hours, consult manager!")