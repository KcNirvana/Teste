.class public final Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1;
.super Ljava/lang/Object;
.source "CmsVideoView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
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
.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsManager;->Companion:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsManager$Companion;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsManager$Companion;->getInstance()Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;->access$getApp_info$p(Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    new-instance v2, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1$run$1;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1$run$1;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1;)V

    check-cast v2, Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsManager;->getTureUrl(Ljava/lang/String;Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;)V

    return-void
.end method
