.class public interface abstract Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener;
.super Ljava/lang/Object;
.source "IAlipayAuthenticatorListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract callback(Landroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
