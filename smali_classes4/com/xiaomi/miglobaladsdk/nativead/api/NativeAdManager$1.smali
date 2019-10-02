.class Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$1;
.super Ljava/lang/Object;
.source "NativeAdManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->getAd()Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$1;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$1;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;)Lcom/xiaomi/miglobaladsdk/nativead/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$1;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;)Lcom/xiaomi/miglobaladsdk/nativead/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->i()Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$1;->call()Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    move-result-object v0

    return-object v0
.end method
