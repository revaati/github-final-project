echo "Simple Interest Calculator"

read -p "Enter principal amount: " principal
read -p "Enter annual interest rate (%): " rate
read -p "Enter time period (years): " time

interest=$(echo "$principal * $rate * $time / 100" | bc)
total=$(echo "$principal + $interest" | bc)

echo ""
echo "Results:"
echo "--------"
echo "Principal Amount: $principal"
echo "Interest Rate: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $(printf "%.2f" "$interest")"
echo "Total Amount: $(printf "%.2f" "$total")"
