package com.mc.day.Aug;

import java.text.SimpleDateFormat;
import java.util.Date;

class BinarySearch  {




    private <T extends Comparable<T>> int search(T array[], T key, int left, int right){
        if (right < left) return -1; // this means that the key not found

        // find median
        int median = (left + right) >>> 1;
        int comp = key.compareTo(array[median]);

        if (comp < 0) {
            return search(array, key, left, median - 1);
        }

        if (comp > 0) {
            return search(array, key, median + 1, right);
        }

        return median;
    }

    // Driver Program
    public static void main(String[] args) {
        String a = "2019-09-21";
        Date b  = new Date("2019-06-23");
        Date c = new Date("2019-07-23");
/*        Date hopeReceiveDate = new SimpleDateFormat("yyyy-MM-dd").parse(a);
        Date hopeReceiveDate2 = new SimpleDateFormat("yyyy-MM-dd").parse("");*/
        if(b.before(c)){
            System.out.println("sss");
        }
    }
}
