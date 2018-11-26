.class public Lcom/miui/luckymoney/stats/MiStatUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CATEGORY_LUCKY_MONEY:Ljava/lang/String; = "luckymoney"

.field public static final CLOSE:Ljava/lang/String; = "close"

.field private static final GUIDE_PAGE_VISIT_OPEN:Ljava/lang/String; = "guide_page_visit_open"

.field private static final KEY_ADS:Ljava/lang/String; = "luckymoney_ad_show"

.field private static final KEY_BUSSNESS_SWITCH:Ljava/lang/String; = "toggle_enterprise"

.field private static final KEY_DND_MODE_SWITCH:Ljava/lang/String; = "toggle_no_disturb"

.field private static final KEY_DND_WAY:Ljava/lang/String; = "toggle_no_disturb_way"

.field private static final KEY_FAST_OPEN_SHOW:Ljava/lang/String; = "quickly_model_show"

.field private static final KEY_FAST_OPEN_SWITCH:Ljava/lang/String; = "toggle_quickly_model"

.field private static final KEY_FLOAT_TIPS:Ljava/lang/String; = "mi_rabbit_bubble"

.field private static final KEY_FLOAT_WINDOW:Ljava/lang/String; = "toggle_suspension_window"

.field private static final KEY_FLOAT_WINDOW_CLICK:Ljava/lang/String; = "mi_rabbit_click"

.field private static final KEY_FLOAT_WINDOW_FUNC_CLICK:Ljava/lang/String; = "mi_rabbit_detail"

.field private static final KEY_FLOAT_WINDOW_HOT_CLICK:Ljava/lang/String; = "red_packet_party"

.field private static final KEY_FUNC_NO_WORK:Ljava/lang/String; = "remind_abnormal_click"

.field private static final KEY_LUCKY_ALARM_ALIPAY:Ljava/lang/String; = "toggle_alarm_alipay"

.field private static final KEY_LUCKY_ALARM_LOCKED_NOTI:Ljava/lang/String; = "alarm_popup_1"

.field private static final KEY_LUCKY_ALARM_MI:Ljava/lang/String; = "toggle_alarm_mi"

.field private static final KEY_LUCKY_ALARM_NOTI:Ljava/lang/String; = "alarm_popup_2"

.field private static final KEY_LUCKY_ALARM_QQ:Ljava/lang/String; = "toggle_alarm_qq"

.field private static final KEY_LUCKY_ALARM_SOUND:Ljava/lang/String; = "toggle_alarm_sound"

.field private static final KEY_LUCKY_ALARM_SWITCH:Ljava/lang/String; = "toggle_alarm"

.field private static final KEY_LUCKY_ALARM_WECHAT:Ljava/lang/String; = "toggle_alarm_wechat"

.field private static final KEY_LUCKY_FAST_OPEN:Ljava/lang/String; = "quickly_model_packet_show"

.field private static final KEY_LUCKY_MONEY_LOCKED_NOTI:Ljava/lang/String; = "red_packet_popup_1"

.field private static final KEY_LUCKY_MONEY_NOTI:Ljava/lang/String; = "red_packet_popup_2"

.field private static final KEY_LUCKY_SOUND_SWITCH:Ljava/lang/String; = "red_packet_sound_remind"

.field public static final KEY_LUCK_MONEY_REMINDED_BUSINESS_POSTFIX:Ljava/lang/String; = "enterprise"

.field public static final KEY_LUCK_MONEY_REMINDED_MITALK_POSTFIX:Ljava/lang/String; = "mitalk"

.field public static final KEY_LUCK_MONEY_REMINDED_QQ_POSTFIX:Ljava/lang/String; = "qq"

.field public static final KEY_LUCK_MONEY_REMINDED_WEIXIN_POSTFIX:Ljava/lang/String; = "wechat"

.field private static final KEY_MASTER_SWITCH:Ljava/lang/String; = "toggle_red_packet"

.field private static final KEY_MILIAO_SWITCH:Ljava/lang/String; = "toggle_mitalk"

.field private static final KEY_MM_MONEY:Ljava/lang/String; = "luckymoney_wechat_sum1"

.field private static final KEY_ONLY_GROUP_MESSAGE_SWITCH:Ljava/lang/String; = "toggle_group_only"

.field private static final KEY_QQ_MONEY:Ljava/lang/String; = "luckymoney_qq_sum1"

.field private static final KEY_QQ_SWITCH:Ljava/lang/String; = "toggle_qq"

.field private static final KEY_SHAKE_AND_SHAKE:Ljava/lang/String; = "toggle_shake_expression"

.field private static final KEY_SHAKE_RANDOM_EXPRESSION:Ljava/lang/String; = "shake_expression"

