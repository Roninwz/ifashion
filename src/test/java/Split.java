public class Split {

    public static void main(String[] args) {

        String s = "1,2,3,4,5";
        String[] as = s.split(",");
        for (int i = 0; i < as.length; i++) {
            System.out.println(as[i]);
        }
    }
}
