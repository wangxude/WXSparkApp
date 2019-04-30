//
//  WXSTopicTableViewCell.h
//  WXSparkApp
//
//  Created by 王旭 on 2019/4/30.
//  Copyright © 2019 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WXSTopicViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface WXSTopicTableViewCell : UITableViewCell

+ (instancetype)topicCellWithTableView:(UITableView *)tableView;

@property (nonatomic ,strong) WXSTopicViewModel *topicViewModel;

@end

NS_ASSUME_NONNULL_END
