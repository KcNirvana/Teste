.class public interface abstract Lcom/miui/video/base/ad/mediation/entity/MediationEntity$OnSelfLoadListener;
.super Ljava/lang/Object;
.source "MediationEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/ad/mediation/entity/MediationEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSelfLoadListener"
.end annotation


# virtual methods
.method public abstract adClicked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
.end method

.method public abstract adFailedToLoad(I)V
.end method

.method public abstract adImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
.end method

.method public abstract adLoaded(Ljava/lang/String;)V
.end method
