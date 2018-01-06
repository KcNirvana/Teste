.class public abstract Lcom/miui/systemAdSolution/landingPageV2/listener/IActionTaskResultListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/miui/systemAdSolution/landingPageV2/listener/IActionTaskResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/systemAdSolution/landingPageV2/listener/IActionTaskResultListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/systemAdSolution/landingPageV2/listener/IActionTaskResultListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.systemAdSolution.landingPageV2.listener.IActionTaskResultListener"

.field static final TRANSACTION_onActionTaskCreate:I = 0x1

.field static final TRANSACTION_onResultFail:I = 0x3

.field static final TRANSACTION_onResultSuccess:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.systemAdSolution.landingPageV2.listener.IActionTaskResultListener"

    invoke-virtual {p0, p0, v0}, Lcom/miui/systemAdSolution/landingPageV2/listener/IActionTaskResultListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/systemAdSolution/landingPageV2/listener/IActionTaskResultListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.miui.systemAdSolution.landingPageV2.listener.IActionTaskResultListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/systemAdSolution/landingPageV2/listener/IActionTaskResultListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/systemAdSolution/landingPageV2/listener/IActionTaskResultListener;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/miui/systemAdSolution/landingPageV2/listener/IActionTaskResultListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/systemAdSolution/landingPageV2/listener/IActionTaskResultListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v1, "com.miui.systemAdSolution.landingPageV2.listener.IActionTaskResultListener"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v1, "com.miui.systemAdSolution.landingPageV2.listener.IActionTaskResultListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/systemAdSolution/landingPageV2/listener/IActionTaskResultListener$Stub;->onActionTaskCreate(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_2
    const-string v1, "com.miui.systemAdSolution.landingPageV2.listener.IActionTaskResultListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/landingPageV2/listener/IActionTaskResultListener$Stub;->onResultSuccess()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v1, "com.miui.systemAdSolution.landingPageV2.listener.IActionTaskResultListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/landingPageV2/listener/IActionTaskResultListener$Stub;->onResultFail()V

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
