.class public abstract Lcom/xiaomi/mistatistic/sdk/MiStatInterface;
.super Ljava/lang/Object;
.source "MiStatInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/MiStatInterface$UploadPolicy;,
        Lcom/xiaomi/mistatistic/sdk/MiStatInterface$NetworkType;
    }
.end annotation


# static fields
.field private static final DEFAULT_CATEGORY:Ljava/lang/String; = "default_category"

.field private static final DEFAULT_CHANNEL:Ljava/lang/String; = "mistats_default"

.field public static final MAX_CATEGORY_KEY_LENGTH:I = 0x40

.field public static final MAX_CUSTOMIZED_PARAMS_AMOUNT:I = 0xf

.field public static final MAX_UPLOAD_INTERVAL:J = 0x5265c00L

.field public static final MAX_UPLOAD_SIZE:J = 0x7800L

.field public static final MAX_VALUE_LENGTH:I = 0x100

.field public static final MIN_UPLOAD_INTERVAL:J = 0x15f90L

.field public static final MIN_UPLOAD_SIZE:J = 0xc00L

.field private static final PREFIX_MISTAT:Ljava/lang/String; = "mistat_"

.field private static final TAG:Ljava/lang/String; = "MiStatInterface"

.field private static sABTestInitialized:Z

.field private static sInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkABTestInitialized()Z
    .locals 2

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sABTestInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ABTest has NOT been registered."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sABTestInitialized:Z

    return v0
.end method

