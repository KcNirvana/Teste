.class public interface abstract Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;
.super Ljava/lang/Object;
.source "IAlipayAuthenticatorService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService$Stub;
    }
.end annotation


# virtual methods
.method public abstract processCommand(Landroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract processCommandAsync(Landroid/os/Bundle;Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
