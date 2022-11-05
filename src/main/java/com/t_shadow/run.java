package com.t_shadow;

import java.util.Arrays;

public class run {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        int[] A = {-1,1,2,2};
        int N = 4;
        int[] child = new int[N];
        for(int i=1;i<N;i++)
        {
        	int index = A[i];
        	child[index-1]++;
        }
        int count = 0;
        for(int i=1;i<N;i++)
        	if(child[i]>0)
        		count++;
        System.out.println(count);
	}

}
