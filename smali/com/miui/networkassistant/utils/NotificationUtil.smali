.class public Lcom/miui/networkassistant/utils/NotificationUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CANCEL_FLOAT_NOTIFICATION:Ljava/lang/String; = "cancel_float_notification"

.field private static final NOISE_NOTIFY_CHANNEL_ID:Ljava/lang/String; = "networkassistant_noise_notify_channel"

.field private static final NOTIFY_CHANNEL_ID:Ljava/lang/String; = "networkassistant_notify_channel"

.field private static final NOTIFY_ID_CORRECTION_SUCCEED:I = 0x21

.field private static final NOTIFY_ID_DAILY_CARD_OVER_LIMIT:I = 0x43

.field private static final NOTIFY_ID_DAILY_LIMIT_WARNING:I = 0xd

.field private static final NOTIFY_ID_DATA_USAGE_CORRECTION_TIMEOUT:I = 0x1

.field private static final NOTIFY_ID_DATA_USAGE_OVER_LIMIT:I = 0x3

.field private static final NOTIFY_ID_LEISURE_DATA_USAGE_WARNING:I = 0x4

.field private static final NOTIFY_ID_LOCK_SCREEN_TRAFFIC_GUIDE:I = 0x0

.field private static final NOTIFY_ID_LOCK_SCREEN_TRAFFIC_WARNING:I = 0x10

.field private static final NOTIFY_ID_LOW_PRIORITY:I = 0x0

.field private static final NOTIFY_ID_NETWORK_BLOCKED:I = 0x16

.field private static final NOTIFY_ID_NETWORK_CHANGED:I = 0x50

.field public static final NOTIFY_ID_NETWORK_RESTRICT:I = 0x20

.field private static final NOTIFY_ID_NETWORK_STATS_EXCEPTION:I = 0x45

.field private static final NOTIFY_ID_NORMAL_DATA_USAGE_WARNING:I = 0x2

.field public static final NOTIFY_ID_PACKAGE_CHANGE:I = 0x30

.field private static final NOTIFY_ID_PACKAGE_SETTING:I = 0x0

.field private static final NOTIFY_ID_ROAMING_DAILY_LIMIT_WARNING:I = 0x22

.field private static final NOTIFY_ID_ROAMING_STATE:I = 0xb

.field private static final NOTIFY_ID_ROAMING_WHITE_LIST_SETTED:I = 0xc

.field private static final NOTIFY_ID_SHOULD_TC_DIAGNOSTIC:I = 0x40

.field private static final NOTIFY_ID_SIM_LOCATION_ERROR:I = 0x0

.field private static final NOTIFY_ID_TC_DIAGNOSTIC_WARN:I = 0x41

.field private static final NOTIFY_ID_TC_SMS_RECEIVED:I = 0x9

.field private static final NOTIFY_ID_TC_SMS_TIMEOUT_OR_FAILURE_NOTIFY:I = 0xa

.field private static final NOTIFY_ID_TETHER_LIMT:I = 0x46

.field private static final NOTIFY_ID_TOTAL_PACKAGE_NOT_SETTED:I = 0x5

.field private static final NOTIFY_ID_TRAFFIC_SETTING_DAILY_LIMIT:I = 0x0

