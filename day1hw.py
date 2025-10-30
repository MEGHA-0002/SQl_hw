import random

rice_price = 45
sugar_price = 40
oil_price = 130

rice_qty = 3
sugar_qty = 2.5
oil_qty = 1.8

rice_total = rice_price * rice_qty
sugar_total = sugar_price * sugar_qty
oil_total = oil_price * oil_qty

print("Rice total:", rice_total)
print("Sugar total:", sugar_total)
print("Oil total:", oil_total)

total_bill = rice_total + sugar_total + oil_total
print("Total bill:", total_bill)
print("Total bill as integer:", int(total_bill))
print("Total bill as string: " + str(total_bill))

delivery_charge = random.randint(5, 10)
final_amount = total_bill + delivery_charge
print("Final bill with delivery charge:", final_amount)
