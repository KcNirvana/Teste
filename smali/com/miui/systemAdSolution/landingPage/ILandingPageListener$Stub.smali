.class public abstract Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.systemAdSolution.landingPage.ILandingPageListener"

.field static final TRANSACTION_onDeeplinkFail:I = 0xa

.field static final TRANSACTION_onDeeplinkSuccess:I = 0x9

.field static final TRANSACTION_onDownloadCancel:I = 0x6

.field static final TRANSACTION_onDownloadFail:I = 0x3

.field static final TRANSACTION_onDownloadPause:I = 0x4

.field static final TRANSACTION_onDownloadProgress:I = 0x5

.field static final TRANSACTION_onDownloadStart:I = 0x1

.field static final TRANSACTION_onDownloadSuccess:I = 0x2

.field static final TRANSACTION_onH5Fail:I = 0xc

.field static final TRANSACTION_onH5Success:I = 0xb

.field static final TRANSACTION_onInstallFail:I = 0x8

.field static final TRANSACTION_onInstallSuccess:I = 0x7

.field static final TRANSACTION_onLanuchAppFail:I = 0xe

.field static final TRANSACTION_onLanuchAppSuccess:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.systemAdSolution.landingPage.ILandingPageListener"

    invoke-virtual {p0, p0, v0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "com.miui.systemAdSolution.landingPage.ILandingPageListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string/jumbo v0, "com.miui.systemAdSolution.landingPage.ILandingPageListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1
    const-string/jumbo v0, "com.miui.systemAdSolution.landingPage.ILandingPageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub;->onDownloadStart()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_2
    const-string/jumbo v0, "com.miui.systemAdSolution.landingPage.ILandingPageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub;->onDownloadSuccess()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_3
    const-string/jumbo v0, "com.miui.systemAdSolution.landingPage.ILandingPageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub;->onDownloadFail(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_4
    const-string/jumbo v0, "com.miui.systemAdSolution.landingPage.ILandingPageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub;->onDownloadPause(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_5
    const-string/jumbo v0, "com.miui.systemAdSolution.landingPage.ILandingPageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub;->onDownloadProgress(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_6
    const-string/jumbo v0, "com.miui.systemAdSolution.landingPage.ILandingPageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub;->onDownloadCancel()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_7
    const-string/jumbo v0, "com.miui.systemAdSolution.landingPage.ILandingPageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub;->onInstallSuccess()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_8
    const-string/jumbo v0, "com.miui.systemAdSolution.landingPage.ILandingPageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub;->onInstallFail(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_9
    const-string/jumbo v0, "com.miui.systemAdSolution.landingPage.ILandingPageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub;->onDeeplinkSuccess()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_a
    const-string/jumbo v0, "com.miui.systemAdSolution.landingPage.ILandingPageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub;->onDeeplinkFail()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_b
    const-string/jumbo v0, "com.miui.systemAdSolution.landingPage.ILandingPageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub;->onH5Success()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_c
    const-string/jumbo v0, "com.miui.systemAdSolution.landingPage.ILandingPageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub;->onH5Fail()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_d
    const-string/jumbo v0, "com.miui.systemAdSolution.landingPage.ILandingPageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub;->onLanuchAppSuccess()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_e
    const-string/jumbo v0, "com.miui.systemAdSolution.landingPage.ILandingPageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub;->onLanuchAppFail()V

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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
