.class Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$2;
.super Ljava/lang/Object;
.source "NativeAdManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->getAdList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$2;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$2;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$2;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;)Lcom/xiaomi/miglobaladsdk/nativead/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$2;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;)Lcom/xiaomi/miglobaladsdk/nativead/c;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$2;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;

    invoke-static {v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->b(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->c(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
