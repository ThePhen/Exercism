public class SalaryCalculator {

    public double salaryMultiplier(int daysSkipped) {
        return daysSkipped > 4 ? 0.85 : 1.0;
    }

    public int bonusMultiplier(int productsSold) {
        return productsSold > 19 ? 13 : 10;
    }

    public double bonusForProductsSold(int productsSold) {
        return productsSold * bonusMultiplier(productsSold);
    }

    public double finalSalary(int daysSkipped, int productsSold) {
        double gross = 1000 * salaryMultiplier(daysSkipped) + bonusForProductsSold(productsSold);
        return gross > 2000 ? 2000 : gross;
    } 
}
