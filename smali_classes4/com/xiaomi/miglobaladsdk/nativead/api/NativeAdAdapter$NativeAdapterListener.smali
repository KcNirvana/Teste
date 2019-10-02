.class public interface abstract Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$NativeAdapterListener;
.super Ljava/lang/Object;
.source "NativeAdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeAdapterListener"
.end annotation


# virtual methods
.method public abstract onAdapterFailed(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onAdapterLoaded(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
.end method

.method public abstract onAdapterLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;)V"
        }
    .end annotation
.end method
