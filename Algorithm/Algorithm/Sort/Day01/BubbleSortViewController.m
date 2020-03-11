//
//  BubbleSortViewController.m
//  Algorithm
//
//  Created by 葛聪颖 on 2020/3/11.
//  Copyright © 2020 葛聪颖. All rights reserved.
//

#import "BubbleSortViewController.h"

@interface BubbleSortViewController ()

@end

@implementation BubbleSortViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self bubbleSort];
}

/**
冒泡排序（Bubble Sort），是一种计算机科学领域的较简单的排序算法。
它重复地走访过要排序的元素列，依次比较两个相邻的元素，如果顺序（如从大到小、首字母从Z到A）错误就把他们交换过来。走访元素的工作是重复地进行直到没有相邻元素需要交换，也就是说该元素列已经排序完成。
这个算法的名字由来是因为越小的元素会经由交换慢慢“浮”到数列的顶端（升序或降序排列），就如同碳酸饮料中二氧化碳的气泡最终会上浮到顶端一样，故名“冒泡排序”
 
冒泡排序算法的原理如下： [1]
 比较相邻的元素。如果第一个比第二个大，就交换他们两个。 [1]
 对每一对相邻元素做同样的工作，从开始第一对到结尾的最后一对。在这一点，最后的元素应该会是最大的数。 [1]
 针对所有的元素重复以上的步骤，除了最后一个。 [1]
 持续每次对越来越少的元素重复上面的步骤，直到没有任何一对数字需要比较。
 
 原始数据: 28, 30, 19, 2, 23

 第一趟:

       第一次:28, 30, 19, 2, 23

       第二次:28, 19, 30, 2, 23

       第三次:28, 19, 2, 30, 23

       第四次:28, 19, 2, 23, 30

 第二趟:

       第一次:19, 28, 2, 23, 30

       第二次:19, 2, 28, 23, 30

       第三次:19, 2, 23, 28, 30

 第三趟:

       第一次:2, 19, 23, 28, 30

       第二次:2, 19, 23, 28, 30

 第四趟:

       第一次:2, 19, 23, 28, 3
*/

- (void)bubbleSort {
    int count  = 0;
    int forcount  = 0;
    BOOL flag = YES;
    NSMutableArray * arr = @[@16,@1,@2,@9,@7,@12,@5,@3,@8,@13,@10].mutableCopy;
    
    for (int i = 0; i < arr.count && flag; i++) {
        forcount++;
        flag = NO;
        for (int j = (int)arr.count-2; j >= i; j--) {
            count++;
            if ([arr[j] intValue]< [arr[j+1] intValue]) {
                [arr exchangeObjectAtIndex:j withObjectAtIndex:j+1];
                flag = YES;
            }
        }
        NSLog(@"%@", arr);
    }
    NSLog(@"循环次数：%d",forcount);
    NSLog(@"共%d次比较",count);
    //Algorithm[9580:2003085] 循环次数：10
    //Algorithm[9580:2003085] 共55次比较
}

@end
