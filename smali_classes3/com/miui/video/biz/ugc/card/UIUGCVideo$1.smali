.class Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;
.super Ljava/lang/Object;
.source "UIUGCVideo.java"

# interfaces
.implements Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/ugc/card/UIUGCVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onAudioFocusChange(Z)V

    :cond_0
    return-void
.end method

.method public onBufferingEnd()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onBufferingEnd()V

    :cond_0
    return-void
.end method

.method public onCallStateChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onCallStateChange(Z)V

    :cond_0
    return-void
.end method

.method public onCardShowTrack(Lcom/miui/video/biz/ugc/data/UGCEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onCardShowTrack(Lcom/miui/video/biz/ugc/data/UGCEntity;)V

    :cond_0
    return-void
.end method

.method public onCompleteTrack(Lcom/miui/video/biz/ugc/data/UGCEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onCompleteTrack(Lcom/miui/video/biz/ugc/data/UGCEntity;)V

    :cond_0
    return-void
.end method

.method public onLikeChange(Lcom/miui/video/biz/ugc/data/UGCEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onLikeChange(Lcom/miui/video/biz/ugc/data/UGCEntity;)V

    :cond_0
    return-void
.end method

.method public onProgress(J)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onProgress(J)V

    :cond_0
    return-void
.end method

.method public onShare(Lcom/miui/video/biz/ugc/data/UGCEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onShare(Lcom/miui/video/biz/ugc/data/UGCEntity;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onStart()V

    :cond_0
    return-void
.end method

.method public onStartTrack(Lcom/miui/video/biz/ugc/data/UGCEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onStartTrack(Lcom/miui/video/biz/ugc/data/UGCEntity;)V

    :cond_0
    return-void
.end method
