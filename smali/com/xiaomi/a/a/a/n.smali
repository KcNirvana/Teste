.class public Lcom/xiaomi/a/a/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x240c8400

    sput v0, Lcom/xiaomi/a/a/a/n;->a:I

    const v0, 0x5265c00

    sput v0, Lcom/xiaomi/a/a/a/n;->b:I

    const v0, 0x2932e00

    sput v0, Lcom/xiaomi/a/a/a/n;->c:I

    const v0, 0x36ee80

    sput v0, Lcom/xiaomi/a/a/a/n;->d:I

    const v0, 0xea60

    sput v0, Lcom/xiaomi/a/a/a/n;->e:I

    const/16 v0, 0x3e8

    sput v0, Lcom/xiaomi/a/a/a/n;->f:I

    return-void
.end method

.method public static a(JJ)Z
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
