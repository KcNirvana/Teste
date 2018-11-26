.class public Lcom/xiaomi/analytics/internal/util/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static C:I

.field public static bnA:I

.field public static bnw:I

.field public static bnx:I

.field public static bny:I

.field public static bnz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x240c8400

    sput v0, Lcom/xiaomi/analytics/internal/util/a;->bnw:I

    const v0, 0x5265c00

    sput v0, Lcom/xiaomi/analytics/internal/util/a;->C:I

    const v0, 0x2932e00

    sput v0, Lcom/xiaomi/analytics/internal/util/a;->bny:I

    const v0, 0x36ee80

    sput v0, Lcom/xiaomi/analytics/internal/util/a;->bnA:I

    const v0, 0xea60

    sput v0, Lcom/xiaomi/analytics/internal/util/a;->bnz:I

    const/16 v0, 0x3e8

    sput v0, Lcom/xiaomi/analytics/internal/util/a;->bnx:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bKE(JJ)Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
