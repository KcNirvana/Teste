.class public interface abstract Lcom/xiaomi/ad/mediationconfig/internal/IMediationConfigProxy;
.super Ljava/lang/Object;
.source "IMediationConfigProxy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ad/mediationconfig/internal/IMediationConfigProxy$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCloudConfig(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
