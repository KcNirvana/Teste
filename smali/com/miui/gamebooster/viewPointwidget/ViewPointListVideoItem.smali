.class public Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/exoplayer2/PlaybackPreparer;
.implements Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;
.implements Lcom/miui/gamebooster/viewPointwidget/a;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final fV:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;


# instance fields
.field private fW:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private fX:Z

.field protected fY:Z

.field protected fZ:Landroid/media/AudioManager;

.field protected ga:Landroid/widget/ImageView;

.field protected gb:Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;

.field private gc:Lcom/miui/common/d/f;

.field private gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field protected ge:Z

.field protected gf:Landroid/widget/RelativeLayout;

.field private gg:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field protected gh:Landroid/widget/ImageView;

.field private gi:Z

.field protected gj:Landroid/animation/ObjectAnimator;

.field protected gk:Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;

.field private gl:Lcom/google/android/exoplayer2/ui/PlayerView;

.field protected gm:I

.field private gn:Ljava/lang/ref/WeakReference;

.field protected go:I

.field protected gp:I

.field protected gq:Landroid/widget/ImageView;

.field private gr:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private gs:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field private gt:Landroid/net/Uri;

.field protected gu:Landroid/widget/RelativeLayout;

.field protected gv:Landroid/widget/TextView;

.field protected gw:Lcom/miui/gamebooster/gamead/ViewPointVideoModel;

.field private gx:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private gy:Lcom/miui/gamebooster/viewPointwidget/e;

.field protected gz:F

.field private intentFilter:Landroid/content/IntentFilter;

.field private mActivity:Landroid/app/Activity;

.field protected mTitleView:Landroid/widget/TextView;

.field protected mVideoId:Ljava/lang/String;

.field protected mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fV:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gz:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fX:Z

    new-instance v0, Lcom/miui/gamebooster/viewPointwidget/i;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/viewPointwidget/i;-><init>(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)V

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fW:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gz:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fX:Z

    new-instance v0, Lcom/miui/gamebooster/viewPointwidget/i;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/viewPointwidget/i;-><init>(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)V

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fW:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method private iZ()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fZ:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string/jumbo v3, "audio"

    invoke-virtual {v0, v3}, Lcom/miui/securitycenter/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fZ:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fZ:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fZ:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fW:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    return v2
.end method

