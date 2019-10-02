.class Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$7;
.super Ljava/lang/Object;
.source "UGCVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
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

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$7;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$7;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$1400(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$7;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$1400(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$7;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$1202(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;Z)Z

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$7;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$1300(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;Z)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$7;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$1500(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$7;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$1600(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$7;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {v0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$1502(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;Z)Z

    :cond_0
    return-void
.end method
