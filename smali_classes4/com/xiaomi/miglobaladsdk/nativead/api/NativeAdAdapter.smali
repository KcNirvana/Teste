.class public abstract Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;
.super Ljava/lang/Object;
.source "NativeAdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;,
        Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$NativeAdapterListener;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaomi/utils/a;

.field private b:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$NativeAdapterListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/utils/a;

    invoke-direct {v0}, Lcom/xiaomi/utils/a;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->a:Lcom/xiaomi/utils/a;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;)Lcom/xiaomi/utils/a;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->a:Lcom/xiaomi/utils/a;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->a:Lcom/xiaomi/utils/a;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->a:Lcom/xiaomi/utils/a;

    invoke-virtual {v2, v1}, Lcom/xiaomi/utils/a;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->a(Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v8, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;-><init>(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/xiaomi/utils/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;)Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$NativeAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$NativeAdapterListener;

    return-object p0
.end method


# virtual methods
.method protected extrasAreValid(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "placementid"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "placementid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p1, p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAdErrorCode(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract getAdKeyType()Ljava/lang/String;
.end method

.method public getAdType()Lcom/xiaomi/miglobaladsdk/Const$AdType;
    .locals 1

    sget-object v0, Lcom/xiaomi/miglobaladsdk/Const$AdType;->NATIVE:Lcom/xiaomi/miglobaladsdk/Const$AdType;

    return-object v0
.end method

.method public abstract getDefaultCacheTime()J
.end method

.method public getDefaultLoadNum()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract getReportPkgName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getReportRes(Ljava/lang/String;)I
.end method

.method public handleOnResume()V
    .locals 0

    return-void
.end method

.method public abstract loadNativeAd(Landroid/content/Context;Ljava/util/Map;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method protected notifyNativeAdFailed(Ljava/lang/String;)V
    .locals 7

    const-string v1, "key_failed"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->a(Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected notifyNativeAdFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v1, "key_failed"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->a(Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected notifyNativeAdFailed(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v1, "key_failed"

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->a(Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected notifyNativeAdLoaded(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 4

    sget-object v0, Lcom/xiaomi/utils/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$1;

    const-string v2, "NativeAdAdapter"

    const-string v3, "notifyNativeAdLoaded"

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$1;-><init>(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected notifyNativeAdLoaded(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/utils/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$2;

    const-string v2, "NativeAdAdapter"

    const-string v3, "notifyNativeAdLoaded.list"

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$2;-><init>(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setNativeAdAdapterListener(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$NativeAdapterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$NativeAdapterListener;

    return-void
.end method