.field private static final KEY_SHARE_FUNC:Ljava/lang/String; = "share_click"

.field private static final KEY_WECHAT_SWITCH:Ljava/lang/String; = "toggle_wechat"

.field private static final MODULE:Ljava/lang/String; = "module"

.field private static final MODULE_CLICK:Ljava/lang/String; = "module_click"

.field private static final MODULE_SHOW:Ljava/lang/String; = "module_show"

.field public static final SETTINGS:Ljava/lang/String; = "settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recordAds(J)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "ad_show"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "luckymoney"

    const-string/jumbo v2, "luckymoney_ad_show"

    invoke-static {v1, v2, v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static recordCalculateEvent(Ljava/lang/String;J)V
    .locals 1

    const-string/jumbo v0, "luckymoney"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordFastOpenShow()V
    .locals 2

    const-string/jumbo v0, "luckymoney"

    const-string/jumbo v1, "quickly_model_show"

    invoke-static {v0, v1}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordFloatTips(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    const-string/jumbo v1, "module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string/jumbo v1, "luckymoney"

    const-string/jumbo v2, "mi_rabbit_bubble"

    invoke-static {v1, v2, v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static recordFloatWindowClick()V
    .locals 2

    const-string/jumbo v0, "luckymoney"

    const-string/jumbo v1, "mi_rabbit_click"

    invoke-static {v0, v1}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordFloatWindowFuncClick(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "luckymoney"

    const-string/jumbo v2, "mi_rabbit_detail"

    invoke-static {v1, v2, v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordFloatWindowHot(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    const-string/jumbo v1, "module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string/jumbo v1, "luckymoney"

    const-string/jumbo v2, "red_packet_party"

    invoke-static {v1, v2, v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static recordFuncNoWork()V
    .locals 2

    const-string/jumbo v0, "luckymoney"

    const-string/jumbo v1, "remind_abnormal_click"

    invoke-static {v0, v1}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordGuidePage(Z)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string/jumbo v1, "module"

    const-string/jumbo v2, "open"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string/jumbo v1, "luckymoney"

    const-string/jumbo v2, "guide_page_visit_open"

    invoke-static {v1, v2, v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v1, "module"

    const-string/jumbo v2, "visit"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static recordLuckyAlarmLockedNoti(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string/jumbo v1, "luckymoney"

    const-string/jumbo v2, "alarm_popup_1"

    invoke-static {v1, v2, v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v1, "module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static recordLuckyAlarmNoti(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string/jumbo v1, "luckymoney"

    const-string/jumbo v2, "alarm_popup_2"

    invoke-static {v1, v2, v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v1, "module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static recordLuckyMoneyFastOpen(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "luckymoney"

    const-string/jumbo v2, "quickly_model_packet_show"

    invoke-static {v1, v2, v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordLuckyMoneyLockedNoti(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string/jumbo v1, "luckymoney"

    const-string/jumbo v2, "red_packet_popup_1"

    invoke-static {v1, v2, v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v1, "module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static recordLuckyMoneyNoti(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string/jumbo v1, "luckymoney"

    const-string/jumbo v2, "red_packet_popup_2"

    invoke-static {v1, v2, v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v1, "module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static recordMMMoney(J)V
    .locals 2

    const-string/jumbo v0, "luckymoney_wechat_sum1"

    invoke-static {v0, p0, p1}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCalculateEvent(Ljava/lang/String;J)V

    return-void
.end method

.method private static recordNumericEvent(Ljava/lang/String;J)V
    .locals 1

    const-string/jumbo v0, "luckymoney"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static recordPageEnd()V
    .locals 0

    invoke-static {}, Lcom/miui/analytics/AnalyticsUtil;->recordPageEnd()V

    return-void
.end method

.method public static recordPageStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordPageStart(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static recordQQMoney(J)V
    .locals 2

    const-string/jumbo v0, "luckymoney_qq_sum1"

    invoke-static {v0, p0, p1}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCalculateEvent(Ljava/lang/String;J)V

    return-void
.end method

.method public static recordShakeRandomExpression()V
    .locals 2

    const-string/jumbo v0, "luckymoney"

    const-string/jumbo v1, "shake_expression"

    invoke-static {v0, v1}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordShare(Z)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string/jumbo v1, "module"

    const-string/jumbo v2, "homepage_click"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string/jumbo v1, "luckymoney"

    const-string/jumbo v2, "share_click"

    invoke-static {v1, v2, v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v1, "module"

    const-string/jumbo v2, "second_click"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static recordStringEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "luckymoney"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackSettingSwitchState(Landroid/content/Context;)V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getSettingSwitchUpdateTime()J

    move-result-wide v6

    const-wide/32 v8, 0x240c8400

    add-long/2addr v6, v8

    cmp-long v0, v6, v4

    if-gez v0, :cond_2

    const-string/jumbo v6, "toggle_red_packet"

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    int-to-long v8, v0

    invoke-static {v6, v8, v9}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordNumericEvent(Ljava/lang/String;J)V

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v6, "toggle_wechat"

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getWeChatLuckyWarningEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    int-to-long v8, v0

    invoke-static {v6, v8, v9}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v6, "toggle_qq"

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getQQLuckyWarningEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    int-to-long v8, v0

    invoke-static {v6, v8, v9}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v6, "toggle_mitalk"

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getMiliaoLuckyWarningEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    int-to-long v8, v0

    invoke-static {v6, v8, v9}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v6, "toggle_enterprise"

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getBusinessLuckyWarningEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    int-to-long v8, v0

    invoke-static {v6, v8, v9}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v6, "toggle_group_only"

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getOnlyNotiGroupLuckuMoneyConfig()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    int-to-long v8, v0

    invoke-static {v6, v8, v9}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v0, "red_packet_sound_remind"

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckySoundWarningLevel()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v0, v6, v7}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v6, "toggle_no_disturb"

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->isDNDModeOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_6
    int-to-long v8, v0

    invoke-static {v6, v8, v9}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v6, "toggle_quickly_model"

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->isFastOpenEnable()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_7
    int-to-long v8, v0

    invoke-static {v6, v8, v9}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordNumericEvent(Ljava/lang/String;J)V

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->isDNDModeOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v6, "toggle_no_disturb_way"

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getDNDModeLevel()I

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "only_no_sound"

    :goto_8
    invoke-static {v6, v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordStringEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v6, "toggle_suspension_window"

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->isDesktopFloatWindowEnable()Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_9
    int-to-long v8, v0

    invoke-static {v6, v8, v9}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v6, "toggle_shake_expression"

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->isShakeSendStickerEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_a
    int-to-long v8, v0

    invoke-static {v6, v8, v9}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v6, "toggle_alarm"

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmEnable()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_b
    int-to-long v8, v0

    invoke-static {v6, v8, v9}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordNumericEvent(Ljava/lang/String;J)V

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v6, "toggle_alarm_sound"

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmSoundEnable()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_c
    int-to-long v8, v0

    invoke-static {v6, v8, v9}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v6, "toggle_alarm_wechat"

    const-string/jumbo v0, "com.tencent.mm"

    invoke-virtual {v3, v0}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmPackageOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_d
    int-to-long v8, v0

    invoke-static {v6, v8, v9}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v6, "toggle_alarm_qq"

    const-string/jumbo v0, "com.tencent.mobileqq"

    invoke-virtual {v3, v0}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmPackageOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    :goto_e
    int-to-long v8, v0

    invoke-static {v6, v8, v9}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v6, "toggle_alarm_alipay"

    const-string/jumbo v0, "com.eg.android.AlipayGphone"

    invoke-virtual {v3, v0}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmPackageOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    :goto_f
    int-to-long v8, v0

    invoke-static {v6, v8, v9}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v0, "toggle_alarm_mi"

    const-string/jumbo v6, "com.xiaomi.channel"

    invoke-virtual {v3, v6}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmPackageOpen(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    :goto_10
    int-to-long v6, v1

    invoke-static {v0, v6, v7}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_1
    invoke-virtual {v3, v4, v5}, Lcom/miui/luckymoney/config/CommonConfig;->setSettingSwitchUpdateTime(J)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto/16 :goto_1

    :cond_5
    move v0, v2

    goto/16 :goto_2

    :cond_6
    move v0, v2

    goto/16 :goto_3

    :cond_7
    move v0, v2

    goto/16 :goto_4

    :cond_8
    move v0, v2

    goto/16 :goto_5

    :cond_9
    move v0, v2

    goto/16 :goto_6

    :cond_a
    move v0, v2

    goto/16 :goto_7

    :cond_b
    const-string/jumbo v0, "no_remind"

    goto/16 :goto_8

    :cond_c
    move v0, v2

    goto/16 :goto_9

    :cond_d
    move v0, v2

    goto/16 :goto_a

    :cond_e
    move v0, v2

    goto/16 :goto_b

    :cond_f
    move v0, v2

    goto :goto_c

    :cond_10
    move v0, v2

    goto :goto_d

    :cond_11
    move v0, v2

    goto :goto_e

    :cond_12
    move v0, v2

    goto :goto_f

    :cond_13
    move v1, v2

    goto :goto_10
.end method
