public class FinancialForecast {

    // Recursive method to calculate forecasted value
    public static double forecast(double currentValue, double rate, int years) {
        if (years == 0) {
            return currentValue;
        }
        return forecast(currentValue * (1 + rate), rate, years - 1);
    }

    // Iterative method for optimization (optional)
    public static double forecastIterative(double currentValue, double rate, int years) {
        for (int i = 0; i < years; i++) {
            currentValue *= (1 + rate);
        }
        return currentValue;
    }

    public static void main(String[] args) {
        double initialValue = 10000;  // Starting value
        double growthRate = 0.08;     // 8% growth per year
        int years = 5;                // Number of years to forecast

        double futureValueRecursive = forecast(initialValue, growthRate, years);
        double futureValueIterative = forecastIterative(initialValue, growthRate, years);

        System.out.printf("Recursive Forecast after %d years: %.2f\n", years, futureValueRecursive);
        System.out.printf("Iterative Forecast after %d years: %.2f\n", years, futureValueIterative);
    }
}
