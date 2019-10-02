.class Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$6;
.super Ljava/lang/Object;
.source "VideoPlusVideoView.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;


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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$6;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;)V
    .locals 7

    const-string v0, "VideoPlusVideoView"

    const-string v1, "onCompletion: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$6;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$600(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$6;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1900(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setMediaDuration(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setEndTime(J)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$6;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$700(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$6;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$700(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "play_end_local"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "play_id"

    sget-object v2, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "video_play_duration"

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->getPlayDurationTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "video_duration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$6;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v3}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1900(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "error"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$6;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$802(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;I)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$6;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1602(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;I)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$6;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$6;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1200(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$6;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getDuration()I

    move-result v5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$6;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$600(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Z

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->saveHistory(Landroid/content/Context;Landroid/net/Uri;ZIIZ)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$6;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$2000(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$6;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$2000(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;->onCompletion(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;)V

    :cond_1
    return-void
.end method
