.class public interface abstract Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;
.super Ljava/lang/Object;
.source "NativeAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeAdManagerListener"
.end annotation


# virtual methods
.method public abstract adClicked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
.end method

.method public abstract adDisliked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V
.end method

.method public abstract adFailedToLoad(I)V
.end method

.method public abstract adImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
.end method

.method public abstract adLoaded()V
.end method
