.class public Lcom/market/sdk/DesktopRecommendCallbackAdapter;
.super Landroid/os/ResultReceiver;
.source "DesktopRecommendCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/DesktopRecommendCallbackAdapter$Proxy;
    }
.end annotation


# static fields
.field private static final CODE_LOAD_FAILED:I = 0x1

.field private static final CODE_LOAD_SUCCESS:I = 0x0

.field private static final KEY_JSON:Ljava/lang/String; = "json"


# instance fields
.field private final mAdaptee:Lcom/market/sdk/DesktopRecommendCallback;


# direct methods
.method public constructor <init>(Lcom/market/sdk/DesktopRecommendCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/market/sdk/DesktopRecommendCallbackAdapter;->mAdaptee:Lcom/market/sdk/DesktopRecommendCallback;

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/market/sdk/DesktopRecommendCallbackAdapter;->mAdaptee:Lcom/market/sdk/DesktopRecommendCallback;

    invoke-interface {p1}, Lcom/market/sdk/DesktopRecommendCallback;->onLoadFailed()V

    goto :goto_0

    :pswitch_1
    const-string p1, "json"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/market/sdk/DesktopRecommendCallbackAdapter;->mAdaptee:Lcom/market/sdk/DesktopRecommendCallback;

    invoke-static {p1}, Lcom/market/sdk/DesktopRecommendInfo;->restore(Ljava/lang/String;)Lcom/market/sdk/DesktopRecommendInfo;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/market/sdk/DesktopRecommendCallback;->onLoadSuccess(Lcom/market/sdk/DesktopRecommendInfo;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
