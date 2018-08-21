.class public interface abstract Lcom/xiaomi/miot/service/IMiuiService;
.super Ljava/lang/Object;
.source "IMiuiService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/miot/service/IMiuiService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getDeviceList(Lcom/xiaomi/miot/service/ICallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isLogin(Lcom/xiaomi/miot/service/ICallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDeviceOn(Ljava/lang/String;ZLcom/xiaomi/miot/service/ICallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
