.class public abstract Lcom/miui/gamebooster/service/IGameBooster$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/miui/gamebooster/service/IGameBooster;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.gamebooster.service.IGameBooster"

    invoke-virtual {p0, p0, v0}, Lcom/miui/gamebooster/service/IGameBooster$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/IGameBooster;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "com.miui.gamebooster.service.IGameBooster"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/gamebooster/service/IGameBooster;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/gamebooster/service/IGameBooster;

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/gamebooster/service/i;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/i;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.miui.gamebooster.service.IGameBooster"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1
    const-string/jumbo v0, "com.miui.gamebooster.service.IGameBooster"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/service/IGameBooster$Stub;->oo(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_2
    const-string/jumbo v0, "com.miui.gamebooster.service.IGameBooster"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/IGameBooster$Stub;->ok()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_3
    const-string/jumbo v0, "com.miui.gamebooster.service.IGameBooster"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/IGameBooster$Stub;->oq()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_4
    const-string/jumbo v0, "com.miui.gamebooster.service.IGameBooster"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/IGameBooster$Stub;->oj()V

    return v1

    :sswitch_5
    const-string/jumbo v0, "com.miui.gamebooster.service.IGameBooster"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/service/IGameBooster$Stub;->on(Ljava/util/List;)V

    return v1

    :sswitch_6
    const-string/jumbo v0, "com.miui.gamebooster.service.IGameBooster"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/IGameBooster$Stub;->ol()V

    return v1

    :sswitch_7
    const-string/jumbo v0, "com.miui.gamebooster.service.IGameBooster"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/IGameBooster$Stub;->om()V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
