.class public Lcom/market/sdk/DesktopFolderConfigCallbackAdapter;
.super Landroid/os/ResultReceiver;
.source "DesktopFolderConfigCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/DesktopFolderConfigCallbackAdapter$Proxy;
    }
.end annotation


# static fields
.field private static final KEY_DATA:Ljava/lang/String; = "key_data"

.field private static final RESULT_CODE_FAILED:I = 0x2

.field private static final RESULT_CODE_SUCCESS:I = 0x1


# instance fields
.field private final mAdaptee:Lcom/market/sdk/IDesktopFolderConfigCallback;


# direct methods
.method public constructor <init>(Lcom/market/sdk/IDesktopFolderConfigCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/market/sdk/DesktopFolderConfigCallbackAdapter;->mAdaptee:Lcom/market/sdk/IDesktopFolderConfigCallback;

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "key_data"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/market/sdk/DesktopFolderConfigCallbackAdapter;->mAdaptee:Lcom/market/sdk/IDesktopFolderConfigCallback;

    invoke-interface {p2, p1}, Lcom/market/sdk/IDesktopFolderConfigCallback;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "key_data"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/market/sdk/DesktopFolderConfigCallbackAdapter;->mAdaptee:Lcom/market/sdk/IDesktopFolderConfigCallback;

    invoke-interface {p2, p1}, Lcom/market/sdk/IDesktopFolderConfigCallback;->onSuccess(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
