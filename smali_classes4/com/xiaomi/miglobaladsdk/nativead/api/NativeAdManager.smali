.class public Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;
.super Ljava/lang/Object;
.source "NativeAdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdListManagerListener;,
        Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaomi/miglobaladsdk/nativead/c;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->b:I

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->isAdEnableInEURegion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_1
    new-instance v0, Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/miglobaladsdk/nativead/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;)Lcom/xiaomi/miglobaladsdk/nativead/c;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    return-object p0
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-virtual {v0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Z)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->b:I

    return p0
.end method


# virtual methods
.method public getAd()Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;
    .locals 1

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->isAdEnableInEURegion()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$1;-><init>(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;)V

    invoke-static {v0}, Lcom/xiaomi/utils/j;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    return-object v0
.end method

.method public getAdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->isAdEnableInEURegion()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$2;-><init>(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;)V

    invoke-static {v0}, Lcom/xiaomi/utils/j;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getExtraInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/a/b;->a()Lcom/xiaomi/miglobaladsdk/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/miglobaladsdk/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public loadAd()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->a(Z)V

    return-void
.end method

.method public preloadAd()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->a(Z)V

    return-void
.end method

.method public setDisableAdType(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-virtual {v0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setLoadConfig(Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;->adSize:I

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->b:I

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-virtual {v0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;)V

    :cond_1
    return-void
.end method

.method public setLoadParams(Lcom/xiaomi/miglobaladsdk/AdLoadParams;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-virtual {v0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Lcom/xiaomi/miglobaladsdk/AdLoadParams;)V

    :cond_0
    return-void
.end method

.method public setNativeAdManagerListener(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-virtual {v0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;)V

    :cond_0
    return-void
.end method
