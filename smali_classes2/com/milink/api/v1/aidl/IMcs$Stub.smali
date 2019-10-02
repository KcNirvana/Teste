.class public abstract Lcom/milink/api/v1/aidl/IMcs$Stub;
.super Landroid/os/Binder;
.source "IMcs.java"

# interfaces
.implements Lcom/milink/api/v1/aidl/IMcs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milink/api/v1/aidl/IMcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/milink/api/v1/aidl/IMcs$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.milink.api.v1.aidl.IMcs"

.field static final TRANSACTION_connect:I = 0x8

.field static final TRANSACTION_disconnect:I = 0x9

.field static final TRANSACTION_getPlaybackDuration:I = 0x17

.field static final TRANSACTION_getPlaybackProgress:I = 0x16

.field static final TRANSACTION_getPlaybackRate:I = 0x14

.field static final TRANSACTION_getVolume:I = 0x19

.field static final TRANSACTION_rotatePhoto:I = 0x1a

.field static final TRANSACTION_setDataSource:I = 0x3

.field static final TRANSACTION_setDelegate:I = 0x5

.field static final TRANSACTION_setDeviceListener:I = 0x1

.field static final TRANSACTION_setDeviceName:I = 0x7

.field static final TRANSACTION_setPlaybackProgress:I = 0x15

.field static final TRANSACTION_setPlaybackRate:I = 0x13

.field static final TRANSACTION_setVolume:I = 0x18

.field static final TRANSACTION_show:I = 0xb

.field static final TRANSACTION_startPlayAudio:I = 0x11

.field static final TRANSACTION_startPlayAudioEx:I = 0x1c

.field static final TRANSACTION_startPlayVideo:I = 0x10

.field static final TRANSACTION_startPlayVideoEx:I = 0x1b

.field static final TRANSACTION_startShow:I = 0xa

.field static final TRANSACTION_startSlideshow:I = 0xe

.field static final TRANSACTION_stopPlay:I = 0x12

.field static final TRANSACTION_stopShow:I = 0xd

.field static final TRANSACTION_stopSlideshow:I = 0xf

.field static final TRANSACTION_unsetDataSource:I = 0x4

.field static final TRANSACTION_unsetDelegate:I = 0x6

.field static final TRANSACTION_unsetDeviceListener:I = 0x2

.field static final TRANSACTION_zoomPhoto:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p0, p0, v0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcs;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.milink.api.v1.aidl.IMcs"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/milink/api/v1/aidl/IMcs;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/milink/api/v1/aidl/IMcs;

    return-object v0

    :cond_1
    new-instance v0, Lcom/milink/api/v1/aidl/IMcs$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/milink/api/v1/aidl/IMcs$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/milink/api/v1/aidl/IMcs$Stub;->startPlayAudioEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_1
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/milink/api/v1/aidl/IMcs$Stub;->startPlayVideoEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_2
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/milink/api/v1/aidl/IMcs$Stub;->rotatePhoto(Ljava/lang/String;ZF)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_3
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->getVolume()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_4
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/milink/api/v1/aidl/IMcs$Stub;->setVolume(I)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_5
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->getPlaybackDuration()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_6
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->getPlaybackProgress()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_7
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/milink/api/v1/aidl/IMcs$Stub;->setPlaybackProgress(I)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_8
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->getPlaybackRate()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_9
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/milink/api/v1/aidl/IMcs$Stub;->setPlaybackRate(I)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_a
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->stopPlay()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_b
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/milink/api/v1/aidl/IMcs$Stub;->startPlayAudio(Ljava/lang/String;Ljava/lang/String;ID)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_c
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/milink/api/v1/aidl/IMcs$Stub;->startPlayVideo(Ljava/lang/String;Ljava/lang/String;ID)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_d
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->stopSlideshow()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_e
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->startSlideshow(IZ)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_f
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->stopShow()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_10
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/milink/api/v1/aidl/IMcs$Stub;->zoomPhoto(Ljava/lang/String;IIIIIIF)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_11
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/milink/api/v1/aidl/IMcs$Stub;->show(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_12
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->startShow()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_13
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->disconnect()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_14
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/milink/api/v1/aidl/IMcs$Stub;->connect(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_15
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/milink/api/v1/aidl/IMcs$Stub;->setDeviceName(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_16
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDelegate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/milink/api/v1/aidl/IMcs$Stub;->unsetDelegate(Lcom/milink/api/v1/aidl/IMcsDelegate;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_17
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDelegate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/milink/api/v1/aidl/IMcs$Stub;->setDelegate(Lcom/milink/api/v1/aidl/IMcsDelegate;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_18
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDataSource;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/milink/api/v1/aidl/IMcs$Stub;->unsetDataSource(Lcom/milink/api/v1/aidl/IMcsDataSource;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_19
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDataSource;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/milink/api/v1/aidl/IMcs$Stub;->setDataSource(Lcom/milink/api/v1/aidl/IMcsDataSource;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1a
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/milink/api/v1/aidl/IMcsDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDeviceListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/milink/api/v1/aidl/IMcs$Stub;->unsetDeviceListener(Lcom/milink/api/v1/aidl/IMcsDeviceListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1b
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/milink/api/v1/aidl/IMcsDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDeviceListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/milink/api/v1/aidl/IMcs$Stub;->setDeviceListener(Lcom/milink/api/v1/aidl/IMcsDeviceListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_2
    const-string p1, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
