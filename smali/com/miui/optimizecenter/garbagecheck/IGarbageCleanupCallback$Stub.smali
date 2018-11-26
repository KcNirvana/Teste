.class public abstract Lcom/miui/optimizecenter/garbagecheck/IGarbageCleanupCallback$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/miui/optimizecenter/garbagecheck/IGarbageCleanupCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.optimizecenter.garbagecheck.IGarbageCleanupCallback"

    invoke-virtual {p0, p0, v0}, Lcom/miui/optimizecenter/garbagecheck/IGarbageCleanupCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/optimizecenter/garbagecheck/IGarbageCleanupCallback;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "com.miui.optimizecenter.garbagecheck.IGarbageCleanupCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/optimizecenter/garbagecheck/IGarbageCleanupCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/optimizecenter/garbagecheck/IGarbageCleanupCallback;

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/optimizecenter/garbagecheck/b;

    invoke-direct {v0, p0}, Lcom/miui/optimizecenter/garbagecheck/b;-><init>(Landroid/os/IBinder;)V

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
    const-string/jumbo v0, "com.miui.optimizecenter.garbagecheck.IGarbageCleanupCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1
    const-string/jumbo v0, "com.miui.optimizecenter.garbagecheck.IGarbageCleanupCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/optimizecenter/garbagecheck/IGarbageCleanupCallback$Stub;->bvW(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "com.miui.optimizecenter.garbagecheck.IGarbageCleanupCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/optimizecenter/garbagecheck/IGarbageCleanupCallback$Stub;->bvX()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
