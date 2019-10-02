.class public interface abstract Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdInterface;
.super Ljava/lang/Object;
.source "AdvertisingIdInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract getId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isLimitAdTrackingEnabled(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
