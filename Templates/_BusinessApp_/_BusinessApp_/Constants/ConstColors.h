//
//  ConstColors.h
//  _BusinessApp_
//
//  Created by Gytenis Mikulėnas on 2/4/14.
//  Copyright (c) 2014 Gytenis Mikulėnas. All rights reserved.
//

// RGB color macro
#define rgbColor(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

// RGB color macro with alpha
#define rgbColorColorWithAlpha(rgbValue,a) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:a]

// Use as less colors as possible. All colors should be consistent all over user interface. Make UX and designers stick with UI consistency

// Colors are setted in the IB as user defined runtime attributes and supported by BackgroundColor categories
#define kColorGrayLightName  @"ColorGrayLight"
#define kColorGrayLight      rgbColor(0x999999)

#define kColorGrayLightName1  @"ColorGrayLight1"
#define kColorGrayLight1      rgbColor(0xDDDDDD)

#define kColorGrayLightName2  @"ColorGrayLight2"
#define kColorGrayLight2    rgbColor(0xf1f1f1)

#define kColorGrayDarkName  @"ColorGrayDark"
#define kColorGrayDark     rgbColor(0x353535)

#define kColorGrayName  @"ColorGray"
#define kColorGray     rgbColor(0x606060)

#define kColorBlackName  @"ColorBlack"
#define kColorBlack     rgbColor(0x000000)

#define kColorRedLightName @"ColorRedLight"
#define kColorRedLight      rgbColor(0xE6B1B3)

#define kColorRedName  @"ColorRed"
#define kColorRed      rgbColor(0xDC5D63)

#define kColorRedDarkName @"ColorRedDark"
#define kColorRedDark      rgbColor(0xC54649)

#define kColorBlueName  @"ColorBlue"
#define kColorBlue      rgbColor(0x0000FF)

#define kColorWhiteName  @"ColorWhite"
#define kColorWhite      rgbColor(0xFFFFFF)

#define kColorGoldName  @"ColorGold"
#define kColorGold      rgbColor(0x8C7C22)

#define kColorGreenName  @"ColorGreen"
#define kColorGreen      rgbColor(0x46AF66)
