# favorcate_demo
美食广场Flutter版

简介
这是一个用Flutter写的简易版美食广场App

主要实现功能有：
自定义屏幕适配（按750*1334等比例适配）（为了便于适配简化使用增加extension扩展了int,double方法）
本地数据的网络请求
点击添加收藏/取消收藏功能，
过滤功能（例如是否含无谷蛋白或是否是素食者等）
利用ChangeNotifierProxyProvider让不同的Provider进行数据共享


第三方依赖：
dio: ^3.0.9
provider: ^4.3.2
event_bus: ^1.1.1