.field private static final SECURITYCENTER_NOTIFY_CHANNEL_ID:Ljava/lang/String; = "com.miui.securitycenter"


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/content/Intent;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/networkassistant/utils/NotificationUtil;->showRightButton(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/content/Intent;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAllLowPriorityNotify(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelDailyLimitWarning(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0xd

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelDataUsageCorrectionTimeOutOrFailureNotify(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelDataUsageOverLimit(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelNetworkBlockedNotify(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x16

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelNormalDataUsageWarning(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelNormalTotalPackageNotSetted(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 1

    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {v0, p1}, Lcom/miui/common/b/n;->aIS(Landroid/app/NotificationManager;I)V

    return-void
.end method

.method public static cancelOpenDataRoamingNotify(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0xb

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelOpenRoamingWhiteListNotify(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0xc

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelRoamingDailyLimitWarning(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x22

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelSimLocationErrorNotify(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelTcSmsReceivedNotify(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x9

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelTcSmsTimeOutOrFailureNotify(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method private static createChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const v2, 0x7f0701d3

    const/4 v1, 0x2

    const-string/jumbo v0, "networkassistant_notify_channel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, p1, v0, v1}, Lcom/miui/common/b/p;->aJc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string/jumbo v1, "networkassistant_noise_notify_channel"

    invoke-static {v0, v1}, Lcom/miui/common/b/p;->aJd(Landroid/app/NotificationManager;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "com.miui.securitycenter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    const v0, 0x7f07099d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getChannelByExtraBuilder(Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->getChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "networkassistant_notify_channel"

    return-object v0
.end method

.method private static getDualCardTitle(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/miui/networkassistant/utils/NotificationUtil;->getSimResIdBySlotNum(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v1, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p2, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNotificationPrefix(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;
    .locals 4

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v0, "%s-%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Lcom/miui/networkassistant/utils/NotificationUtil;->getSimResIdBySlotNum(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p1
.end method

.method private static getNotificationPrefix(Landroid/content/Context;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/miui/networkassistant/utils/NotificationUtil;->getNotificationPrefix(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static getPendingIntent(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1

    packed-switch p3, :pswitch_data_0

    invoke-static {p0, p1, p2}, Lcom/miui/common/b/n;->aIQ(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/miui/common/b/n;->aIO(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static getSimResIdBySlotNum(I)I
    .locals 1

    if-nez p0, :cond_0

    const v0, 0x7f0702fa

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0702fb

    goto :goto_0
.end method

.method public static sendCorrectionAlertNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    const/4 v6, 0x0

    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "sim_slot_num_tag"

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x21

    const/4 v5, 0x0

    const/4 v8, 0x2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v7, v6

    invoke-static/range {v0 .. v8}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    return-void
.end method

.method public static sendDailyCardDataUsageOverLimit(Landroid/content/Context;I)V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f0c000b

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0702c6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/networkassistant/utils/NotificationUtil$8;

    invoke-direct {v5}, Lcom/miui/networkassistant/utils/NotificationUtil$8;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x43

    const/4 v8, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    return-void
.end method

.method public static sendDailyLimitWarning(Landroid/content/Context;)V
    .locals 9

    const v0, 0x7f070348

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v0, 0x7f070349

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/miui/networkassistant/utils/NotificationUtil$5;

    invoke-direct {v5}, Lcom/miui/networkassistant/utils/NotificationUtil$5;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xd

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    return-void
.end method

.method public static sendDataUsageCorrectionTimeOutOrFailureNotify(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 11

    const/4 v7, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, p3, v1}, Lcom/miui/networkassistant/utils/NotificationUtil;->getNotificationPrefix(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v8, 0x0

    invoke-static {}, Lcom/miui/common/b/f;->aHU()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v8, Lcom/miui/networkassistant/utils/NotificationUtil$11;

    invoke-direct {v8, p0, p3}, Lcom/miui/networkassistant/utils/NotificationUtil$11;-><init>(Landroid/content/Context;I)V

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v5, 0x7f02028b

    const/4 v10, 0x2

    move-object v0, p0

    move-object v4, p2

    move v6, v1

    move v9, v7

    invoke-static/range {v0 .. v10}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    return-void
.end method

.method public static sendDataUsageOverLimit(Landroid/content/Context;II)V
    .locals 11

    const/4 v1, 0x3

    const/4 v10, 0x2

    const v2, 0x7f0702bb

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v0, 0x7f0702bc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez p1, :cond_1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v0, 0x7f0702bc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    :cond_0
    :goto_0
    new-instance v8, Lcom/miui/networkassistant/utils/NotificationUtil$6;

    invoke-direct {v8}, Lcom/miui/networkassistant/utils/NotificationUtil$6;-><init>()V

    invoke-static {p0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v9

    const-class v2, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;

    const v5, 0x7f020299

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/Class;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    return-void

    :cond_1
    if-ne p1, v6, :cond_2

    const v0, 0x7f070348

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v0, 0x7f07034a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    :cond_2
    if-ne p1, v10, :cond_3

    const v0, 0x7f07033b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v0, 0x7f07033d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v0, 0x7f0702c7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const v3, 0x7f0c000b

    invoke-virtual {v0, v3, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f07034a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const v0, 0x7f0702c9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v0, 0x7f0702ca

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0
.end method

.method public static sendLeisureDataUsageWarning(Landroid/content/Context;)V
    .locals 9

    const v0, 0x7f0702bf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v0, 0x7f0702c0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v8, Lcom/miui/networkassistant/utils/NotificationUtil$9;

    invoke-direct {v8}, Lcom/miui/networkassistant/utils/NotificationUtil$9;-><init>()V

    const-class v2, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    const/4 v1, 0x4

    const v5, 0x7f02028b

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/Class;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;)V

    return-void
.end method

.method public static sendLockScreenTrafficGuideNotify(Landroid/content/Context;J)V
    .locals 11

    const/4 v6, 0x1

    const/4 v1, 0x0

    const v0, 0x7f0702d3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0702d4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "sim_slot_num_tag"

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-class v2, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {p0, v2, v0}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    const v5, 0x7f02028b

    const/4 v8, 0x0

    const/4 v10, 0x2

    move-object v0, p0

    move v7, v1

    move v9, v1

    invoke-static/range {v0 .. v10}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    return-void
.end method

.method public static sendLockScreenTrafficUsed(Landroid/content/Context;JJJLjava/util/HashMap;)V
    .locals 13

    const v2, 0x7f0702cd

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->isLargeScaleMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0702ce

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    move-wide/from16 v0, p5

    invoke-static {v0, v1, v4}, Lcom/miui/networkassistant/utils/DateUtil;->formatDataTime(JI)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    move-wide/from16 v0, p3

    invoke-static {p0, v0, v1}, Lcom/miui/networkassistant/utils/DateUtil;->getFormatedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "uid_map"

    move-object/from16 v0, p7

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v3, "list_header"

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v3, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;

    invoke-static {p0, v3, v2}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    const/16 v3, 0x10

    const v7, 0x7f02028b

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    move-object v2, p0

    invoke-static/range {v2 .. v12}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    return-void

    :cond_0
    const v2, 0x7f0702ce

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x4

    move-wide/from16 v0, p5

    invoke-static {v0, v1, v4}, Lcom/miui/networkassistant/utils/DateUtil;->formatDataTime(JI)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    move-wide/from16 v0, p3

    invoke-static {p0, v0, v1}, Lcom/miui/networkassistant/utils/DateUtil;->getFormatedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static sendNetworkRestrictNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/miui/networkassistant/ui/activity/FirewallActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v5, Lcom/miui/networkassistant/utils/NotificationUtil$1;

    invoke-direct {v5, p3, p4, p0}, Lcom/miui/networkassistant/utils/NotificationUtil$1;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    const/16 v1, 0x20

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v8}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    return-void
.end method

.method public static sendNetworkStatsExceptionNotify(Landroid/content/Context;)V
    .locals 9

    const/4 v6, 0x0

    const v0, 0x7f0703d9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0703da

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/networkassistant/utils/NotificationUtil$18;

    invoke-direct {v5}, Lcom/miui/networkassistant/utils/NotificationUtil$18;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x45

    const/4 v8, 0x2

    move-object v0, p0

    move v7, v6

    invoke-static/range {v0 .. v8}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    return-void
.end method

.method public static sendNormalDataUsageOverWarning(Landroid/content/Context;)V
    .locals 9

    const v0, 0x7f0702c5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v0, 0x7f0702c6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v8, Lcom/miui/networkassistant/utils/NotificationUtil$7;

    invoke-direct {v8}, Lcom/miui/networkassistant/utils/NotificationUtil$7;-><init>()V

    const-class v2, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    const/4 v1, 0x3

    const v5, 0x7f020299

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/Class;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;)V

    return-void
.end method

.method public static sendNormalDataUsageWarning(Landroid/content/Context;Z)V
    .locals 11

    const v5, 0x7f02028b

    const/4 v7, 0x0

    const/4 v1, 0x2

    const/4 v6, 0x1

    const v0, 0x7f070356

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_0

    new-instance v8, Lcom/miui/networkassistant/utils/NotificationUtil$3;

    invoke-direct {v8}, Lcom/miui/networkassistant/utils/NotificationUtil$3;-><init>()V

    const v0, 0x7f070357

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "miui.intent.action.NETWORKASSISTANT_TRAFFIC_PURCHASE"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v9, v6

    move v10, v1

    invoke-static/range {v0 .. v10}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0702ba

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Lcom/miui/networkassistant/utils/NotificationUtil$4;

    invoke-direct {v8}, Lcom/miui/networkassistant/utils/NotificationUtil$4;-><init>()V

    const-class v2, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/Class;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;)V

    goto :goto_0
.end method

.method public static sendNormalTotalPackageNotSetted(Landroid/content/Context;I)V
    .locals 12

    const/4 v7, 0x0

    const/4 v6, 0x1

    const v0, 0x7f0702c2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v0, 0x7f0702c3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0702c4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/NotificationUtil;->getSimResIdBySlotNum(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "sim_slot_num_tag"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string/jumbo v1, "bundle_key_from_other_task"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v8, Lcom/miui/networkassistant/utils/NotificationUtil$2;

    invoke-direct {v8}, Lcom/miui/networkassistant/utils/NotificationUtil$2;-><init>()V

    const-string/jumbo v1, "com.miui.securitycenter"

    invoke-virtual {v8, v1}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->setChannel(Ljava/lang/String;)V

    const-class v1, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {p0, v1, v0}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v0, "sim_slot_num_tag"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x5

    const v5, 0x7f02028b

    const/4 v10, 0x2

    move-object v0, p0

    move v9, v7

    move v11, v6

    invoke-static/range {v0 .. v11}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZIZ)V

    return-void
.end method

.method public static sendOpenDataRoamingNotify(Landroid/content/Context;)V
    .locals 9

    const/4 v6, 0x0

    const v0, 0x7f070330

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v0, 0x7f070331

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/miui/networkassistant/utils/NotificationUtil$12;

    invoke-direct {v5}, Lcom/miui/networkassistant/utils/NotificationUtil$12;-><init>()V

    const-class v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    const/16 v1, 0xb

    const/4 v8, 0x2

    move-object v0, p0

    move v7, v6

    invoke-static/range {v0 .. v8}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    return-void
.end method

.method public static sendOpenRoamingWhiteListNotify(Landroid/content/Context;)V
    .locals 11

    const/4 v7, 0x0

    const v0, 0x7f070332

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v0, 0x7f070333

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v8, Lcom/miui/networkassistant/utils/NotificationUtil$13;

    invoke-direct {v8}, Lcom/miui/networkassistant/utils/NotificationUtil$13;-><init>()V

    const-class v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    const/16 v1, 0xc

    const v5, 0x7f02028b

    const/4 v6, 0x1

    const/4 v10, 0x2

    move-object v0, p0

    move v9, v7

    invoke-static/range {v0 .. v10}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    return-void
.end method

.method public static sendOtherNetworkBlockedNotify(Landroid/content/Context;Z)V
    .locals 18

    const v1, 0x7f070387

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f070384

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v3, Landroid/content/Intent;

    const-class v1, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v6, Lcom/miui/networkassistant/utils/NotificationUtil$15;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/miui/networkassistant/utils/NotificationUtil$15;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const/16 v2, 0x16

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v9}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    :goto_0
    return-void

    :cond_0
    const/16 v8, 0x16

    const v12, 0x7f02028c

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x2

    move-object/from16 v7, p0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v15, v6

    invoke-static/range {v7 .. v17}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    goto :goto_0
.end method

.method public static sendPackageChangeNotify(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Lcom/miui/networkassistant/model/TrafficUsedStatus;Z)V
    .locals 10

    const/4 v1, 0x1

    invoke-static {p0, p1, p4, v1}, Lcom/miui/networkassistant/utils/NotificationUtil;->getNotificationPrefix(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v3, Landroid/content/Intent;

    const-class v1, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;

    invoke-direct {v3, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "bundle_key_is_stable_pkg"

    move/from16 v0, p7

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "bundle_key_body"

    invoke-virtual {v3, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "sim_slot_num_tag"

    invoke-virtual {v3, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "bundle_key_imsi"

    invoke-virtual {v3, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "bundle_key_traffic_used_status"

    move-object/from16 v0, p6

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    add-int/lit8 v2, p4, 0x30

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object v1, p0

    move-object v5, p2

    invoke-static/range {v1 .. v9}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    return-void
.end method

.method public static sendRoamingDailyLimitWarning(Landroid/content/Context;)V
    .locals 9

    const v0, 0x7f07033b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v0, 0x7f07033c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/miui/networkassistant/utils/NotificationUtil$16;

    invoke-direct {v5}, Lcom/miui/networkassistant/utils/NotificationUtil$16;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x22

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    return-void
.end method

.method public static sendSettingDailyLimitNotify(Landroid/content/Context;J)V
    .locals 11

    const/4 v6, 0x1

    const/4 v1, 0x0

    const v0, 0x7f070381

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v2

    invoke-static {p0, v2, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->getDualCardTitle(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f070383

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "sim_slot_num_tag"

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-class v2, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {p0, v2, v0}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    const v5, 0x7f02028b

    const/4 v8, 0x0

    const/4 v10, 0x2

    move-object v0, p0

    move v7, v1

    move v9, v1

    invoke-static/range {v0 .. v10}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    return-void
.end method

.method public static sendSimLocationErrorNotify(Landroid/content/Context;I)V
    .locals 11

    const/4 v6, 0x1

    const/4 v1, 0x0

    const v0, 0x7f0702dd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p1, v6}, Lcom/miui/networkassistant/utils/NotificationUtil;->getNotificationPrefix(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;

    move-result-object v3

    const v0, 0x7f0702de

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "update_operator"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "sim_slot_num_tag"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v8, Lcom/miui/networkassistant/utils/NotificationUtil$17;

    invoke-direct {v8}, Lcom/miui/networkassistant/utils/NotificationUtil$17;-><init>()V

    const-class v2, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {p0, v2, v0}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    const v5, 0x7f02028b

    const/4 v10, 0x2

    move-object v0, p0

    move v7, v1

    move v9, v1

    invoke-static/range {v0 .. v10}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    return-void
.end method

.method public static sendTcSmsReceivedNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-class v0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p0, v0, v8}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v0, "sim_slot_num_tag"

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x9

    const v5, 0x7f02028b

    const/4 v6, 0x1

    const/4 v10, 0x2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v9, v7

    invoke-static/range {v0 .. v10}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    return-void
.end method

.method public static sendTcSmsTimeOutOrFailureNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    const/4 v7, 0x0

    new-instance v8, Lcom/miui/networkassistant/utils/NotificationUtil$10;

    invoke-direct {v8, p0}, Lcom/miui/networkassistant/utils/NotificationUtil$10;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v0, "sim_slot_num_tag"

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0xa

    const v5, 0x7f02028b

    const/4 v6, 0x1

    const/4 v10, 0x2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v9, v7

    invoke-static/range {v0 .. v10}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    return-void
.end method

.method public static sendTetherOverLimitWaringNotify(Landroid/content/Context;)V
    .locals 9

    const/4 v6, 0x0

    const v0, 0x7f0703f0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0703f1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/networkassistant/utils/NotificationUtil$19;

    invoke-direct {v5}, Lcom/miui/networkassistant/utils/NotificationUtil$19;-><init>()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.android.settings"

    const-string/jumbo v1, "com.android.settings.Settings$TetherSettingsActivity"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x46

    const/4 v8, 0x2

    move-object v0, p0

    move v7, v6

    invoke-static/range {v0 .. v8}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    return-void
.end method

.method public static sendTrafficSettingDailyNotify(Landroid/content/Context;J)V
    .locals 5

    const v0, 0x7f070381

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v1

    invoke-static {p0, v1, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->getDualCardTitle(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07037d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/networkassistant/utils/NotificationUtil;->showOperatorSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendTrafficSettingMonthlyNotify(Landroid/content/Context;J)V
    .locals 5

    const v0, 0x7f07037e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v1

    invoke-static {p0, v1, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->getDualCardTitle(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070380

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/networkassistant/utils/NotificationUtil;->showOperatorSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendWifiNetworkBlockedNotify(Landroid/content/Context;Z)V
    .locals 18

    const v1, 0x7f070386

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f070384

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f070385

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-class v2, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v6, Lcom/miui/networkassistant/utils/NotificationUtil$14;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v1}, Lcom/miui/networkassistant/utils/NotificationUtil$14;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 v2, 0x16

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v9}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    :goto_0
    return-void

    :cond_0
    const/16 v8, 0x16

    const v12, 0x7f02028c

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x2

    move-object/from16 v7, p0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v15, v6

    invoke-static/range {v7 .. v17}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    goto :goto_0
.end method

.method private static showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V
    .locals 10

    const-string/jumbo v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    move/from16 v0, p6

    invoke-static {p0, p3, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->getNotificationPrefix(Landroid/content/Context;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    move/from16 v0, p8

    invoke-static {p0, p1, p2, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->getPendingIntent(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const-string/jumbo v5, "com.miui.securitycenter"

    invoke-static {p0, v5}, Lcom/miui/networkassistant/utils/NotificationUtil;->createChannel(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v5, "com.miui.securitycenter"

    invoke-static {p0, v5}, Lcom/miui/common/b/p;->aJb(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/16 v6, 0x21

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x7f02028b

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    if-eqz p5, :cond_2

    invoke-virtual {p5, v5}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->onBuild(Landroid/app/Notification$Builder;)V

    invoke-virtual {p5}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->getIconRes()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p5}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->getIconRes()I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_0
    :goto_0
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/miui/a/a/a;->btn(Landroid/app/Notification;Z)V

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/miui/a/a/a;->btk(Landroid/app/Notification;Z)V

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/miui/a/a/a;->btp(Landroid/app/Notification;I)V

    if-eqz p7, :cond_1

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "action_broadcast_cancel_notification"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "cancel_float_notification"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, p1, v4}, Lcom/miui/common/b/n;->aIO(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/a/a/a;->btm(Landroid/app/Notification;Landroid/app/PendingIntent;)V

    :cond_1
    invoke-static {v2, p1, v3}, Lcom/miui/common/b/n;->aIR(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201c6

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_0
.end method

.method public static showNetworkChangedNotify(Landroid/content/Context;)V
    .locals 9

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07039c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07039d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/networkassistant/utils/NotificationUtil$20;

    invoke-direct {v5}, Lcom/miui/networkassistant/utils/NotificationUtil$20;-><init>()V

    const/16 v1, 0x50

    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v8, v6

    invoke-static/range {v0 .. v8}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    return-void
.end method

.method private static showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-static/range {v0 .. v11}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZIZ)V

    return-void
.end method

.method private static showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZIZ)V
    .locals 10

    const-string/jumbo v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    move/from16 v0, p9

    invoke-static {p0, p3, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->getNotificationPrefix(Landroid/content/Context;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    move/from16 v0, p10

    invoke-static {p0, p1, p2, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->getPendingIntent(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static/range {p8 .. p8}, Lcom/miui/networkassistant/utils/NotificationUtil;->getChannelByExtraBuilder(Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/miui/networkassistant/utils/NotificationUtil;->createChannel(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v5}, Lcom/miui/common/b/p;->aJb(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, p5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_0
    if-eqz p8, :cond_3

    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->onBuild(Landroid/app/Notification$Builder;)V

    invoke-virtual/range {p8 .. p8}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->getIconRes()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual/range {p8 .. p8}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->getIconRes()I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_0
    :goto_1
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/miui/a/a/a;->btn(Landroid/app/Notification;Z)V

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/miui/a/a/a;->btk(Landroid/app/Notification;Z)V

    if-nez p11, :cond_1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/miui/a/a/a;->btp(Landroid/app/Notification;I)V

    :cond_1
    invoke-static {v2, p1, v3}, Lcom/miui/common/b/n;->aIR(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    return-void

    :cond_2
    const-string/jumbo v4, "%s:%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object p4, v6, v3

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201c6

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method private static showNotification(Landroid/content/Context;ILjava/lang/Class;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;)V
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x2

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v10}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/Class;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    return-void
.end method

.method private static showNotification(Landroid/content/Context;ILjava/lang/Class;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V
    .locals 12

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p8, :cond_0

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->onCreateIntent(Landroid/content/Intent;)V

    :cond_0
    move-object v1, p0

    move v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-static/range {v1 .. v11}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    return-void
.end method

.method private static showOperatorSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "bundle_key_from_other_task"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-class v2, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {p0, v2, v0}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v0, "sim_slot_num_tag"

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v5, 0x7f02028b

    const/4 v8, 0x0

    const/4 v10, 0x2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v7, v1

    move v9, v1

    move v11, v6

    invoke-static/range {v0 .. v11}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZIZ)V

    return-void
.end method

.method private static showRightButton(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/content/Intent;Ljava/lang/CharSequence;I)V
    .locals 3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0, p2, p4}, Lcom/miui/networkassistant/utils/NotificationUtil;->getPendingIntent(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f0202ec

    invoke-virtual {p1, v1, p3, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "miui.showAction"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    :cond_0
    return-void
.end method
