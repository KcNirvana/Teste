.class public abstract Lcom/miui/securitycenter/memory/IMemoryCheck$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/miui/securitycenter/memory/IMemoryCheck;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.securitycenter.memory.IMemoryCheck"

    invoke-virtual {p0, p0, v0}, Lcom/miui/securitycenter/memory/IMemoryCheck$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/securitycenter/memory/IMemoryCheck;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "com.miui.securitycenter.memory.IMemoryCheck"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/securitycenter/memory/IMemoryCheck;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/securitycenter/memory/IMemoryCheck;

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/securitycenter/memory/f;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/memory/f;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.miui.securitycenter.memory.IMemoryCheck"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :sswitch_1
    const-string/jumbo v0, "com.miui.securitycenter.memory.IMemoryCheck"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securitycenter/memory/IMemoryScanCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/securitycenter/memory/IMemoryScanCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securitycenter/memory/IMemoryCheck$Stub;->bqc(Lcom/miui/securitycenter/memory/IMemoryScanCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :sswitch_2
    const-string/jumbo v0, "com.miui.securitycenter.memory.IMemoryCheck"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/securitycenter/memory/IMemoryCleanupCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/securitycenter/memory/IMemoryCleanupCallback;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/securitycenter/memory/IMemoryCheck$Stub;->bpL(Ljava/util/List;Lcom/miui/securitycenter/memory/IMemoryCleanupCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :sswitch_3
    const-string/jumbo v0, "com.miui.securitycenter.memory.IMemoryCheck"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/securitycenter/memory/IMemoryCheck$Stub;->bpU()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v3

    :sswitch_4
    const-string/jumbo v0, "com.miui.securitycenter.memory.IMemoryCheck"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securitycenter/memory/IMemoryCheck$Stub;->bpM(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v3

    :sswitch_5
    const-string/jumbo v0, "com.miui.securitycenter.memory.IMemoryCheck"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/securitycenter/memory/IMemoryCheck$Stub;->bqa(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :sswitch_6
    const-string/jumbo v0, "com.miui.securitycenter.memory.IMemoryCheck"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/securitycenter/memory/IMemoryCheck$Stub;->bpV(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v3

    :sswitch_7
    const-string/jumbo v0, "com.miui.securitycenter.memory.IMemoryCheck"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/securitycenter/memory/IMemoryCheck$Stub;->bpN(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v3

    :sswitch_8
    const-string/jumbo v0, "com.miui.securitycenter.memory.IMemoryCheck"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/securitycenter/memory/IMemoryCheck$Stub;->bqb(Ljava/lang/String;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :sswitch_9
    const-string/jumbo v0, "com.miui.securitycenter.memory.IMemoryCheck"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/securitycenter/memory/IMemoryCheck$Stub;->bpW()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v3

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
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
