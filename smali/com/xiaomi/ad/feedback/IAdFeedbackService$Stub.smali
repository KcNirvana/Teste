.class public abstract Lcom/xiaomi/ad/feedback/IAdFeedbackService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/ad/feedback/IAdFeedbackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ad/feedback/IAdFeedbackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ad/feedback/IAdFeedbackService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.ad.feedback.IAdFeedbackService"

.field static final TRANSACTION_showFeedbackWindow:I = 0x1

.field static final TRANSACTION_showFeedbackWindowAndTrackResult:I = 0x2

.field static final TRANSACTION_showFeedbackWindowAndTrackResultForMultiAds:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.ad.feedback.IAdFeedbackService"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/ad/feedback/IAdFeedbackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.xiaomi.ad.feedback.IAdFeedbackService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/xiaomi/ad/feedback/IAdFeedbackService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v1, "com.xiaomi.ad.feedback.IAdFeedbackService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v1, "com.xiaomi.ad.feedback.IAdFeedbackService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/ad/feedback/IAdFeedbackService$Stub;->showFeedbackWindow(Lcom/xiaomi/ad/feedback/IAdFeedbackListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_2
    const-string v1, "com.xiaomi.ad.feedback.IAdFeedbackService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/xiaomi/ad/feedback/IAdFeedbackService$Stub;->showFeedbackWindowAndTrackResult(Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v1, "com.xiaomi.ad.feedback.IAdFeedbackService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/xiaomi/ad/feedback/IAdFeedbackService$Stub;->showFeedbackWindowAndTrackResultForMultiAds(Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

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