.method private static checkCategory(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mistat_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/v$a;->b:Lcom/xiaomi/mistatistic/sdk/controller/v$a;

    invoke-static {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/v;->a(Lcom/xiaomi/mistatistic/sdk/controller/v$a;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Category does not meet the specification."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static checkInitialized()Z
    .locals 2

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The SDK has NOT been initialized, you should invoke initialize() first."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sInitialized:Z

    return v0
.end method

.method private static checkKey(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "mistat_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/v$a;->a:Lcom/xiaomi/mistatistic/sdk/controller/v$a;

    invoke-static {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/v;->a(Lcom/xiaomi/mistatistic/sdk/controller/v$a;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Key does not meet the specification."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static checkValue(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/v$a;->c:Lcom/xiaomi/mistatistic/sdk/controller/v$a;

    invoke-static {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/v;->a(Lcom/xiaomi/mistatistic/sdk/controller/v$a;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Value does not meet the specification."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static enableExceptionCatcher(Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->e()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/b;->a(Z)V

    :cond_2
    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    :goto_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/b;->a(I)V

    return-void
.end method

.method public static enableGlobalUpload(Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b(Z)V

    return-void
.end method

.method public static enableLog(Z)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Z)V

    return-void
.end method

.method public static enableNetworkConnection(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public static enableStatistics(Z)V
    .locals 3

    const-string v0, "MI_STAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableStatistics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/v;->a(Z)V

    return-void
.end method

.method public static getABTestControlValue(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkABTestInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a()Lcom/xiaomi/mistatistic/sdk/controller/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object p2
.end method

.method public static final getAnonymousID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getDeviceID: context is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getUploadNetwork()I
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/u;->a()Lcom/xiaomi/mistatistic/sdk/controller/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/u;->i()I

    move-result v0

    return v0
.end method

.method public static final getUploadPolicy()I
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/u;->a()Lcom/xiaomi/mistatistic/sdk/controller/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/u;->f()I

    move-result v0

    return v0
.end method

.method public static final initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/mistatistic/sdk/MiStatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/mistatistic/sdk/MiStatException;
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sInitialized:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Do NOT initialize the SDK again."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Initializing SDK: %s, %s, %s, %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object p1, v5, v1

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, p0

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string p3, "mistats_default"

    :cond_3
    invoke-static {v0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Lcom/xiaomi/mistatistic/sdk/controller/e;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->b()Lcom/xiaomi/mistatistic/sdk/controller/e;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a()Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Lcom/xiaomi/mistatistic/sdk/controller/e;

    move-result-object p1

    new-instance p2, Lcom/xiaomi/mistatistic/sdk/MiStatInterface$1;

    invoke-direct {p2, p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/u;->a()Lcom/xiaomi/mistatistic/sdk/controller/u;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/u;->b()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Lcom/xiaomi/mistatistic/sdk/controller/e;

    move-result-object p0

    new-instance p1, Lcom/xiaomi/mistatistic/sdk/MiStatInterface$2;

    invoke-direct {p1, p4}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface$2;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0xe

    if-lt p0, p1, :cond_4

    check-cast v0, Landroid/app/Application;

    new-instance p0, Lcom/xiaomi/mistatistic/sdk/controller/b;

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/b;-><init>()V

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_4
    sput-boolean v1, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sInitialized:Z

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The initialization consumes "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    new-instance p0, Lcom/xiaomi/mistatistic/sdk/MiStatException;

    const-string p1, "Initializing sdk fails: appID or appKey is empty."

    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lcom/xiaomi/mistatistic/sdk/MiStatException;

    const-string p1, "Initializing sdk fails: context is null."

    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isABTestInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sABTestInitialized:Z

    return v0
.end method

.method public static recordABTestCalculateEvent(ILjava/lang/String;J)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkABTestInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a()Lcom/xiaomi/mistatistic/sdk/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a(Ljava/lang/String;JI)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static recordABTestCountEvent(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkABTestInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a()Lcom/xiaomi/mistatistic/sdk/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static recordABTestNumericEvent(ILjava/lang/String;J)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkABTestInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a()Lcom/xiaomi/mistatistic/sdk/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/xiaomi/mistatistic/sdk/controller/a;->b(Ljava/lang/String;JI)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static recordABTestStringPropertyEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkABTestInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a()Lcom/xiaomi/mistatistic/sdk/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static final recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public static final recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p0

    const-string p1, "recordCalculateEvent: The amount of params is over 15"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "default_category"

    :cond_3
    move-object v1, p0

    new-instance p0, Lcom/xiaomi/mistatistic/sdk/data/b;

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/data/b;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a()V

    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method public static final recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public static final recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p0

    const-string p1, "recordCalculateEvent: The amount of params is over 15"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "default_category"

    :cond_3
    move-object v1, p0

    new-instance p0, Lcom/xiaomi/mistatistic/sdk/data/b;

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/data/b;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/mistatistic/sdk/data/b;->setAnonymous(I)V

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a()V

    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method public static final recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p0

    const-string p1, "recordCountEvent: The amount of params is over 15"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "default_category"

    :cond_3
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/data/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a()V

    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method public static final recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p0

    const-string p1, "recordCountEvent: The amount of params is over 15"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "default_category"

    :cond_3
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/data/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/xiaomi/mistatistic/sdk/data/d;->setAnonymous(I)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a()V

    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method protected static recordCustomEvent(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/data/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a()V

    return-void
.end method

.method protected static recordCustomEventAnonymous(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/data/c;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/xiaomi/mistatistic/sdk/data/c;->setAnonymous(I)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a()V

    return-void
.end method

.method public static recordException(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p0, :cond_2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "recordException: The throwable is null."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->b()Lcom/xiaomi/mistatistic/sdk/controller/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/MiStatInterface$3;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface$3;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a()V

    return-void
.end method

.method public static final recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "default_category"

    :cond_2
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/data/f;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a()V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public static final recordNumericPropertyEventAnonymous(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "default_category"

    :cond_2
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/data/f;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/xiaomi/mistatistic/sdk/data/f;->setAnonymous(I)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a()V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public static recordPageEnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/mistatistic/sdk/MiStatException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static final recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/mistatistic/sdk/MiStatException;
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/v;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a()Lcom/xiaomi/mistatistic/sdk/controller/r;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a()Lcom/xiaomi/mistatistic/sdk/controller/s;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/s;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p0, Lcom/xiaomi/mistatistic/sdk/MiStatException;

    const-string p1, "recordPageEnd: pageName is empty or can\'t get pageName from context."

    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final recordPageEnd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/mistatistic/sdk/MiStatException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/v;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a()Lcom/xiaomi/mistatistic/sdk/controller/r;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a()Lcom/xiaomi/mistatistic/sdk/controller/s;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/s;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p0, Lcom/xiaomi/mistatistic/sdk/MiStatException;

    const-string p1, "recordPageEnd: pageName is empty or can\'t get pageName from context."

    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/mistatistic/sdk/MiStatException;
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/v;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Lcom/xiaomi/mistatistic/sdk/controller/e;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;-><init>()V

    invoke-virtual {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a()Lcom/xiaomi/mistatistic/sdk/controller/r;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a()Lcom/xiaomi/mistatistic/sdk/controller/s;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p0, Lcom/xiaomi/mistatistic/sdk/MiStatException;

    const-string p1, "recordPageStart: pageName is empty or can\'t get pageName from context"

    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final recordPageStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/mistatistic/sdk/MiStatException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final recordPageStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/mistatistic/sdk/MiStatException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/v;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Lcom/xiaomi/mistatistic/sdk/controller/e;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;-><init>()V

    invoke-virtual {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a()Lcom/xiaomi/mistatistic/sdk/controller/r;

    move-result-object p1

    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/controller/v;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a()Lcom/xiaomi/mistatistic/sdk/controller/s;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p0, Lcom/xiaomi/mistatistic/sdk/MiStatException;

    const-string p1, "recordPageStart: pageName is empty or can\'t get pageName from context"

    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "default_category"

    :cond_2
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/data/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a()V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public static final recordStringPropertyEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "default_category"

    :cond_2
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/data/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/xiaomi/mistatistic/sdk/data/g;->setAnonymous(I)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a()V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public static registerABTest(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sABTestInitialized:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Do NOT register the ABTest again."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-nez p0, :cond_3

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "registerABTest: context is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/v;->a(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ABTest is NOT allow to register in background running."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a()Lcom/xiaomi/mistatistic/sdk/controller/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/a;->b()V

    sput-boolean v1, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sABTestInitialized:Z

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ABTest register success."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static resetRegion(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a()Lcom/xiaomi/mistatistic/sdk/controller/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->d(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p0, "MiStatInterface"

    const-string v0, "region is CN,there\'s no effect to call this method!"

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final setABTestGroupManually(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkABTestInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a()Lcom/xiaomi/mistatistic/sdk/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/a;->b(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static final setAnonymousExpirationInterval(Landroid/content/Context;J)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide v0, 0x9a7ec800L

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    const-wide v0, 0x757b12c00L

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Landroid/content/Context;J)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "MI_STAT"

    const-string p1, "The value of anonymous expiration interval is invalid."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setNonMiuiGlobalMarket(Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/v;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/v;->c(Z)V

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b(Z)V

    return-void
.end method

.method public static setRegion(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a()Lcom/xiaomi/mistatistic/sdk/controller/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "MiStatInterface"

    const-string v0, "region is CN,there\'s no effect to call this method!"

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final setUploadNetwork(I)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    and-int/lit8 v0, p0, -0x20

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "setNetworkType: networkType is invalid."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/u;->a()Lcom/xiaomi/mistatistic/sdk/controller/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/u;->a(I)V

    return-void
.end method

.method public static final setUploadPolicy(IJ)V
    .locals 8

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    if-eq p0, v1, :cond_2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "setUploadPolicy: Policy(%d) is invalid."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v2, 0x2

    if-nez p0, :cond_4

    const-wide/32 v3, 0x5265c00

    cmp-long v5, p1, v3

    const-wide/32 v6, 0x15f90

    if-gtz v5, :cond_3

    cmp-long v5, p1, v6

    if-gez v5, :cond_4

    :cond_3
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setUploadPolicy: value(interval of UPLOAD_POLICY_INTERVAL) should be set between %d and %d."

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p2, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-ne p0, v1, :cond_6

    const-wide/16 v3, 0x7800

    cmp-long v5, p1, v3

    const-wide/16 v6, 0xc00

    if-gtz v5, :cond_5

    cmp-long v5, p1, v6

    if-gez v5, :cond_6

    :cond_5
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setUploadPolicy: value(size of UPLOAD_POLICY_BATCH) should be set between %d and %d."

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p2, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/u;->a()Lcom/xiaomi/mistatistic/sdk/controller/u;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/u;->a(IJ)V

    return-void
.end method
