.class Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$3;
.super Ljava/lang/Object;
.source "UGCVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->initFindViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$3;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$3;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-virtual {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$3;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    const-string v0, "small_video_pause_click"

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->pause(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$3;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$800(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$3;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$800(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$3;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    const-string v0, "small_video_continue_click"

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->resume(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
