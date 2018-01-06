.class public Lcom/xiaomi/ad/internal/common/util/TimeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static HALF_DAY_IN_MS:I

.field public static ONE_DAY_IN_MS:I

.field public static ONE_HOUR_IN_MS:I

.field public static ONE_MINUTE_IN_MS:I

.field public static ONE_WEEK_IN_MS:I

.field public static ON_SECOND_IN_MS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x240c8400

    sput v0, Lcom/xiaomi/ad/internal/common/util/TimeUtils;->ONE_WEEK_IN_MS:I

    const v0, 0x5265c00

    sput v0, Lcom/xiaomi/ad/internal/common/util/TimeUtils;->ONE_DAY_IN_MS:I

    const v0, 0x2932e00

    sput v0, Lcom/xiaomi/ad/internal/common/util/TimeUtils;->HALF_DAY_IN_MS:I

    const v0, 0x36ee80

    sput v0, Lcom/xiaomi/ad/internal/common/util/TimeUtils;->ONE_HOUR_IN_MS:I

    const v0, 0xea60

    sput v0, Lcom/xiaomi/ad/internal/common/util/TimeUtils;->ONE_MINUTE_IN_MS:I

    const/16 v0, 0x3e8

    sput v0, Lcom/xiaomi/ad/internal/common/util/TimeUtils;->ON_SECOND_IN_MS:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentDateString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/util/TimeUtils;->getDateString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateString(J)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static inToday(J)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sget v1, Lcom/xiaomi/ad/internal/common/util/TimeUtils;->ONE_DAY_IN_MS:I

    int-to-long v4, v1

    add-long/2addr v4, v2

    cmp-long v1, v2, p0

    if-gtz v1, :cond_0

    cmp-long v1, p0, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
