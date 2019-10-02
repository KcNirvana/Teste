.class public final Lcom/xiaomi/ad/mediationconfig/internal/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static HALF_DAY_IN_MS:I = 0x0

.field public static ONE_DAY_IN_MS:I = 0x0

.field public static ONE_HOUR_IN_MS:I = 0x0

.field public static ONE_MINUTE_IN_MS:I = 0x0

.field public static ONE_SECOND_IN_MS:I = 0x3e8

.field public static ONE_WEEK_IN_MS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/TimeUtils;->ONE_SECOND_IN_MS:I

    mul-int/lit8 v0, v0, 0x3c

    sput v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/TimeUtils;->ONE_MINUTE_IN_MS:I

    sget v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/TimeUtils;->ONE_MINUTE_IN_MS:I

    mul-int/lit8 v0, v0, 0x3c

    sput v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/TimeUtils;->ONE_HOUR_IN_MS:I

    sget v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/TimeUtils;->ONE_HOUR_IN_MS:I

    mul-int/lit8 v0, v0, 0xc

    sput v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/TimeUtils;->HALF_DAY_IN_MS:I

    sget v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/TimeUtils;->ONE_HOUR_IN_MS:I

    mul-int/lit8 v0, v0, 0x18

    sput v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/TimeUtils;->ONE_DAY_IN_MS:I

    sget v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/TimeUtils;->ONE_DAY_IN_MS:I

    mul-int/lit8 v0, v0, 0x7

    sput v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/TimeUtils;->ONE_WEEK_IN_MS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
