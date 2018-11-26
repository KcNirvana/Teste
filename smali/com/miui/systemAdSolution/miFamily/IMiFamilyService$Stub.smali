.class public abstract Lcom/miui/systemAdSolution/miFamily/IMiFamilyService$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.systemAdSolution.miFamily.IMiFamilyService"

.field static final TRANSACTION_getMiFamilyLogoPath:I = 0x3

.field static final TRANSACTION_getMiFamilyTitle:I = 0x4

.field static final TRANSACTION_getMiFamilyUrl:I = 0x2

.field static final TRANSACTION_showMiFamily:I = 0x1

.field static final TRANSACTION_trackClick:I = 0x6

.field static final TRANSACTION_trackView:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.systemAdSolution.miFamily.IMiFamilyService"

    invoke-virtual {p0, p0, v0}, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "com.miui.systemAdSolution.miFamily.IMiFamilyService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string/jumbo v0, "com.miui.systemAdSolution.miFamily.IMiFamilyService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1
    const-string/jumbo v0, "com.miui.systemAdSolution.miFamily.IMiFamilyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService$Stub;->showMiFamily()Z

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
    const-string/jumbo v0, "com.miui.systemAdSolution.miFamily.IMiFamilyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService$Stub;->getMiFamilyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_3
    const-string/jumbo v0, "com.miui.systemAdSolution.miFamily.IMiFamilyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService$Stub;->getMiFamilyLogoPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_4
    const-string/jumbo v0, "com.miui.systemAdSolution.miFamily.IMiFamilyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService$Stub;->getMiFamilyTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_5
    const-string/jumbo v0, "com.miui.systemAdSolution.miFamily.IMiFamilyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService$Stub;->trackView(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_6
    const-string/jumbo v0, "com.miui.systemAdSolution.miFamily.IMiFamilyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService$Stub;->trackClick(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
