.class public Lcom/miui/zeus/columbus/ad/AdGlobalSdk;
.super Ljava/lang/Object;
.source "AdGlobalSdk.java"


# static fields
.field public static final API_VERSION:I = 0x1

.field private static volatile sInitialed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInit()V
    .locals 2

    sget-boolean v0, Lcom/miui/zeus/columbus/ad/AdGlobalSdk;->sInitialed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AdGlobalSdk should be init before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/zeus/columbus/util/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/zeus/columbus/ad/AdGlobalSdk;->sInitialed:Z

    invoke-static {p0}, Lcom/miui/zeus/columbus/util/a;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/zeus/columbus/common/GlobalHolder;->setApplicationContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/zeus/columbus/util/a;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/zeus/columbus/common/SdkConfig;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "initialize method must run in main thread"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AppSecret can\'t be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AppKey can\'t be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setDebugOn(Z)V
    .locals 0

    invoke-static {}, Lcom/miui/zeus/columbus/ad/AdGlobalSdk;->checkInit()V

    sput-boolean p0, Lcom/miui/zeus/columbus/common/SdkConfig;->DEBUG:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/zeus/columbus/util/i;->b()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/zeus/columbus/util/i;->c()V

    :goto_0
    return-void
.end method

.method public static setStaging(Z)V
    .locals 0

    invoke-static {}, Lcom/miui/zeus/columbus/ad/AdGlobalSdk;->checkInit()V

    sput-boolean p0, Lcom/miui/zeus/columbus/common/SdkConfig;->USE_STAGING:Z

    return-void
.end method
