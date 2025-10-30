import random

apple_juice = 15.5
orange_juice = 20
grape_juice = 10.25
total_volume = apple_juice + orange_juice + grape_juice
print("Total volume sold:", total_volume)
total_int = int(total_volume)
print("Total volume as integer:", total_int)
total_str = str(total_volume)
print("Today's total volume is " + total_str + " liters.")
bonus = random.randint(5, 10)
final_total = total_volume + bonus
print("Final total after bonus:", final_total)
