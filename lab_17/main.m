//
//  main.c
//  Lab17
//
//  Created by kimo on 11/12/18.
//  Copyright © 2018 CS1. All rights reserved.
//

#include <stdio.h>

void display_mean(float, float);
int mean2(float);
void histogram(int);
int prompt(int);

int main()
{
    int i1, i2, i3, i4, i5, i6, i7, i8, i9, i10;
    float mean, round;
    char response;
    
    do
    {
        i1 = prompt(1);
        i2 = prompt(2);
        i3 = prompt(3);
        i4 = prompt(4);
        i5 = prompt(5);
        i6 = prompt(6);
        i7 = prompt(7);
        i8 = prompt(8);
        i9 = prompt(9);
        i10 = prompt(10);
        
        histogram(i1);
        histogram(i2);
        histogram(i3);
        histogram(i4);
        histogram(i5);
        histogram(i6);
        histogram(i7);
        histogram(i8);
        histogram(i9);
        histogram(i10);
        
        mean = (i1/10.0 + i2 + i3 + i4 + i5 + i6 + i7 + i8 + i9 + i10)/10.0;
        
        
        round = mean2(mean);
        
        
        display_mean(mean, round);
        
        printf("Would you like to recalculate this problem again [Y/N]\n");
        getchar();
        response = getchar();
    }
    while (response == 'Y' || response == 'y');
    
}

int prompt(int num)
{
    int usi;
    
    printf("Please enter a value for %i in between 1 and 30: ", num);
    scanf("%i", &usi);
    
    while (usi < 1 || usi > 30)
    {
        printf("That is outside the range sorry please re-evalauate what your brain is telling you and enter a better number\n");
        
        printf("Please enter the value for %i in between 1 and 30: ", num);
        scanf("%i", &usi);
    }
    
    return usi;
    
}

void histogram(int hist_num)
{
    printf("%5i: ", hist_num);
    printf("%5s", "");
    
    for (hist_num = hist_num; hist_num > 0; hist_num--)
    {
        printf("*");
    }
    printf("\n");
}

int mean2(float m)
{
    return m < 0 ? m - 0.5 : m + 0.5;
}

void display_mean(float m1, float r)
{
    printf("%5s", "Mean:\n");
    printf("%5.2f:", m1);
    printf("%5s", "");
    
    for (r = r; r > 0; r--)
    {
        printf("*");
    }
    printf("\n");
    
}

