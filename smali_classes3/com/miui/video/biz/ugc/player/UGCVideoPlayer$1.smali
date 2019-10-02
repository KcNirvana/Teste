.class Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;
.super Landroid/os/CountDownTimer;
.source "UGCVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onTick(J)V
    .locals 6

    :try_start_0
    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$000(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Lorg/videolan/libvlc/VlcMediaPlayer;

    move-result-object p1

    const-wide/16 v0, 0x64

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$000(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Lorg/videolan/libvlc/VlcMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/videolan/libvlc/VlcMediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$100(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Z

    move-result p1

    const-wide/16 v2, 0x3e8

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$200(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Lcom/miui/video/biz/ugc/data/UGCEntity;

    move-result-object p1

    iget-object v4, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {v4}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$000(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Lorg/videolan/libvlc/VlcMediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/videolan/libvlc/VlcMediaPlayer;->getDuration()J

    move-result-wide v4

    div-long/2addr v4, v2

    iput-wide v4, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->length:J

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1, p2}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$102(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;Z)Z

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$300(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$200(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Lcom/miui/video/biz/ugc/data/UGCEntity;

    move-result-object p1

    iget-object v4, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {v4}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$000(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Lorg/videolan/libvlc/VlcMediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/videolan/libvlc/VlcMediaPlayer;->getCurrentPosition()J

    move-result-wide v4

    div-long/2addr v4, v2

    iput-wide v4, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->duration:J

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$200(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Lcom/miui/video/biz/ugc/data/UGCEntity;

    move-result-object p1

    iget-wide v2, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->duration:J

    mul-long v2, v2, v0

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$200(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Lcom/miui/video/biz/ugc/data/UGCEntity;

    move-result-object p1

    iget-wide v4, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->length:J

    div-long/2addr v2, v4

    const-wide/16 v4, 0x5a

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    move-wide v2, v0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$300(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object p1

    invoke-interface {p1, v2, v3}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onProgress(J)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$200(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Lcom/miui/video/biz/ugc/data/UGCEntity;

    move-result-object p1

    iget-wide v2, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->duration:J

    mul-long v2, v2, v0

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$200(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Lcom/miui/video/biz/ugc/data/UGCEntity;

    move-result-object p1

    iget-wide v0, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->length:J

    div-long/2addr v2, v0

    const-wide/16 v0, 0x1e

    cmp-long p1, v2, v0

    const/4 v0, 0x0

    if-gez p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-virtual {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->refreshPlayID()V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$400(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$300(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1, p2}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$402(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;Z)Z

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1, v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$502(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;Z)Z

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    const-string p2, "small_video_play_start"

    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$600(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Z

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->trackPlay(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x50

    cmp-long p1, v2, v4

    if-ltz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$500(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$300(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1, v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$402(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;Z)Z

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1, p2}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$502(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;Z)Z

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    const-string v0, "small_video_play_end"

    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$600(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Z

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->trackPlay(Ljava/lang/String;IZ)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$600(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$300(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$200(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Lcom/miui/video/biz/ugc/data/UGCEntity;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onCompleteTrack(Lcom/miui/video/biz/ugc/data/UGCEntity;)V

    :cond_4
    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1, p2}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$602(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "UGCVideoPlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread error, don\'t worry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method
