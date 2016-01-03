
//
//  mejioButtons.m
//  ChatDemo
//
//  Created by Wrong on 15/11/5.
//  Copyright © 2015年 性用社. All rights reserved.
//

#import "mejioButtons.h"
#import "myButton.h"
@implementation mejioButtons

/**
 *  设置表情的排序排列
 */
-(UIView*)faceButtonsWithframe:(CGRect)ViewFrame WithButtonImageArray:(NSMutableArray*)array WithBlock:(faceStrBlock)tempBlock
{
    UIView *bgView=[[UIView alloc]initWithFrame:ViewFrame];
    /**
     *  设置表情的行数
     */
    if (array!=nil) {
        int numOfHeigh=(int)array.count/5;
        if (array.count%5) {
            numOfHeigh=(int)array.count/5+1;
        }
        
        
        /**
         *  设置每个表情的高度
         */
        CGFloat faceOfHeight=bgView.frame.size.height/numOfHeigh;
        /**
         *  设置每个表情的宽度
         */
        CGFloat faceOfWidth=faceOfHeight/76*60;
        
        /**
         *  图片的间距
         */
        CGFloat flagW=(bgView.frame.size.width-faceOfWidth*5)/6;
        
        for (int j = 0 ; j<numOfHeigh; j++ ) {
            
#pragma mark  在这处理表情重复
            for (int i = j*5 ; i<j*5+5; i++ ) {

                if (i<array.count) {
                    NSMutableDictionary *tempdic = [array objectAtIndex:i];
                    
                    static UIImage *tempImage;
                    
                    switch (i) {
                        case 0:
                            tempImage = [tempdic valueForKey:[NSString stringWithFormat:@"[奥]"]];
                            break;
                            
                            
                        case 1:
                            tempImage = [tempdic valueForKey:[NSString stringWithFormat:@"[暴露了]"]];
                            break;
                            
                            
                        case 2:
                            tempImage = [tempdic valueForKey:[NSString stringWithFormat:@"[闭嘴]"]];
                            break;
                            
                            
                        case 3:
                            tempImage = [tempdic valueForKey:[NSString stringWithFormat:@"[大哭]"]];
                            break;
                            
                            
                        case 4:
                            tempImage = [tempdic valueForKey:[NSString stringWithFormat:@"[额]"]];
                            break;
                            
                            
                        case 5:
                            tempImage = [tempdic valueForKey:[NSString stringWithFormat:@"[嗯哼]"]];
                            break;
                            
                            
                        case 6:
                            tempImage = [tempdic valueForKey:[NSString stringWithFormat:@"[尴尬]"]];
                            break;
                            
                            
                        case 7:
                            tempImage = [tempdic valueForKey:[NSString stringWithFormat:@"[哈哈]"]];
                            break;
                            
                            
                        case 8:
                            tempImage = [tempdic valueForKey:[NSString stringWithFormat:@"[嘿嘿]"]];
                            break;
                            
                            
                            
                        case 9:
                            tempImage = [tempdic valueForKey:[NSString stringWithFormat:@"[坏笑]"]];
                            break;
                            
                            
                        case 10:
                            tempImage = [tempdic valueForKey:[NSString stringWithFormat:@"[酷]"]];
                            break;
                            
                            
                        case 11:
                            tempImage = [tempdic valueForKey:[NSString stringWithFormat:@"[咧嘴笑]"]];
                            break;
                            
                            
                        case 12:
                            tempImage = [tempdic valueForKey:[NSString stringWithFormat:@"[眯眼笑]"]];
                            break;
                            
                            
                        case 13:
                            tempImage = [tempdic valueForKey:[NSString stringWithFormat:@"[怒]"]];
                            break;
                            
                            
                        case 14:
                            tempImage = [tempdic valueForKey:[NSString stringWithFormat:@"[哦]"]];
                            break;
                            
                            
                        case 15:
                            tempImage = [tempdic valueForKey:[NSString stringWithFormat:@"[哇]"]];
                            break;
                            
                            
                        case 16:
                            tempImage = [tempdic valueForKey:[NSString stringWithFormat:@"[微笑]"]];
                            break;
                            
                            
                        case 17:
                            tempImage = [tempdic valueForKey:[NSString stringWithFormat:@"[笑哭]"]];
                            break;
                            
                            
                        case 18:
                            tempImage = [tempdic valueForKey:[NSString stringWithFormat:@"[要去了]"]];
                            break;
                            
                            
                        case 19:
                            tempImage = [tempdic valueForKey:[NSString stringWithFormat:@"[晕倒]"]];
                            break;
                            
                        default:
                            break;
                            
                            
                    }
                    
                    
                    self.block=tempBlock;
#pragma  mark 封装的方法来实现点击按钮方法响应
                    UIButton *button=[myButton buttonTagWithType:UIButtonTypeCustom frame:CGRectMake(flagW+(i-j*5)*(faceOfWidth+flagW), j*faceOfHeight, faceOfWidth, faceOfHeight) title:nil titleColor:nil backgroundImage:tempImage andTag:i andBlock:^(int num) {
                        // NSLog(@"cacacacaca%d",num);
                        
                        
                        NSMutableDictionary *tempdic = [self.phraseArray objectAtIndex:num];
                        NSArray *temparray = [tempdic allKeys];
                        NSString *faceStr= [NSString stringWithFormat:@"%@",[temparray objectAtIndex:0]];
                        
#pragma mark 设置传值字母
                        _block(faceStr);
                    }];
                    
                    [bgView addSubview:button];
                    
                }}
            
        }
    }
    
    return bgView;
}

