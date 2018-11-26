.class public abstract Lcom/miui/gamebooster/service/INotificationListenerCallback$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/miui/gamebooster/service/INotificationListenerCallback;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.gamebooster.service.INotificationListenerCallback"

.field static final TRANSACTION_onNotificationPostedCallBack:I = 0x1

.field static final TRANSACTION_onNotificationRemovedCallBack:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.gamebooster.service.INotificationListenerCallback"

    invoke-virtual {p0, p0, v0}, Lcom/miui/gamebooster/service/INotificationListenerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/INotificationListenerCallback;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "com.miui.gamebooster.service.INotificationListenerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/gamebooster/service/INotificationListenerCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/gamebooster/service/INotificationListenerCallback;

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/gamebooster/service/j;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/j;-><init>(Landroid/os/IBinder;)V

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

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.miui.gamebooster.service.INotificationListenerCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_1
    const-string/jumbo v1, "com.miui.gamebooster.service.INotificationListenerCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/service/INotificationListenerCallback$Stub;->onNotificationPostedCallBack(Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :sswitch_2
    const-string/jumbo v1, "com.miui.gamebooster.service.INotificationListenerCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/service/INotificationListenerCallback$Stub;->onNotificationRemovedCallBack(Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
