.class public Lcom/miui/networkassistant/traffic/statistic/LeisureTrafficHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLeisureTime(Lcom/miui/networkassistant/config/SimUserInfo;)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageFromTime()J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageToTime()J

    move-result-wide v8

    add-long/2addr v4, v8

    cmp-long v8, v6, v4

    if-lez v8, :cond_2

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    cmp-long v6, v2, v6

    if-lez v6, :cond_3

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    move v1, v0

    :cond_3
    return v1
.end method
