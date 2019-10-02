.class Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$2;
.super Ljava/lang/Object;
.source "ViuVideoView.java"

# interfaces
.implements Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback<",
        "Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/Exception;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->access$000(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mPlayTokenCallback onFail"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->access$500(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->access$900(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->access$500(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->access$900(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->access$000(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPlayTokenCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;->playUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;

    invoke-static {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->access$702(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;)Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->access$500(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->access$500(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->access$800(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->access$500(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->access$900(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->access$500(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->access$900(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$2;->onSuccess(Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;)V

    return-void
.end method
