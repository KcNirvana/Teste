.class public abstract Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;
.super Ljava/lang/Object;
.source "OriginalbaseVideoView.java"

# interfaces
.implements Lcom/miui/video/player/service/media/IVideoView;


# static fields
.field private static final TAG:Ljava/lang/String; = "OriginalbaseVideoView"

.field private static final TRACK_TYPE_TEXT:I = 0x2

.field public static final TRACK_TYPE_VIDEO:I = 0x2

.field protected static final VIDEO_AD_URL:Ljava/lang/String; = "ad_url"

.field protected static final VIDEO_DURATION:Ljava/lang/String; = "duration"

.field protected static final VIDEO_ID:Ljava/lang/String; = "id"

.field protected static final VIDEO_NAME:Ljava/lang/String; = "name"

.field protected static final VIDEO_PLAY_URL:Ljava/lang/String; = "play_url"


# instance fields
.field private IsComplete:Z

.field private activityPaused:Z

.field private changingResolution:Z

.field protected currentPlaybackState:I

.field private dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private disableText:Z

.field eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

.field private isBuffering:Z

.field protected isForceRemote:Z

.field private isOnPrepared:Z

.field protected item_id:Ljava/lang/String;

.field private loadFromLocalServer:Z

.field mChannelView:Landroid/widget/ImageView;

.field protected mContext:Landroid/content/Context;

.field private mDefaultTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field protected mOffset:I

.field mOkHttpClient:Lokhttp3/OkHttpClient;

.field protected mOnBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

.field protected mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

.field protected mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

.field protected mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

.field protected mOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

.field private mVideoUrl:Ljava/lang/String;

.field protected pluginId:Ljava/lang/String;

.field private resolutionCost:Ljava/lang/String;

.field private resolutionFrom:Ljava/lang/String;

.field private resolutionTo:Ljava/lang/String;

.field private rlView:Landroid/view/View;

.field private simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private simpleExoPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private timeStamp:J

