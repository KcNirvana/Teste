.class public Lcom/miui/luckymoney/utils/DateUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final MILLIS_IN_ONE_DAY:J = 0x5265c00L

.field public static final MILLIS_IN_ONE_HOUR:J = 0x36ee80L

.field public static final MILLIS_IN_ONE_MINUTE:J = 0xea60L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMillisUsingHM(II)J
    .locals 6

    int-to-long v0, p0

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static getTodayTimeMillis()J
    .locals 9

    const/4 v8, 0x1

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    new-instance v7, Landroid/text/format/Time;

    const-string/jumbo v5, "UTC"

    invoke-direct {v7, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isTheSameDay(JJ)Z
    .locals 10

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v3, v6, :cond_0

    if-ne v4, v7, :cond_0

    if-ne v5, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isTipsTimeEnable(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getFloatTipsStartTime()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getFloatTipsStopTime()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getFloatTipsDuration()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
