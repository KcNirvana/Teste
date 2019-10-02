.class final Lcom/kaltura/playkit/plugins/ima/IMAPlugin$1;
.super Ljava/lang/Object;
.source "IMAPlugin.java"

# interfaces
.implements Lcom/kaltura/playkit/PKPlugin$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/plugins/ima/IMAPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "IMA"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "vootdev"

    return-object v0
.end method

.method public newInstance()Lcom/kaltura/playkit/PKPlugin;
    .locals 1

    new-instance v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-direct {v0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;-><init>()V

    return-object v0
.end method

.method public warmUp(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    const-string v1, "warmUp started"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsLoader(Landroid/content/Context;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    return-void
.end method
