.class public Lcom/alipay/android/app/g/f;
.super Ljava/lang/Object;
.source "LogAgent.java"


# static fields
.field private static a:J

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/android/app/g/f;->a:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/g/f;->b:Z

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/g/f;->c:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/g/f;->d:Z

    return-void
.end method

.method public static a()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/app/g/f;->a:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/g/f;->b:Z

    return-void
.end method

.method public static b()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-boolean v2, Lcom/alipay/android/app/g/f;->b:Z

    if-nez v2, :cond_0

    sget-wide v2, Lcom/alipay/android/app/g/f;->a:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    sget-wide v2, Lcom/alipay/android/app/g/f;->a:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/alipay/android/app/g/f;->a:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/g/f;->b:Z

    :cond_0
    return-void
.end method

.method public static c()J
    .locals 2

    sget-boolean v0, Lcom/alipay/android/app/g/f;->b:Z

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/alipay/android/app/g/f;->a:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