.method static synthetic jA(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jl(I)V

    return-void
.end method

.method static synthetic jB(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jq()V

    return-void
.end method

.method private ja(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fV:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jb(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jb(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jc(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v0
.end method

.method private jc(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "ExoPlayerDemo"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-object v1
.end method

.method private jd(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 6

    const/4 v5, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gx:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v0, p1, v1, v5, v5}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    iget-object v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gx:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    new-instance v3, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    iget-object v4, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gc:Lcom/miui/common/d/f;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private je()V
    .locals 4

    invoke-static {}, Lcom/miui/gamebooster/a/c;->getInstance()Lcom/miui/gamebooster/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    invoke-virtual {v1}, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/a/c;->fc(Ljava/lang/String;)Lcom/miui/gamebooster/model/c;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/gamebooster/model/c;->kN:Z

    const/4 v1, -0x1

    iput v1, v0, Lcom/miui/gamebooster/model/c;->kP:I

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, v0, Lcom/miui/gamebooster/model/c;->kO:J

    invoke-static {}, Lcom/miui/gamebooster/a/c;->getInstance()Lcom/miui/gamebooster/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    invoke-virtual {v2}, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/miui/gamebooster/a/c;->fe(Ljava/lang/String;Lcom/miui/gamebooster/model/c;)V

    return-void
.end method

.method private static jf(Lcom/google/android/exoplayer2/ExoPlaybackException;)Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_2
    return v2
.end method

.method private jg()V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadUrl: "

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/g;->fx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gt:Landroid/net/Uri;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mActivity:Landroid/app/Activity;

    new-array v3, v1, [Landroid/net/Uri;

    iget-object v4, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gt:Landroid/net/Uri;

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/Util;->maybeRequestReadExternalStoragePermission(Landroid/app/Activity;[Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gt:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jd(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v3

    invoke-static {}, Lcom/miui/gamebooster/a/c;->getInstance()Lcom/miui/gamebooster/a/c;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    invoke-virtual {v4}, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/gamebooster/a/c;->fc(Ljava/lang/String;)Lcom/miui/gamebooster/model/c;

    move-result-object v4

    iget v0, v4, Lcom/miui/gamebooster/model/c;->kP:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget v6, v4, Lcom/miui/gamebooster/model/c;->kP:I

    iget-wide v8, v4, Lcom/miui/gamebooster/model/c;->kO:J

    invoke-virtual {v5, v6, v8, v9}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(IJ)V

    :cond_1
    iget-object v4, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v3, v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    iput-boolean v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gi:Z

    iput-boolean v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fX:Z

    invoke-static {}, Lcom/miui/gamebooster/c/b;->ud()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->ge:Z

    iget-boolean v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->ge:Z

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jn(Z)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private ji()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fZ:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string/jumbo v3, "audio"

    invoke-virtual {v0, v3}, Lcom/miui/securitycenter/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fZ:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fZ:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gz:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fZ:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fW:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    return v2
.end method

.method private jj()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aMa(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekToDefaultPosition()V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gk:Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;->ki()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07099b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private jl(I)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gj:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gj:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gj:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gh:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gj:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gj:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gj:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gk:Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gh:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gh:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gj:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gj:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gj:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    goto :goto_0
.end method

.method private jq()V
    .locals 6

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/gamebooster/a/c;->getInstance()Lcom/miui/gamebooster/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    invoke-virtual {v1}, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/a/c;->fc(Ljava/lang/String;)Lcom/miui/gamebooster/model/c;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    iput-boolean v0, v2, Lcom/miui/gamebooster/model/c;->kN:Z

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    iput v0, v2, Lcom/miui/gamebooster/model/c;->kP:I

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isCurrentWindowSeekable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    iget-object v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, v2, Lcom/miui/gamebooster/model/c;->kO:J

    invoke-static {}, Lcom/miui/gamebooster/a/c;->getInstance()Lcom/miui/gamebooster/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    invoke-virtual {v1}, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/a/c;->fe(Ljava/lang/String;Lcom/miui/gamebooster/model/c;)V

    :cond_0
    return-void

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method private jr()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gr:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gr:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gs:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    :cond_0
    return-void
.end method

.method static synthetic js(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object v0
.end method

.method static synthetic jt(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gg:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method static synthetic ju(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gn:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic jv(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gr:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    return-object v0
.end method

.method static synthetic jw(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gg:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object p1
.end method

.method static synthetic jx(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gi:Z

    return p1
.end method

.method static synthetic jy(Lcom/google/android/exoplayer2/ExoPlaybackException;)Z
    .locals 1

    invoke-static {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jf(Lcom/google/android/exoplayer2/ExoPlaybackException;)Z

    move-result v0

    return v0
.end method

.method static synthetic jz(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->je()V

    return-void
.end method


# virtual methods
.method public iV(Landroid/app/Activity;Lcom/miui/common/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gc:Lcom/miui/common/d/f;

    return-void
.end method

.method public iW(Lcom/miui/gamebooster/gamead/ViewPointVideoModel;IZ)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fY:Z

    iput p2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gm:I

    iput-object p1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gw:Lcom/miui/gamebooster/gamead/ViewPointVideoModel;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->ly()Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->lx()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mVideoId:Ljava/lang/String;

    invoke-static {}, Lcom/miui/gamebooster/a/c;->getInstance()Lcom/miui/gamebooster/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    invoke-virtual {v1}, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/a/c;->fb(Ljava/lang/String;)V

    if-nez p3, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;->ms()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->go:I

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/g;->fv(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->ga:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/common/b/q;->aJg(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gb:Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->lv()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->iI(I)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->lt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gb:Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;

    invoke-virtual {v0, v7}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->setVisibility(I)V

    :goto_1
    invoke-static {}, Lcom/miui/gamebooster/c/b;->ud()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->ge:Z

    invoke-virtual {p0, v6}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jk(I)V

    invoke-virtual {p0, v7}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jm(I)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->mf()I

    move-result v3

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->lu()I

    move-result v4

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->lA()Z

    move-result v5

    invoke-static/range {v0 .. v6}, Lcom/miui/gamebooster/a/r;->gk(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;IIZZ)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gb:Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;

    invoke-virtual {v0, v6}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gb:Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->lt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public iX()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fX:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initializePlayer: "

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    sget-object v3, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "initializePlayer: needNewPlayer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    sget-object v4, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fV:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    new-instance v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v4, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gr:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gr:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v4, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gs:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    iput-object v5, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gg:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gr:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v4, Lcom/miui/gamebooster/viewPointwidget/f;

    invoke-direct {v4, p0, v5}, Lcom/miui/gamebooster/viewPointwidget/f;-><init>(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;Lcom/miui/gamebooster/viewPointwidget/f;)V

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    iget-object v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gl:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v4, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    iget-object v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_1
    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gi:Z

    if-eqz v0, :cond_4

    :cond_2
    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jg()V

    :goto_1
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gk:Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;->ki()V

    invoke-virtual {p0, v2}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jk(I)V

    goto :goto_1
.end method

.method public iY()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jl(I)V

    sget-object v0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releasePlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/gamebooster/a/c;->getInstance()Lcom/miui/gamebooster/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    invoke-virtual {v1}, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/a/c;->fc(Ljava/lang/String;)Lcom/miui/gamebooster/model/c;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/gamebooster/model/c;->kN:Z

    invoke-static {}, Lcom/miui/gamebooster/a/c;->getInstance()Lcom/miui/gamebooster/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    invoke-virtual {v2}, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/miui/gamebooster/a/c;->fe(Ljava/lang/String;Lcom/miui/gamebooster/model/c;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jr()V

    invoke-direct {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jq()V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    iput-object v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iput-object v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gr:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iput-boolean v4, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fX:Z

    :cond_0
    return-void
.end method

.method public jh()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "playVideo: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fX:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jg()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jk(I)V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jl(I)V

    goto :goto_0
.end method

.method public jk(I)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jl(I)V

    :cond_0
    iget-object v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jm(I)V

    iget-object v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->ga:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gq:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public jm(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gk:Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;->setVisibility(I)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gk:Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    invoke-virtual {v1}, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;->getSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;->kj(J)V

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gk:Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;->setVisibility(I)V

    return-void
.end method

.method public jn(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->ge:Z

    iget-boolean v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->ge:Z

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->ut(Z)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->ge:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jo(F)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gq:Landroid/widget/ImageView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jo(F)V
    .locals 3

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iput p1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gz:F

    iget v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gz:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iput v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gz:F

    :cond_0
    iget v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gz:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iput v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gz:F

    :cond_1
    iget-boolean v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->fX:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gz:F

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    iget v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gz:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    invoke-direct {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->ji()Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->iZ()Z

    goto :goto_0
.end method

.method public jp()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopVideo: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    invoke-virtual {p0, v2}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jk(I)V

    invoke-virtual {p0, v3}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jm(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->intentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->intentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/miui/gamebooster/viewPointwidget/e;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/viewPointwidget/e;-><init>(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)V

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gy:Lcom/miui/gamebooster/viewPointwidget/e;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gy:Lcom/miui/gamebooster/viewPointwidget/e;

    iget-object v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gw:Lcom/miui/gamebooster/gamead/ViewPointVideoModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gw:Lcom/miui/gamebooster/gamead/ViewPointVideoModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->lu()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gw:Lcom/miui/gamebooster/gamead/ViewPointVideoModel;

    invoke-virtual {v1}, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->lY()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/miui/gamebooster/a/J;->iv(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gw:Lcom/miui/gamebooster/gamead/ViewPointVideoModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->lw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/t;->gz(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gw:Lcom/miui/gamebooster/gamead/ViewPointVideoModel;

    invoke-virtual {v1}, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->lu()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gw:Lcom/miui/gamebooster/gamead/ViewPointVideoModel;

    invoke-virtual {v2}, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->lY()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3, v3}, Lcom/miui/gamebooster/a/J;->iw(Landroid/content/Context;ILjava/lang/String;Lcom/miui/gamebooster/a/K;Landroid/os/Bundle;)V

    goto :goto_1

    :sswitch_1
    iget-boolean v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->ge:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jn(Z)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aMa(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    invoke-direct {p0, v4}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jl(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jm(I)V

    invoke-direct {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jg()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->iX()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07099b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jj()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0215 -> :sswitch_0
        0x7f0a040a -> :sswitch_0
        0x7f0a040b -> :sswitch_1
        0x7f0a040d -> :sswitch_2
        0x7f0a040f -> :sswitch_3
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jl(I)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->iY()V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gy:Lcom/miui/gamebooster/viewPointwidget/e;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->go:I

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09017b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gp:I

    const v0, 0x7f0a00b0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0a040f

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gv:Landroid/widget/TextView;

    const v0, 0x7f0a0409

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gu:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a040c

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->ga:Landroid/widget/ImageView;

    const v0, 0x7f0a0215

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gb:Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;

    const v0, 0x7f0a040b

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gq:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gb:Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->iO(I)V

    const v0, 0x7f0a040d

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gk:Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;

    const v0, 0x7f0a040a

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gf:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0404

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gl:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gl:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gl:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->requestFocus()Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gl:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gk:Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gq:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gb:Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gf:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v5}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->ja(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gx:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gs:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    const v0, 0x7f0a040e

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gh:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gh:Landroid/widget/ImageView;

    const-string/jumbo v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const v3, 0x4433c000    # 719.0f

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gj:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gj:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gj:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gj:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->iY()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gd:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jh()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jh()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->iY()V

    :cond_0
    return-void
.end method

.method public onVisibilityChange(I)V
    .locals 0

    return-void
.end method

.method public preparePlayback()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->iX()V

    return-void
.end method
