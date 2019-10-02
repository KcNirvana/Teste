.class Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;
.super Ljava/lang/Object;
.source "PlayerVideoFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;)V
    .locals 4

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isFragmentShowing()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    iget-object p1, p1, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setMediaDuration(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setEndTime(J)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->access$000(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->access$000(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    const-string v0, "play_end_local"

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    const-string v0, "play_id"

    sget-object v1, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    const-string v0, "video_play_duration"

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->getPlayDurationTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    const-string v0, "video_duration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    iget-object v2, v2, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    const-string v0, "error"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;->getInstance()Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;

    move-result-object p1

    const-string v0, "video_plus_play_mode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;->loadInt(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "PlayerVideoFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onCompletion , playMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->access$100(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;I)V

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    iget-object p1, p1, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->isCurPageAllVideo()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    iget-object p1, p1, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->isLastOne()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->access$100(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;I)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->access$100(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;I)V

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setPlayType(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    iget-object p1, p1, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->playNext()I

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->access$100(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;I)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->access$202(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;I)I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-static {p1, v1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->access$302(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;Z)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->access$200(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;)I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->access$200(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    :cond_4
    invoke-static {v2}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setPlayType(I)V

    :cond_5
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-static {p1, v1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->access$100(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;I)V

    goto :goto_0

    :cond_6
    if-ne p1, v2, :cond_a

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    iget-object p1, p1, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->isCurPageAllVideo()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "PlayerVideoFragment"

    const-string v3, " playNext:"

    invoke-static {p1, v3}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->access$100(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    iget-object p1, p1, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->playNext()I

    move-result p1

    if-eq p1, v1, :cond_7

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setPlayType(I)V

    :cond_7
    if-ne p1, v1, :cond_a

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->access$202(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;I)I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-static {p1, v1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->access$302(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;Z)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->access$200(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;)I

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->access$200(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;)I

    :cond_8
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-static {p1, v1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->access$100(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;I)V

    goto :goto_0

    :cond_9
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->access$100(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;I)V

    :cond_a
    :goto_0
    return-void
.end method
