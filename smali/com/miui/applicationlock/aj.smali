.class final Lcom/miui/applicationlock/aj;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

.field final synthetic ajU:Landroid/net/Uri;

.field final synthetic ajV:Lcom/google/android/exoplayer2/ui/PlayerView;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/net/Uri;Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    iput-object p2, p0, Lcom/miui/applicationlock/aj;->ajU:Landroid/net/Uri;

    iput-object p3, p0, Lcom/miui/applicationlock/aj;->ajV:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/aj;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->anL(Lcom/miui/applicationlock/ConfirmAccessControl;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    sget-object v1, Lcom/miui/applicationlock/utils/m;->abz:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    iget-object v1, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    invoke-static {v1, v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->anK(Lcom/miui/applicationlock/ConfirmAccessControl;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v0, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->ans(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->ant(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    iget-object v0, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v1, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->ans(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->anD(Lcom/miui/applicationlock/ConfirmAccessControl;Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v0, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amR(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    new-instance v1, Lcom/miui/applicationlock/m;

    iget-object v2, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {v1, v2, v4}, Lcom/miui/applicationlock/m;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;Lcom/miui/applicationlock/m;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amR(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amR(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amC(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    iget-object v0, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    new-instance v1, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    iget-object v2, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v2, v3}, Lcom/miui/applicationlock/utils/m;->agy(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v2, p0, Lcom/miui/applicationlock/aj;->ajU:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->anH(Lcom/miui/applicationlock/ConfirmAccessControl;Lcom/google/android/exoplayer2/source/MediaSource;)Lcom/google/android/exoplayer2/source/MediaSource;

    return-object v4

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/aj;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/miui/applicationlock/aj;->ajV:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->requestFocus()Z

    iget-object v0, p0, Lcom/miui/applicationlock/aj;->ajV:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/ui/PlayerView;->setUseController(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/aj;->ajV:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setResizeMode(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/aj;->ajV:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->amR(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    iget-object v0, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amR(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->ang(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    iget-object v0, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amK(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amR(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->anv(Lcom/miui/applicationlock/ConfirmAccessControl;)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anP(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amF(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0, v6}, Lcom/miui/applicationlock/ConfirmAccessControl;->any(Lcom/miui/applicationlock/ConfirmAccessControl;Z)Z

    iget-object v0, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->aog(Lcom/miui/applicationlock/ConfirmAccessControl;I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amR(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/aj;->ajT:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->anv(Lcom/miui/applicationlock/ConfirmAccessControl;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    goto :goto_0
.end method
