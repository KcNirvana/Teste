.class Lcom/xiaomi/miglobaladsdk/nativead/c$2;
.super Ljava/lang/Object;
.source "NativeAdManagerInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

.field final synthetic b:Lcom/xiaomi/miglobaladsdk/nativead/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/nativead/c;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$2;->b:Lcom/xiaomi/miglobaladsdk/nativead/c;

    iput-object p2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$2;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$2;->b:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->c(Lcom/xiaomi/miglobaladsdk/nativead/c;)Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$2;->b:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->c(Lcom/xiaomi/miglobaladsdk/nativead/c;)Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$2;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-interface {v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;->adImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_0
    return-void
.end method
