.class Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3$1;
.super Ljava/lang/Object;
.source "HungamaNewVideoView.java"

# interfaces
.implements Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3$1;->this$1:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTrueUrl(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3$1;->this$1:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->access$500(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3$1;->this$1:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->access$400(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3$1;->this$1:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->access$002(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3$1;->this$1:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->access$002(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3$1;->this$1:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->access$500(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3$1;->this$1:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->access$600(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
