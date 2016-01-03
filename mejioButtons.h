//
//  mejioButtons.h
//  ChatDemo
//
//  Created by Wrong on 15/11/5.
//  Copyright © 2015年 性用社. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef void(^faceStrBlock) (NSString *faceString);
@interface mejioButtons : UIViewController

/**
 *  用于封装按钮响应方法的block
 */
@property (nonatomic,copy)faceStrBlock block;

/**
 *  建立表情数组的成员属性
 */
@property(nonatomic,strong) NSMutableArray *phraseArray;
/**
 *  建立点击表情按钮对应字典的Value
 */
//@property (nonatomic,copy) NSString *faceString;

//设置表情的排序排列
//-(UIView*)faceButtonsWithframe:(CGRect)ViewFrame WithButtonImageArray:(NSMutableArray*)array WithFaceBounds:(CGRect)faceBounds;

/**
 *  类方法
 *
 *  @param frame 输入表情视图的大小
 *
 *  @return 返回表情视图
 */
+(UIView*)creatFaceArrayWithFaceViewFarme:(CGRect)frame WithBlock:(faceStrBlock)tempBlock;
/**
 *  实例方法
 *
 *  @param frame 输入表情视图的大小
 *
 *  @return 返回表情视图
 */
-(UIView*)creatFaceArrayWithFaceViewFarme:(CGRect)frame WithBlock:(faceStrBlock)tempBlock;





@end