.field private trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private videoRendererIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->item_id:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->changingResolution:Z

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->loadFromLocalServer:Z

    iput v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mOffset:I

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->activityPaused:Z

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->isBuffering:Z

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->isOnPrepared:Z

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->disableText:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->pluginId:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->isForceRemote:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->currentPlaybackState:I

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->IsComplete:Z

    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xc

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mOkHttpClient:Lokhttp3/OkHttpClient;

    new-instance v1, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)V

    iput-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    const-string v1, "OriginalbaseVideoView"

    const-string v2, "20190411"

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->disableText:Z

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/player/online/R$layout;->originalbase_player_fragment:I

    const/4 v1, 0x0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->rlView:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->rlView:Landroid/view/View;

    sget p2, Lcom/miui/video/biz/player/online/R$id;->exoplayer_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->rlView:Landroid/view/View;

    sget p2, Lcom/miui/video/biz/player/online/R$id;->videoPlayerWithAdPlayback:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setUseController(Z)V

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->addMark(Landroid/widget/RelativeLayout;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->hideMark()V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->initPlayer()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->timeStamp:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->timeStamp:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->isBuffering:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->loadFromLocalServer:Z

    return p0
.end method

.method static synthetic access$102(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->isBuffering:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->changingResolution:Z

    return p0
.end method

.method static synthetic access$202(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->changingResolution:Z

    return p1
.end method

.method static synthetic access$302(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->resolutionCost:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->isOnPrepared:Z

    return p0
.end method

.method static synthetic access$402(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->isOnPrepared:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->activityPaused:Z

    return p0
.end method

.method static synthetic access$700(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->showMark()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->IsComplete:Z

    return p0
.end method

.method static synthetic access$802(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->IsComplete:Z

    return p1
.end method

.method static synthetic access$900(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->hideMark()V

    return-void
.end method

.method private buildMediaSource(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result v0

    const-string v1, "OriginalbaseVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildMediaSource uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    return-object p1

    :pswitch_1
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->setAllowChunklessPreparation(Z)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    return-object p1

    :pswitch_2
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    new-instance v1, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    move-result-object p1

    return-object p1

    :pswitch_3
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getChannelMark()Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0x64

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mChannelView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mChannelView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->getLogo()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mChannelView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mChannelView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mChannelView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private hideMark()V
    .locals 2

    const-string v0, "OriginalbaseVideoView"

    const-string v1, "Originalbase test hideMark"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mChannelView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mChannelView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private initPlayer()V
    .locals 5

    const-string v0, "OriginalbaseVideoView"

    const-string v1, "initializeExoPlayer v2.8.4"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    new-instance v1, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/AdaptiveTrackSelection$Factory;

    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    invoke-direct {v1, v2}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->disableText:Z

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$2;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$2;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->setEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->build()Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/AdaptiveTrackSelection$Factory;

    invoke-direct {v1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    const v0, 0x4c4b400

    invoke-virtual {v1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/AdaptiveTrackSelection$Factory;->setMaxVideoBitrate(I)V

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mDefaultTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    new-instance v0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;-><init>()V

    const/16 v1, 0x3a98

    const v2, 0xc350

    const/16 v3, 0x9c4

    const/16 v4, 0x1388

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->setBufferDurationsMs(IIII)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->createDefaultLoadControl()Lcom/google/android/exoplayer2/DefaultLoadControl;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mDefaultTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->isOnPrepared:Z

    return-void
.end method

.method private releasePlayer()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->hideMark()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->onStopStatsEvent()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    :cond_0
    return-void
.end method

.method private showMark()V
    .locals 2

    const-string v0, "OriginalbaseVideoView"

    const-string v1, "Originalbase test showMark"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mChannelView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mChannelView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected addMark(Landroid/widget/RelativeLayout;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->getChannelMark()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public asView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->rlView:Landroid/view/View;

    return-object v0
.end method

.method public canBuffering()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 2

    const-string v0, "OriginalbaseVideoView"

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->releasePlayer()V

    return-void
.end method

.method public continuePlay(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->seekTo(I)V

    return-void
.end method

.method public getBufferPercentage()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 6

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method public getCurrentResolution()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mDefaultTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mDefaultTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    iget v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->videoRendererIndex:I

    iget-object v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->videoRendererIndex:I

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "0"

    return-object v0
.end method

.method public getDuration()I
    .locals 6

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method public getInitResolution()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "0"

    return-object v0
.end method

.method protected getLogo()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    sget v0, Lcom/miui/video/biz/player/online/R$drawable;->flickstree_watermark_logo:I

    return v0
.end method

.method public getPlaySpeed()F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    return v0
.end method

.method public getSupportedResolutions()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mDefaultTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v1, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-lez v1, :cond_2

    iput v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->videoRendererIndex:I

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v3, v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    iget v5, v3, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v4, v5, :cond_1

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    iget v5, v5, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object v1

    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mVideoUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mVideoUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "play_url"

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 2

    const-string v0, "OriginalbaseVideoView"

    const-string v1, "getVideoHeight: "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->rlView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 2

    const-string v0, "OriginalbaseVideoView"

    const-string v1, "getVideoWidth: "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->rlView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected abstract handleOnError(I)V
.end method

.method public hasLoadingAfterAd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAdsPlaying()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAirkanEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInPlaybackState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->currentPlaybackState:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    :cond_1
    return v1
.end method

.method public onActivityDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->releasePlayer()V

    return-void
.end method

.method public onActivityPause()V
    .locals 2

    const-string v0, "OriginalbaseVideoView"

    const-string v1, "onActivityPause"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->activityPaused:Z

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    const-string v0, "OriginalbaseVideoView"

    const-string v1, "Player is not init."

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->pause()V

    :goto_0
    return-void
.end method

.method public onActivityResume()V
    .locals 2

    const-string v0, "OriginalbaseVideoView"

    const-string v1, "onActivityResume"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->activityPaused:Z

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->start()V

    return-void
.end method

.method protected abstract onBufferEndStatsEvent()V
.end method

.method protected abstract onBufferStartStatsEvent()V
.end method

.method protected abstract onCompletedStatsEvent()V
.end method

.method protected abstract onErrorStatsEvent(II)V
.end method

.method protected abstract onPauseStatsEvent()V
.end method

.method protected abstract onPrepareStatsEvent()V
.end method

.method protected abstract onPreparedStatsEvent()V
.end method

.method protected abstract onResumeStatsEvent()V
.end method

.method protected abstract onSeekCompletedStatsEvent()V
.end method

.method protected abstract onSeekStatsEvent()V
.end method

.method protected abstract onStartStatsEvent()V
.end method

.method protected abstract onStopStatsEvent()V
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->IsComplete:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->onPauseStatsEvent()V

    const-string v0, "OriginalbaseVideoView"

    const-string v1, "setPlayWhenReady false"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_1
    return-void
.end method

.method public requestVideoLayout()V
    .locals 2

    const-string v0, "OriginalbaseVideoView"

    const-string v1, "requestVideoLayout: "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public seekTo(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->onSeekStatsEvent()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->IsComplete:Z

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    return-void
.end method

.method public setAdsPlayListener(Lcom/miui/video/player/service/media/AdsPlayListener;)V
    .locals 1

    const-string p1, "OriginalbaseVideoView"

    const-string v0, "AdsPlayListener"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "isForceRemote"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "isForceRemote"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->isForceRemote:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->isForceRemote:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OriginalbaseVideoView"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const v0, 0x15f93

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->handleOnError(I)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;ILjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p3, 0x0

    :try_start_0
    iput-boolean p3, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->IsComplete:Z

    iput p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mOffset:I

    const-string p2, "OriginalbaseVideoView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataSource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    const/4 p2, 0x0

    const/16 p3, 0x384

    const v0, 0x15f91

    invoke-interface {p1, p2, p3, v0}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->onPrepareStatsEvent()V

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mVideoUrl:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object p1, Lcom/miui/video/biz/player/online/router/ServiceHolder;->INSTANCE:Lcom/miui/video/biz/player/online/router/ServiceHolder;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/router/ServiceHolder;->getSLocalServerService()Lcom/miui/video/base/routers/localserver/LocalServerService;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->item_id:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/miui/video/base/routers/localserver/LocalServerService;->getCacheVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->isForceRemote:Z

    if-nez p2, :cond_2

    sget-object p2, Lcom/miui/video/biz/player/online/router/ServiceHolder;->INSTANCE:Lcom/miui/video/biz/player/online/router/ServiceHolder;

    invoke-virtual {p2}, Lcom/miui/video/biz/player/online/router/ServiceHolder;->getSLocalServerService()Lcom/miui/video/base/routers/localserver/LocalServerService;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->item_id:Ljava/lang/String;

    invoke-interface {p2, p3}, Lcom/miui/video/base/routers/localserver/LocalServerService;->getCacheVideoPreloadId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->setPreload(Z)V

    sget-object p3, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {p3, p2}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->setPreloadId(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->loadFromLocalServer:Z

    sget-object p2, Lcom/miui/video/biz/player/online/router/ServiceHolder;->INSTANCE:Lcom/miui/video/biz/player/online/router/ServiceHolder;

    invoke-virtual {p2}, Lcom/miui/video/biz/player/online/router/ServiceHolder;->getSLocalServerService()Lcom/miui/video/base/routers/localserver/LocalServerService;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mContext:Landroid/content/Context;

    const-string v0, "MiuiOriginalPlayer"

    invoke-interface {p2, p3, v0}, Lcom/miui/video/base/routers/localserver/LocalServerService;->getServerValidUA(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p2, "Target-Host"

    sget-object p3, Lcom/miui/video/biz/player/online/router/ServiceHolder;->INSTANCE:Lcom/miui/video/biz/player/online/router/ServiceHolder;

    invoke-virtual {p3}, Lcom/miui/video/biz/player/online/router/ServiceHolder;->getSLocalServerService()Lcom/miui/video/base/routers/localserver/LocalServerService;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mVideoUrl:Ljava/lang/String;

    invoke-interface {p3, v0}, Lcom/miui/video/base/routers/localserver/LocalServerService;->getTargetHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->pluginId:Ljava/lang/String;

    const-string p3, "viu"

    if-eq p2, p3, :cond_1

    const-string p2, "Base-Host"

    iget-object p3, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {v3, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p2, "CP"

    iget-object p3, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->pluginId:Ljava/lang/String;

    invoke-virtual {v3, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/MiOkHttpDataSourceFactory;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/MiOkHttpDataSourceFactory;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Ljava/util/HashMap;Lcom/google/android/exoplayer2/upstream/TransferListener;Lokhttp3/CacheControl;)V

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->buildMediaSource(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    goto :goto_0

    :cond_2
    iput-boolean p3, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->loadFromLocalServer:Z

    sget-object p1, Lcom/miui/video/biz/player/online/router/ServiceHolder;->INSTANCE:Lcom/miui/video/biz/player/online/router/ServiceHolder;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/router/ServiceHolder;->getSLocalServerService()Lcom/miui/video/base/routers/localserver/LocalServerService;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mContext:Landroid/content/Context;

    const-string p3, "MiuiOriginalPlayer"

    invoke-interface {p1, p2, p3}, Lcom/miui/video/base/routers/localserver/LocalServerService;->getServerValidUA(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance p1, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/MiOkHttpDataSourceFactory;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/MiOkHttpDataSourceFactory;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Ljava/util/HashMap;Lcom/google/android/exoplayer2/upstream/TransferListener;Lokhttp3/CacheControl;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mVideoUrl:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->buildMediaSource(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "OriginalbaseVideoView"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const p1, 0x15f93

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->handleOnError(I)V

    :goto_0
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->setDataSource(Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public setForceFullScreen(Z)V
    .locals 3

    const-string v0, "OriginalbaseVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setForceFullScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mOnBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 1

    const-string p1, "OriginalbaseVideoView"

    const-string v0, "setOnSeekCompleteListener"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setOnVideoLoadingListener(Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;)V
    .locals 1

    const-string p1, "OriginalbaseVideoView"

    const-string v0, "setOnVideoLoadingListener"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 1

    const-string p1, "OriginalbaseVideoView"

    const-string v0, "setOnVideoSizeChangedListener"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v1, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->getCurrentResolution()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->resolutionFrom:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->resolutionTo:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->changingResolution:Z

    const-string v1, "OriginalbaseVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setResolution:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mDefaultTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mDefaultTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v1

    iget v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->videoRendererIndex:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->clearSelectionOverrides(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    if-eqz v2, :cond_2

    if-lez p1, :cond_2

    iget v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->videoRendererIndex:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->videoRendererIndex:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v3, v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-lez v3, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v5, v5, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    const/4 v6, 0x0

    :goto_1
    iget v7, v5, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v6, v7, :cond_1

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    iget v7, v7, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne p1, v7, :cond_0

    new-instance p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    new-array v0, v0, [I

    aput v6, v0, v3

    invoke-direct {p1, v4, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->videoRendererIndex:I

    iget v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->videoRendererIndex:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mDefaultTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    return-void

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mDefaultTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    :cond_3
    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->onResumeStatsEvent()V

    const-string v0, "OriginalbaseVideoView"

    const-string v1, "setPlayWhenReady true"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public supportPrepare()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
