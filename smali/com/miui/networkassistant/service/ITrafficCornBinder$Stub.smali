.class public abstract Lcom/miui/networkassistant/service/ITrafficCornBinder$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/service/ITrafficCornBinder;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.networkassistant.service.ITrafficCornBinder"

.field static final TRANSACTION_getBrands:I = 0x4

.field static final TRANSACTION_getCities:I = 0x2

.field static final TRANSACTION_getInstructions:I = 0x5

.field static final TRANSACTION_getOperators:I = 0x3

.field static final TRANSACTION_getProvinceCodeByCityCode:I = 0x9

.field static final TRANSACTION_getProvinces:I = 0x1

.field static final TRANSACTION_getTcType:I = 0x8

.field static final TRANSACTION_isConfigUpdated:I = 0x7

.field static final TRANSACTION_isFinished:I = 0x6

.field static final TRANSACTION_registerLisener:I = 0xa

.field static final TRANSACTION_unRegisterLisener:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficCornBinder"

    invoke-virtual {p0, p0, v0}, Lcom/miui/networkassistant/service/ITrafficCornBinder$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/ITrafficCornBinder;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficCornBinder"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/networkassistant/service/ITrafficCornBinder;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/networkassistant/service/ITrafficCornBinder;

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/networkassistant/service/ITrafficCornBinder$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/ITrafficCornBinder$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficCornBinder"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficCornBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/ITrafficCornBinder$Stub;->getProvinces()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v1

    :sswitch_2
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficCornBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/ITrafficCornBinder$Stub;->getCities(I)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v1

    :sswitch_3
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficCornBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/ITrafficCornBinder$Stub;->getOperators()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v1

    :sswitch_4
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficCornBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/ITrafficCornBinder$Stub;->getBrands(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v1

    :sswitch_5
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficCornBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/ITrafficCornBinder$Stub;->getInstructions(I)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v1

    :sswitch_6
    const-string/jumbo v2, "com.miui.networkassistant.service.ITrafficCornBinder"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/ITrafficCornBinder$Stub;->isFinished()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_7
    const-string/jumbo v2, "com.miui.networkassistant.service.ITrafficCornBinder"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/ITrafficCornBinder$Stub;->isConfigUpdated()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_8
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficCornBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/ITrafficCornBinder$Stub;->getTcType()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_9
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficCornBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/ITrafficCornBinder$Stub;->getProvinceCodeByCityCode(I)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_a
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficCornBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/service/ITrafficCornBinderListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/ITrafficCornBinderListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/ITrafficCornBinder$Stub;->registerLisener(Lcom/miui/networkassistant/service/ITrafficCornBinderListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_b
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficCornBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/service/ITrafficCornBinderListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/ITrafficCornBinderListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/ITrafficCornBinder$Stub;->unRegisterLisener(Lcom/miui/networkassistant/service/ITrafficCornBinderListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
