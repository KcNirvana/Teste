.class Lcom/miui/gamebooster/viewPointwidget/f;
.super Lcom/google/android/exoplayer2/Player$DefaultEventListener;
.source ""


# instance fields
.field final synthetic gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;


# direct methods
.method private constructor <init>(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/Player$DefaultEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;Lcom/miui/gamebooster/viewPointwidget/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/viewPointwidget/f;-><init>(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)V

    return-void
.end method


# virtual methods
.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3

    invoke-static {}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExoPlaybackException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jx(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;Z)Z

    invoke-static {p1}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jy(Lcom/google/android/exoplayer2/ExoPlaybackException;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-static {v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jz(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-virtual {v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->iX()V

    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-static {v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->js(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-static {v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jB(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInfo: STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInfo: STATE_BUFFERING"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-static {v0, v2}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jA(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-virtual {v0, v2}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jk(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-virtual {v0, v3}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jm(I)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInfo: STATE_READY"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-virtual {v0, v3}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jk(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    iget-boolean v1, v1, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->ge:Z

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jn(Z)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInfo: STATE_ENDED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-virtual {v0, v2}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jk(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-virtual {v0, v3}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jm(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-static {v0, v3}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jA(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    iget-object v0, v0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-static {v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->js(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekToDefaultPosition()V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-static {v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->js(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-virtual {v0, v2}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jk(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    iget-object v0, v0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gk:Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;->ki()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPositionDiscontinuity(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-static {v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->js(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackError()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-static {v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jB(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)V

    :cond_0
    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-static {v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jt(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-static {v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jv(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackTypeRendererSupport(I)I

    move-result v1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackTypeRendererSupport(I)I

    move-result v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/f;->gB:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-static {v0, p1}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jw(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    :cond_1
    return-void
.end method
