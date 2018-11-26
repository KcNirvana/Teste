.class public abstract Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/miui/guardprovider/aidl/IAntiVirusServer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.guardprovider.aidl.IAntiVirusServer"

    invoke-virtual {p0, p0, v0}, Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "com.miui.guardprovider.aidl.IAntiVirusServer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/guardprovider/aidl/a;

    invoke-direct {v0, p0}, Lcom/miui/guardprovider/aidl/a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.miui.guardprovider.aidl.IAntiVirusServer"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1
    const-string/jumbo v2, "com.miui.guardprovider.aidl.IAntiVirusServer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/guardprovider/aidl/IVirusObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/guardprovider/aidl/IVirusObserver;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, v2, v3, v0}, Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;->apM([Ljava/lang/String;Lcom/miui/guardprovider/aidl/IVirusObserver;Z)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_2
    const-string/jumbo v2, "com.miui.guardprovider.aidl.IAntiVirusServer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;->apL(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_3
    const-string/jumbo v2, "com.miui.guardprovider.aidl.IAntiVirusServer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;->apH(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_4
    const-string/jumbo v2, "com.miui.guardprovider.aidl.IAntiVirusServer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;->apK(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_5
    const-string/jumbo v0, "com.miui.guardprovider.aidl.IAntiVirusServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;->apE(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_6
    const-string/jumbo v0, "com.miui.guardprovider.aidl.IAntiVirusServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/guardprovider/aidl/IVirusObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/guardprovider/aidl/IVirusObserver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;->apG(Lcom/miui/guardprovider/aidl/IVirusObserver;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_7
    const-string/jumbo v0, "com.miui.guardprovider.aidl.IAntiVirusServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/guardprovider/aidl/IVirusObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/guardprovider/aidl/IVirusObserver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;->apN(Lcom/miui/guardprovider/aidl/IVirusObserver;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_8
    const-string/jumbo v0, "com.miui.guardprovider.aidl.IAntiVirusServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;->apF(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_9
    const-string/jumbo v0, "com.miui.guardprovider.aidl.IAntiVirusServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_a
    const-string/jumbo v0, "com.miui.guardprovider.aidl.IAntiVirusServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;->apJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_b
    const-string/jumbo v0, "com.miui.guardprovider.aidl.IAntiVirusServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;->apI()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v1

    :sswitch_c
    const-string/jumbo v0, "com.miui.guardprovider.aidl.IAntiVirusServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/guardprovider/aidl/IWifiDetectObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/guardprovider/aidl/IWifiDetectObserver;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;->apQ(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IWifiDetectObserver;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_d
    const-string/jumbo v0, "com.miui.guardprovider.aidl.IAntiVirusServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/guardprovider/aidl/IWifiDetectObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/guardprovider/aidl/IWifiDetectObserver;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;->apP(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IWifiDetectObserver;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_e
    const-string/jumbo v0, "com.miui.guardprovider.aidl.IAntiVirusServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/guardprovider/aidl/IWifiDetectObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/guardprovider/aidl/IWifiDetectObserver;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;->apO(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IWifiDetectObserver;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_f
    const-string/jumbo v0, "com.miui.guardprovider.aidl.IAntiVirusServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/guardprovider/aidl/IWifiDetectObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/guardprovider/aidl/IWifiDetectObserver;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;->apR(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IWifiDetectObserver;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
