public class JedliksToyCar {

    private int battLvl = 100;

    public static JedliksToyCar buy() {
        return new JedliksToyCar();
    }

    public String distanceDisplay() {
        int distDriven = (100 - battLvl) * 20;
        return "Driven " + distDriven + " meters";
    }

    public String batteryDisplay() {
        if (battLvl <= 0) return "Battery empty";
        return "Battery at " + battLvl + "%";
    }

    public void drive() {
        battLvl -= 1;
        if (battLvl < 0) battLvl = 0;
    }
}
