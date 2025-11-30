
class BirdWatcher {
    private final int[] birdsPerDay;

    public BirdWatcher(int[] birdsPerDay) {
        this.birdsPerDay = birdsPerDay.clone();
    }

    public int[] getLastWeek() {
        return birdsPerDay.clone();
    }

    public int getToday() {
        return birdsPerDay[birdsPerDay.length - 1];
    }

    public void incrementTodaysCount() {
        birdsPerDay[birdsPerDay.length - 1] += 1;
    }

    public boolean hasDayWithoutBirds() {
        for (int count : birdsPerDay) {
            if (count == 0) return true;
        }
        return false;
    }

    public int getCountForFirstDays(int numberOfDays) {
        int tot = 0;
        int max = birdsPerDay.length < numberOfDays ? birdsPerDay.length : numberOfDays;
        for (int i = 0; i < max; i++) {
            tot += birdsPerDay[i];
        }
        return tot;
    }

    public int getBusyDays() {
        int tot = 0;
        for (int count : birdsPerDay) {
            if (count > 4) tot++;
        }
        return tot;
    }
}
