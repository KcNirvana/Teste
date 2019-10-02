.class Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;
.super Ljava/lang/Object;
.source "VideoPlusVideoView.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;)V
    .locals 6

    const-string v0, "VideoPlusVideoView"

    const-string v1, "onPrepared: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$600(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setPlayType(I)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sImei:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setStartTime(J)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$700(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$700(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v2, "play_start_local"

    invoke-virtual {v0, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v2, "play_id"

    sget-object v3, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v2, "play_from_local"

    sget-object v3, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayFrom:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v2, "type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v4, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayType:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$802(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;I)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$900(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$900(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;->onPrepared(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1002(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;I)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1102(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;I)I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1200(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getHistory(Landroid/content/Context;Landroid/net/Uri;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->seekTo(I)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1300(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1300(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->seekTo(I)V

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1400(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1400(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->seekTo(I)V

    const-string p1, "VideoPlusVideoView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " yqf_d --------- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1400(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1402(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;I)I

    :cond_4
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1000(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1100(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1500(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1500(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1000(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1100(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;->setVideoSize(II)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1600(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I

    move-result p1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->start()V

    :cond_5
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1700(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1700(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1000(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1100(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;->setVideoSize(II)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1600(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I

    move-result p1

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->start()V

    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1800(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->onVideoPrepared()V

    return-void
.end method
