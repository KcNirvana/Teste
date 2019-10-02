.class public abstract Lse/dirac/acs/api/IAudioControlServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IAudioControlServiceCallback.java"

# interfaces
.implements Lse/dirac/acs/api/IAudioControlServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/acs/api/IAudioControlServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/dirac/acs/api/IAudioControlServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "se.dirac.acs.api.IAudioControlServiceCallback"

.field static final TRANSACTION_onFilterAdd:I = 0x1

.field static final TRANSACTION_onRoutingChanged:I = 0x5

.field static final TRANSACTION_onSetUser:I = 0x3

.field static final TRANSACTION_onSettingsChanged:I = 0x4

.field static final TRANSACTION_onSyncDone:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "se.dirac.acs.api.IAudioControlServiceCallback"

    invoke-virtual {p0, p0, v0}, Lse/dirac/acs/api/IAudioControlServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lse/dirac/acs/api/IAudioControlServiceCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "se.dirac.acs.api.IAudioControlServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lse/dirac/acs/api/IAudioControlServiceCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lse/dirac/acs/api/IAudioControlServiceCallback;

    return-object v0

    :cond_1
    new-instance v0, Lse/dirac/acs/api/IAudioControlServiceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lse/dirac/acs/api/IAudioControlServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    const-string p1, "se.dirac.acs.api.IAudioControlServiceCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lse/dirac/acs/api/IAudioControlServiceCallback$Stub;->onRoutingChanged(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    const-string p1, "se.dirac.acs.api.IAudioControlServiceCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Lse/dirac/acs/api/Output;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lse/dirac/acs/api/Output;

    goto :goto_0

    :cond_0
    move-object p1, p4

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object p4, Lse/dirac/acs/api/OutputSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Lse/dirac/acs/api/OutputSettings;

    :cond_1
    invoke-virtual {p0, p1, p4}, Lse/dirac/acs/api/IAudioControlServiceCallback$Stub;->onSettingsChanged(Lse/dirac/acs/api/Output;Lse/dirac/acs/api/OutputSettings;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    const-string p1, "se.dirac.acs.api.IAudioControlServiceCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lse/dirac/acs/api/IAudioControlServiceCallback$Stub;->onSetUser(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    const-string p1, "se.dirac.acs.api.IAudioControlServiceCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lse/dirac/acs/api/IAudioControlServiceCallback$Stub;->onSyncDone()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    const-string p1, "se.dirac.acs.api.IAudioControlServiceCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    invoke-virtual {p0, v2, v3, p1}, Lse/dirac/acs/api/IAudioControlServiceCallback$Stub;->onFilterAdd(J[I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_2
    const-string p1, "se.dirac.acs.api.IAudioControlServiceCallback"

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
