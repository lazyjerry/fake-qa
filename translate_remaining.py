#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import glob

# 文件名映射表（中文 -> 英文）
filename_mapping = {
    "4.庫存預購與到貨通知.txt": "4.Inventory_Pre-orders_and_Arrival_Notifications.txt",
    "5.價格與促銷.txt": "5.Pricing_and_Promotions.txt",
    "6.購物車與下單流程.txt": "6.Shopping_Cart_and_Checkout_Process.txt",
    "7.付款方式.txt": "7.Payment_Methods.txt",
    "8.電子發票與報帳.txt": "8.Electronic_Invoices_and_Expense_Reporting.txt",
    "9.配送方案.txt": "9.Delivery_Options.txt",
    "10.到貨時效與物流異常.txt": "10.Delivery_Times_and_Logistics_Issues.txt",
    "11.包裝與保鮮.txt": "11.Packaging_and_Freshness.txt",
    "12.取貨與驗收.txt": "12.Pickup_and_Inspection.txt",
    "13.退換貨與退款.txt": "13.Returns_and_Refunds.txt",
    "14.缺貨與替代方案.txt": "14.Out_of_Stock_and_Alternative_Solutions.txt",
    "15.客服與售後.txt": "15.Customer_Service_and_After-sales.txt",
    "16.會員與點數.txt": "16.Membership_and_Points.txt",
    "17.訂閱制定期配送.txt": "17.Subscription_Regular_Delivery.txt",
    "18.食品安全與過敏資訊.txt": "18.Food_Safety_and_Allergy_Information.txt",
    "19.特殊品項.txt": "19.Special_Items.txt",
    "20.大宗企業採購.txt": "20.Bulk_Corporate_Purchasing.txt",
    "21.活動與行銷.txt": "21.Events_and_Marketing.txt",
    "22.使用者評價與社群規範.txt": "22.User_Reviews_and_Community_Guidelines.txt",
    "23.帳戶設定與資安.txt": "23.Account_Settings_and_Security.txt",
    "24.裝置技術問題.txt": "24.Device_Technical_Issues.txt",
    "25.區域與跨境.txt": "25.Regional_and_Cross-border.txt",
    "TXT_索引.txt": "TXT_Index.txt"
}

print("文件名映射表已創建，包含以下文件：")
for chinese, english in filename_mapping.items():
    print(f"  {chinese} -> {english}")

print(f"\n總共需要翻譯 {len(filename_mapping)} 個文件")