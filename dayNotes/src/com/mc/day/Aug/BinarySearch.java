package com.mc.day.Aug;

import java.util.Scanner;

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
        Scanner scn = new Scanner(System.in);
        int sn = scn.nextInt();
        int sb = scn.nextInt();
        int db = scn.nextInt();
        int m = 1, dec = 0, dn = 0;
        while (sn != 0) {
            dec = dec + (sn % 10) * m;
            m *= sb;
            sn /= 10;
        }
        m = 1;
        while (dec != 0) {
            dn = dn + (dec % db) * m;
            m *= 10;
            dec /= db;
        }
        System.out.println(dn);;
    }
}
