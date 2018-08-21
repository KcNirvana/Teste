.class public abstract Lmiui/assistant/index/IDataTransmissionService$Stub;
.super Landroid/os/Binder;
.source "IDataTransmissionService.java"

# interfaces
.implements Lmiui/assistant/index/IDataTransmissionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/assistant/index/IDataTransmissionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/assistant/index/IDataTransmissionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.assistant.index.IDataTransmissionService"

.field static final TRANSACTION_delAllAssistData:I = 0x2

.field static final TRANSACTION_delAssistData:I = 0x3

.field static final TRANSACTION_reportAssistData:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "miui.assistant.index.IDataTransmissionService"

    invoke-virtual {p0, p0, v0}, Lmiui/assistant/index/IDataTransmissionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/assistant/index/IDataTransmissionService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "miui.assistant.index.IDataTransmissionService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/assistant/index/IDataTransmissionService;

    if-eqz v1, :cond_1

    check-cast v0, Lmiui/assistant/index/IDataTransmissionService;

    goto :goto_0

    :cond_1
    new-instance v0, Lmiui/assistant/index/IDataTransmissionService$Stub$Proxy;

    invoke-direct {v0, p0}, Lmiui/assistant/index/IDataTransmissionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string/jumbo v3, "miui.assistant.index.IDataTransmissionService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "miui.assistant.index.IDataTransmissionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lmiui/assistant/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/assistant/assist/AssistContent;

    :goto_1
    invoke-virtual {p0, v0}, Lmiui/assistant/index/IDataTransmissionService$Stub;->reportAssistData(Lmiui/assistant/assist/AssistContent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "miui.assistant.index.IDataTransmissionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/assistant/index/IDataTransmissionService$Stub;->delAllAssistData(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "miui.assistant.index.IDataTransmissionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmiui/assistant/index/IDataTransmissionService$Stub;->delAssistData(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
