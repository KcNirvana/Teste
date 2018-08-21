.class public Lcom/miui/calendar/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJulianDay(Ljava/util/Calendar;)I
    .locals 9

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v4, v7, 0x1

    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    rsub-int/lit8 v7, v4, 0xe

    div-int/lit8 v0, v7, 0xc

    add-int/lit16 v7, v6, 0x12c0

    sub-int v5, v7, v0

    mul-int/lit8 v7, v0, 0xc

    add-int/2addr v7, v4

    add-int/lit8 v3, v7, -0x3

    mul-int/lit16 v7, v3, 0x99

    add-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0x5

    add-int/2addr v7, v1

    mul-int/lit16 v8, v5, 0x16d

    add-int/2addr v7, v8

    div-int/lit8 v8, v5, 0x4

    add-int/2addr v7, v8

    div-int/lit8 v8, v5, 0x64

    sub-int/2addr v7, v8

    div-int/lit16 v8, v5, 0x190

    add-int/2addr v7, v8

    add-int/lit16 v2, v7, -0x7d2d

    return v2
.end method

.method public static getTimeString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTodayTimeMillis()[J
    .locals 12

    const-wide/16 v10, 0x1

    const/4 v8, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v8}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long v0, v4, v6

    const/4 v3, 0x2

    new-array v3, v3, [J

    aput-wide v4, v3, v8

    const/4 v6, 0x1

    sub-long v8, v0, v10

    aput-wide v8, v3, v6

    return-object v3
.end method

.method public static isToday(J)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/calendar/util/TimeUtils;->getTodayTimeMillis()[J

    move-result-object v0

    aget-wide v4, v0, v2

    cmp-long v3, p0, v4

    if-ltz v3, :cond_0

    aget-wide v4, v0, v1

    cmp-long v3, p0, v4

    if-gtz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method
