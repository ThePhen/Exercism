import java.util.List;

public class IntergalacticTransmission {

    private int numOutputBytes(int numInputBytes) {
        return (int)Math.ceil(numInputBytes * 8) / 7;
    }

    public static List<Integer> getTransmitSequence(List<Integer> message) {
        
        throw new UnsupportedOperationException("Delete this statement and write your own implementation.");
    }

    public static List<Integer> decodeSequence(List<Integer> sequence) {
        throw new UnsupportedOperationException("Delete this statement and write your own implementation.");
    }

}
