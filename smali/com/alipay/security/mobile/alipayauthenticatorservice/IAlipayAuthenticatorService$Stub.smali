.class public abstract Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService$Stub;
.super Landroid/os/Binder;
.source "IAlipayAuthenticatorService.java"

# interfaces
.implements Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.alipay.security.mobile.alipayauthenticatorservice.IAlipayAuthenticatorService"

.field static final TRANSACTION_processCommand:I = 0x1

.field static final TRANSACTION_processCommandAsync:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.alipay.security.mobile.alipayauthenticatorservice.IAlipayAuthenticatorService"

    invoke-virtual {p0, p0, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "com.alipay.security.mobile.alipayauthenticatorservice.IAlipayAuthenticatorService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string/jumbo v0, "com.alipay.security.mobile.alipayauthenticatorservice.IAlipayAuthenticatorService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "com.alipay.security.mobile.alipayauthenticatorservice.IAlipayAuthenticatorService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService$Stub;->processCommand(Landroid/os/Bundle;)I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v0, :cond_1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "com.alipay.security.mobile.alipayauthenticatorservice.IAlipayAuthenticatorService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService$Stub;->processCommandAsync(Landroid/os/Bundle;Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener;)I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v0, :cond_3

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
