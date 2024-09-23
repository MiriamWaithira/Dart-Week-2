# Dart-Week-2
This is Dart Week 2 Assignment. The program simulates an online shopping cart system. There are four types of functions used. The standard functions, anonymous functions, higher-order functions and recursive functions.

Functions of the different types of Functions used:
1. Standard Function: 'calculateTotal'- calculates the total price of all items in the cart, considering any applicable tax.
    1. It takes a list of item prices and the optional tax rate.

    2. It sums up all the prices using the 'reduce' method.

    3. It adds the tax if provided to this total.

    4. After any discount is applied, this function is called and used to compute the total price of the items, (3% in this case).

2. Anonymous Function: 'filterExpensiveItems'- used to filter out the items that have prices below the threshold($10 in this case).
    1. It will take the list of prices and the threshold value.

    2. It will use the anonymous function to determine which items should be included in the filtered list.

    3. The items priced below $10 will be eliminated and only the remaining ones will be considered for further calculations.

3. Higher-Order Function: 'applyDiscount'- this function is used to apply a discount to each item in the cart based on a discount function provided as an argument.
    1. It will take the list of prices and the discount function that specifies how much to reduce each price.

    2. The discount function will be applied to each price using the 'map' method.

    3. The function will apply a 10% discount to each item in the filtered cart then update the prices accordingly.

4. Recursive Function:'calculateFactorialDiscount'- this function calculates a special discount based on the factorial of the number of items in the cart. In our case, there are 6 items in the cart. Therefore the factorial discount percentage will be 6! percent.
    1. The number of items in the cart will be taken as an integer and the factorial calculated recursively.

    2. In the event that the number is 1 or less, it will return 1.

    3. In this case, there are 6 items in the cart. The 6!(6 factorial) is 720%

How the whole program runs:
1. The cheaper items will first be filtered. Only items priced at $10 and above remain.

2. A 10% discount will be applied to the remaining items.

3. It wil calculate the total cost of these discounted items, including the tax of 3%.

4. The factorial discount will be applied to the items. The factorial discount is determined by the number of items in the list.

Happy Coding!!!