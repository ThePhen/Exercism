public class CarsAssemble {

    public double productionRatePerHour(int speed) {
        int best = speed * 221;
        if (speed <= 4)
            return best;
        if (speed <= 8)
            return best * 0.9;
        if (speed == 9)
            return best * 0.8;
        return best * 0.77;
    }

    public int workingItemsPerMinute(int speed) {
        return (int) (productionRatePerHour(speed) / 60);
    }
}
