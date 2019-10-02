.class public final Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1$run$1;
.super Ljava/lang/Object;
.source "CmsVideoView.kt"

# interfaces
.implements Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1;->run()V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1$run$1",
        "Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;",
        "getTrueUrl",
        "",
        "url",
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
.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1$run$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTrueUrl(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1$run$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;->access$getMUIHandler$p(Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1$run$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;->access$getMErrorRunnable$p(Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1$run$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1;

    iget-object v1, v1, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;->getVIDEO_PLAY_URL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1$run$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;->access$setTrueUrl$p(Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1$run$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;->access$setTrueUrl$p(Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1$run$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;->access$getMUIHandler$p(Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1$run$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mPlayRunnable$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;->access$getMSetSrcRunnable$p(Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
