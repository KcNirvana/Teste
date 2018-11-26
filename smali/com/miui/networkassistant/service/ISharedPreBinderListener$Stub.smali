.class public abstract Lcom/miui/networkassistant/service/ISharedPreBinderListener$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/service/ISharedPreBinderListener;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.networkassistant.service.ISharedPreBinderListener"

.field static final TRANSACTION_onPutBoolean:I = 0x5

.field static final TRANSACTION_onPutFloat:I = 0x4

.field static final TRANSACTION_onPutInt:I = 0x2

.field static final TRANSACTION_onPutLong:I = 0x3

.field static final TRANSACTION_onPutString:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.networkassistant.service.ISharedPreBinderListener"

    invoke-virtual {p0, p0, v0}, Lcom/miui/networkassistant/service/ISharedPreBinderListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/ISharedPreBinderListener;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "com.miui.networkassistant.service.ISharedPreBinderListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/networkassistant/service/ISharedPreBinderListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/networkassistant/service/ISharedPreBinderListener;

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/networkassistant/service/ISharedPreBinderListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/ISharedPreBinderListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.miui.networkassistant.service.ISharedPreBinderListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1
    const-string/jumbo v2, "com.miui.networkassistant.service.ISharedPreBinderListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/miui/networkassistant/service/ISharedPreBinderListener$Stub;->onPutString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_2
    const-string/jumbo v2, "com.miui.networkassistant.service.ISharedPreBinderListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/miui/networkassistant/service/ISharedPreBinderListener$Stub;->onPutInt(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_3
    const-string/jumbo v2, "com.miui.networkassistant.service.ISharedPreBinderListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/miui/networkassistant/service/ISharedPreBinderListener$Stub;->onPutLong(Ljava/lang/String;J)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_4
    const-string/jumbo v2, "com.miui.networkassistant.service.ISharedPreBinderListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/miui/networkassistant/service/ISharedPreBinderListener$Stub;->onPutFloat(Ljava/lang/String;F)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_5
    const-string/jumbo v2, "com.miui.networkassistant.service.ISharedPreBinderListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v1

    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/miui/networkassistant/service/ISharedPreBinderListener$Stub;->onPutBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_5
    move v2, v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
