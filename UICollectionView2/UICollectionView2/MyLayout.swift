//
//  MyLayout.swift
//  UICollectionView2
//
//  Created by Karma on 16/4/6.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class MyLayout: UICollectionViewFlowLayout {
    var itemCount:Int?
    var attributeArray:Array<UICollectionViewLayoutAttributes>?
    //重写父类布局方法
    override func prepareLayout() {
        //重写父类方法前必须先调用
        super.prepareLayout()
        //设置每个item 的宽度
        let Width = (UIScreen.mainScreen().bounds.size.width - self.minimumInteritemSpacing)/2
        //左右item 的高度
        var  l = 0
        var  r = 0
        //用变量值记录item放在了哪个类下面
        for var i = 0 ; i < itemCount! ; i++ {
            let indexPath = NSIndexPath(forItem: i, inSection: 0)
            let attri = UICollectionViewLayoutAttributes(forCellWithIndexPath: indexPath)
            var tmp = 0
            var H = 0
            //item的高度在50-140之间
            let height = random()%140 + 50
            if l<=r{
                //将item放在左边的一列
                l = l + height + (Int)(self.minimumLineSpacing)
                tmp = 0
                
                H = l + (Int)(self.minimumLineSpacing)
            }else{
                //将item放在右边的一列
                r = r + height + (Int)(self.minimumLineSpacing)
                H = r + (Int)(self.minimumLineSpacing)
                tmp = 1
                
            }
            attri.frame = CGRectMake((CGFloat)(tmp)*(Width + self.minimumInteritemSpacing), (CGFloat)(H), Width, (CGFloat)(height))
            attributeArray?.append(attri)
            
            
        }
        if l<=r{
            self.itemSize = CGSizeMake(Width, (CGFloat)(r * 2 / itemCount!) - self.minimumLineSpacing)
        }else{
            self.itemSize = CGSizeMake(Width, (CGFloat)(l * 2 / itemCount!) - self.minimumLineSpacing)
        }
    }
    //布局是调用的
    override func layoutAttributesForElementsInRect(rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        return attributeArray
    }
}
