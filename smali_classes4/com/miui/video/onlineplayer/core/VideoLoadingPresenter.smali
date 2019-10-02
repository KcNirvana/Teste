.class public final Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;
.super Ljava/lang/Object;
.source "VideoLoadingPresenter.kt"

# interfaces
.implements Lcom/miui/video/biz/player/online/LoadingContract$LoadingPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/video/biz/player/online/LoadingContract$LoadingPresenter<",
        "Lcom/miui/video/onlineplayer/ui/VideoLoadingView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoLoadingPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoLoadingPresenter.kt\ncom/miui/video/onlineplayer/core/VideoLoadingPresenter\n*L\n1#1,58:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010\n\u001a\u00020\u0008H\u0016J\u0012\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0008H\u0016J\u0010\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0002X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;",
        "Lcom/miui/video/biz/player/online/LoadingContract$LoadingPresenter;",
        "Lcom/miui/video/onlineplayer/ui/VideoLoadingView;",
        "()V",
        "loadingView",
        "getVideoContext",
        "Lcom/miui/video/onlineplayer/core/VideoContext;",
        "onComponentDestroy",
        "",
        "onComponentStart",
        "onComponentStop",
        "onVideoHideLoading",
        "videoView",
        "Lcom/miui/video/player/service/media/IVideoView;",
        "onVideoLoading",
        "onVideoStatusChanged",
        "status",
        "Lcom/miui/video/base/PlayStatus;",
        "onViewDismissed",
        "setView",
        "view",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private loadingView:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoContext()Lcom/miui/video/onlineplayer/core/VideoContext;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "not implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public onComponentDestroy()V
    .locals 3

    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "not implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public onComponentStart()V
    .locals 3

    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "not implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public onComponentStop()V
    .locals 3

    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "not implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public onVideoHideLoading(Lcom/miui/video/player/service/media/IVideoView;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IVideoView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->loadingView:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    if-nez p1, :cond_0

    const-string v0, "loadingView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->hide()V

    :cond_1
    return-void
.end method

.method public onVideoLoading(Lcom/miui/video/player/service/media/IVideoView;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IVideoView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->loadingView:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    if-nez p1, :cond_0

    const-string v0, "loadingView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->show()V

    :cond_1
    return-void
.end method

.method public onVideoStatusChanged(Lcom/miui/video/base/PlayStatus;)V
    .locals 1
    .param p1    # Lcom/miui/video/base/PlayStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/miui/video/base/PlayStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->loadingView:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    if-nez p1, :cond_0

    const-string v0, "loadingView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->hide()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->loadingView:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    if-nez p1, :cond_1

    const-string v0, "loadingView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->hide()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->loadingView:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    if-nez p1, :cond_2

    const-string v0, "loadingView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->hide()V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->loadingView:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    if-nez p1, :cond_3

    const-string v0, "loadingView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->show()V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->loadingView:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    if-nez p1, :cond_4

    const-string v0, "loadingView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->show()V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->loadingView:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    if-nez p1, :cond_5

    const-string v0, "loadingView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->show()V

    :cond_6
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewDismissed()V
    .locals 3

    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "not implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public setView(Lcom/miui/video/onlineplayer/ui/VideoLoadingView;)V
    .locals 1
    .param p1    # Lcom/miui/video/onlineplayer/ui/VideoLoadingView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->loadingView:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    return-void
.end method

.method public bridge synthetic setView(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    invoke-virtual {p0, p1}, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->setView(Lcom/miui/video/onlineplayer/ui/VideoLoadingView;)V

    return-void
.end method
