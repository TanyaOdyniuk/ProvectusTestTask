package util;

import java.util.List;

public class Utils {
    public static List removeSubList(List from, List what) {
        for(int i = 0; i < what.size(); i++) {
            from.remove(what.get(i));
        }
        return from;
    }
}