/**
 *  (初始化)设置表情字典数组
 */
-(UIView*)creatFaceArrayWithFaceViewFarme:(CGRect)frame WithBlock:(faceStrBlock)tempBlock2
{	NSMutableArray *temp = [[NSMutableArray alloc] init];
#pragma mark  创建（Key）文字图片字典
    
    
    UIImage *face0 = [UIImage imageNamed:[NSString stringWithFormat:@"emoji_ao.png"]];
    NSMutableDictionary *dicFace0 = [NSMutableDictionary dictionary];
    [dicFace0 setValue:face0 forKey:[NSString stringWithFormat:@"[奥]"]];
    [temp addObject:dicFace0];
    
    
    
    UIImage *face1 = [UIImage imageNamed:[NSString stringWithFormat:@"emoji_baolule.png"]];
    NSMutableDictionary *dicFace1 = [NSMutableDictionary dictionary];
    [dicFace1 setValue:face1 forKey:[NSString stringWithFormat:@"[暴露了]"]];
    [temp addObject:dicFace1];
    
    
    
    UIImage *face2 = [UIImage imageNamed:[NSString stringWithFormat:@"emoji_bizui.png"]];
    NSMutableDictionary *dicFace2 = [NSMutableDictionary dictionary];
    [dicFace2 setValue:face2 forKey:[NSString stringWithFormat:@"[闭嘴]"]];
    [temp addObject:dicFace2];
    
    
    UIImage *face3 = [UIImage imageNamed:[NSString stringWithFormat:@"emoji_daku.png"]];
    NSMutableDictionary *dicFace3 = [NSMutableDictionary dictionary];
    [dicFace3 setValue:face3 forKey:[NSString stringWithFormat:@"[大哭]"]];
    [temp addObject:dicFace3];
    
    
    UIImage *face4 = [UIImage imageNamed:[NSString stringWithFormat:@"emoji_e.png"]];
    NSMutableDictionary *dicFace4 = [NSMutableDictionary dictionary];
    [dicFace4 setValue:face4 forKey:[NSString stringWithFormat:@"[额]"]];
    [temp addObject:dicFace4];
    
    
    UIImage *face5 = [UIImage imageNamed:[NSString stringWithFormat:@"emoji_enhong.png"]];
    NSMutableDictionary *dicFace5 = [NSMutableDictionary dictionary];
    [dicFace5 setValue:face5 forKey:[NSString stringWithFormat:@"[嗯哼]"]];
    [temp addObject:dicFace5];
    
    
    UIImage *face6 = [UIImage imageNamed:[NSString stringWithFormat:@"emoji_ganga.png"]];
    NSMutableDictionary *dicFace6 = [NSMutableDictionary dictionary];
    [dicFace6 setValue:face6 forKey:[NSString stringWithFormat:@"[尴尬]"]];
    [temp addObject:dicFace6];
    
    
    UIImage *face7 = [UIImage imageNamed:[NSString stringWithFormat:@"emoji_haha.png"]];
    NSMutableDictionary *dicFace7 = [NSMutableDictionary dictionary];
    [dicFace7 setValue:face7 forKey:[NSString stringWithFormat:@"[哈哈]"]];
    [temp addObject:dicFace7];
    
    
    UIImage *face8 = [UIImage imageNamed:[NSString stringWithFormat:@"emoji_heihei.png"]];
    NSMutableDictionary *dicFace8 = [NSMutableDictionary dictionary];
    [dicFace8 setValue:face8 forKey:[NSString stringWithFormat:@"[嘿嘿]"]];
    [temp addObject:dicFace8];
    
    
    UIImage *face9= [UIImage imageNamed:[NSString stringWithFormat:@"emoji_huaixiao.png"]];
    NSMutableDictionary *dicFace9 = [NSMutableDictionary dictionary];
    [dicFace9 setValue:face9 forKey:[NSString stringWithFormat:@"[坏笑]"]];
    [temp addObject:dicFace9];
    
    
    UIImage *face10 = [UIImage imageNamed:[NSString stringWithFormat:@"emoji_kuge.png"]];
    NSMutableDictionary *dicFace10 = [NSMutableDictionary dictionary];
    [dicFace10 setValue:face10 forKey:[NSString stringWithFormat:@"[酷]"]];
    [temp addObject:dicFace10];
    
    
    UIImage *face11 = [UIImage imageNamed:[NSString stringWithFormat:@"emoji_liezuixiao.png"]];
    NSMutableDictionary *dicFace11 = [NSMutableDictionary dictionary];
    [dicFace11 setValue:face11 forKey:[NSString stringWithFormat:@"[咧嘴笑]"]];
    [temp addObject:dicFace11];
    
    
    UIImage *face12 = [UIImage imageNamed:[NSString stringWithFormat:@"emoji_miyanxiao.png"]];
    NSMutableDictionary *dicFace12 = [NSMutableDictionary dictionary];
    [dicFace12 setValue:face12 forKey:[NSString stringWithFormat:@"[眯眼笑]"]];
    [temp addObject:dicFace12];
    
    
    UIImage *face13 = [UIImage imageNamed:[NSString stringWithFormat:@"emoji_nu.png"]];
    NSMutableDictionary *dicFace13 = [NSMutableDictionary dictionary];
    [dicFace13 setValue:face13 forKey:[NSString stringWithFormat:@"[怒]"]];
    [temp addObject:dicFace13];
    
    
    UIImage *face14 = [UIImage imageNamed:[NSString stringWithFormat:@"emoji_o.png"]];
    NSMutableDictionary *dicFace14 = [NSMutableDictionary dictionary];
    [dicFace14 setValue:face14 forKey:[NSString stringWithFormat:@"[哦]"]];
    [temp addObject:dicFace14];
    
    
    UIImage *face15 = [UIImage imageNamed:[NSString stringWithFormat:@"emoji_wa.png"]];
    NSMutableDictionary *dicFace15 = [NSMutableDictionary dictionary];
    [dicFace15 setValue:face15 forKey:[NSString stringWithFormat:@"[哇]"]];
    [temp addObject:dicFace15];
    
    
    UIImage *face16 = [UIImage imageNamed:[NSString stringWithFormat:@"emoji_weixiao.png"]];
    NSMutableDictionary *dicFace16 = [NSMutableDictionary dictionary];
    [dicFace16 setValue:face16 forKey:[NSString stringWithFormat:@"[微笑]"]];
    [temp addObject:dicFace16];
    
    
    UIImage *face17 = [UIImage imageNamed:[NSString stringWithFormat:@"emoji_xiaoku.png"]];
    NSMutableDictionary *dicFace17 = [NSMutableDictionary dictionary];
    [dicFace17 setValue:face17 forKey:[NSString stringWithFormat:@"[笑哭]"]];
    [temp addObject:dicFace17];
    
    
    UIImage *face18 = [UIImage imageNamed:[NSString stringWithFormat:@"emoji_yaoqule.png"]];
    NSMutableDictionary *dicFace18 = [NSMutableDictionary dictionary];
    [dicFace18 setValue:face18 forKey:[NSString stringWithFormat:@"[要去了]"]];
    [temp addObject:dicFace18];
    
    
    UIImage *face19 = [UIImage imageNamed:[NSString stringWithFormat:@"emoji_yundao.png"]];
    NSMutableDictionary *dicFace19 = [NSMutableDictionary dictionary];
    [dicFace19 setValue:face19 forKey:[NSString stringWithFormat:@"[晕倒]"]];
    [temp addObject:dicFace19];
    
    //将装着表情字典的数组赋给成员属性
    self.phraseArray = temp;
    
    return [self faceButtonsWithframe:frame WithButtonImageArray:temp WithBlock:tempBlock2];
    
    
    //return temp;
    
    //[self showEmojiView];
    
}

/**
 *  设置类方法
 *
 *  @param frame 设置表情试图的大小
 *
 *  @return 返回表情视图
 */
+(UIView*)creatFaceArrayWithFaceViewFarme:(CGRect)frame WithBlock:(faceStrBlock)tempBlock
{
    return  [[[self alloc]init] creatFaceArrayWithFaceViewFarme:frame WithBlock:tempBlock];
}

@end
