.class Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$6;
.super Ljava/lang/Object;
.source "UGCVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->openMediaPlayer(Z)V
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

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$6;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$6;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$1200(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$6;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$1300(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;Z)V

    :cond_0
    return-void
.end method
