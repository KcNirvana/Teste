.class public Lcom/hungama/movies/sdk/a;
.super Ljava/lang/Object;
.source "HungamaPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
.implements Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;
.implements Lcom/hungama/movies/sdk/Model/IHungamaCastEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hungama/movies/sdk/a$a;,
        Lcom/hungama/movies/sdk/a$b;,
        Lcom/hungama/movies/sdk/a$d;,
        Lcom/hungama/movies/sdk/a$e;,
        Lcom/hungama/movies/sdk/a$c;
    }
.end annotation


# static fields
.field public static C:I = 0x400

.field private static aH:Z = false

.field private static aL:Lcom/hungama/movies/sdk/a$b; = null

.field private static af:I = 0x927c0


# instance fields
.field A:Ljava/lang/String;

.field B:I

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field F:Z

.field G:Z

.field public H:J

.field public I:J

.field public J:J

.field K:Ljava/lang/String;

.field L:Lcom/hungama/movies/sdk/Model/Playback;

.field M:Lcom/hungama/movies/sdk/f/b;

.field public N:Landroid/os/Handler;

.field O:I

.field P:I

.field Q:I

.field R:I

.field S:I

.field T:I

.field U:I

.field V:J

.field public W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

.field public X:J

.field public Y:Lcom/hungama/movies/sdk/b;

.field public Z:Landroid/os/Handler;

.field a:Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;

.field private aA:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private aB:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private aC:Landroid/os/Handler;

.field private aD:Ljava/lang/Runnable;

.field private aE:I

.field private aF:I

.field private aG:Ljava/lang/Runnable;

.field private aI:I

.field private aJ:Z

.field private aK:I

.field private aM:Z

.field private aN:Ljava/lang/String;

.field private aO:Z

.field private aP:Z

.field private aQ:Z

.field private aR:J

.field private aS:Ljava/lang/String;

.field private aT:Ljava/lang/String;

.field protected aa:Lcom/hungama/movies/sdk/a$a;

.field ab:Lcom/hungama/movies/sdk/d/a;

.field ac:Lcom/hungama/movies/sdk/Utils/DownloadEventsCallback;

.field protected ad:Z

.field private ae:Z

.field private ag:Ljava/lang/String;

.field private ah:Ljava/lang/String;

.field private ai:Lcom/hungama/movies/sdk/f/a;

.field private aj:Z

.field private ak:Landroid/net/Uri;

.field private al:I

.field private am:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

.field private an:J

.field private ao:Ljava/lang/String;

.field private final ap:Z

.field private aq:I

.field private ar:Z

.field private as:Landroid/view/View;

.field private at:Lcom/hungama/movies/sdk/Utils/PlaybackController;

.field private au:Landroid/content/Context;

.field private av:Landroid/os/Bundle;

.field private aw:Landroid/os/Handler;

.field private ax:Z

.field private ay:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

.field private az:Ljava/net/CookieManager;

.field b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

.field public v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field public w:J

.field protected x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hungama/movies/sdk/a;->ae:Z

    const-string v1, "from_casting"

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->c:Ljava/lang/String;

    const-string v1, "seek_pos_CONTINUE"

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->d:Ljava/lang/String;

    const-string v1, "seek_pos"

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->e:Ljava/lang/String;

    const-string v1, "image_path"

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->f:Ljava/lang/String;

    const-string v1, "descriptions"

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->g:Ljava/lang/String;

    const-string v1, "content_id"

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->h:Ljava/lang/String;

    const-string v1, "content_type"

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->i:Ljava/lang/String;

    const-string v1, "music_video_list"

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->j:Ljava/lang/String;

    const-string v1, "NAME"

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->k:Ljava/lang/String;

    const-string v1, "EPISODE_list"

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->l:Ljava/lang/String;

    const-string v1, "content_uri"

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->m:Ljava/lang/String;

    const-string v1, "preview_url"

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->n:Ljava/lang/String;

    const-string v1, "preview_end_time"

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->o:Ljava/lang/String;

    const-string v1, "purchase"

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->p:Ljava/lang/String;

    const-string v1, "TRAILER_URL"

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->q:Ljava/lang/String;

    const-string v1, "type"

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->ag:Ljava/lang/String;

    const-string v1, "video_type"

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->r:Ljava/lang/String;

    const-string v1, "sourceScreen"

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->s:Ljava/lang/String;

    const-string v1, "bucket_type"

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->t:Ljava/lang/String;

    const-string v1, "PlayerActivity"

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->ah:Ljava/lang/String;

    const-wide/16 v1, 0xfa0

    iput-wide v1, p0, Lcom/hungama/movies/sdk/a;->an:J

    const/4 v1, -0x1

    iput v1, p0, Lcom/hungama/movies/sdk/a;->B:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/hungama/movies/sdk/a;->ap:Z

    iput v1, p0, Lcom/hungama/movies/sdk/a;->aq:I

    iput-boolean v0, p0, Lcom/hungama/movies/sdk/a;->F:Z

    iput-boolean v2, p0, Lcom/hungama/movies/sdk/a;->G:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hungama/movies/sdk/a;->H:J

    iput-wide v0, p0, Lcom/hungama/movies/sdk/a;->I:J

    iput-wide v0, p0, Lcom/hungama/movies/sdk/a;->J:J

    const-string v3, "Player"

    iput-object v3, p0, Lcom/hungama/movies/sdk/a;->K:Ljava/lang/String;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    iput-object v3, p0, Lcom/hungama/movies/sdk/a;->ay:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/hungama/movies/sdk/a;->aC:Landroid/os/Handler;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/hungama/movies/sdk/a;->N:Landroid/os/Handler;

    iput v2, p0, Lcom/hungama/movies/sdk/a;->O:I

    iput v2, p0, Lcom/hungama/movies/sdk/a;->P:I

    iput v2, p0, Lcom/hungama/movies/sdk/a;->Q:I

    iput v2, p0, Lcom/hungama/movies/sdk/a;->R:I

    iput v2, p0, Lcom/hungama/movies/sdk/a;->S:I

    iput v2, p0, Lcom/hungama/movies/sdk/a;->T:I

    iput v2, p0, Lcom/hungama/movies/sdk/a;->U:I

    iput v2, p0, Lcom/hungama/movies/sdk/a;->aE:I

    iput v2, p0, Lcom/hungama/movies/sdk/a;->aF:I

    iput-wide v0, p0, Lcom/hungama/movies/sdk/a;->V:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->Z:Landroid/os/Handler;

    iput v2, p0, Lcom/hungama/movies/sdk/a;->aI:I

    iput-boolean v2, p0, Lcom/hungama/movies/sdk/a;->aJ:Z

    iput v2, p0, Lcom/hungama/movies/sdk/a;->aK:I

    iput-boolean v2, p0, Lcom/hungama/movies/sdk/a;->aM:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->aN:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/hungama/movies/sdk/a;->aO:Z

    iput-boolean v2, p0, Lcom/hungama/movies/sdk/a;->aP:Z

    return-void
.end method

.method private Q()V
    .locals 0

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->R()V

    return-void
.end method

.method private R()V
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->ah:Ljava/lang/String;

    const-string v1, "startPlay()"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hungama/movies/sdk/a/c;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v1, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->PREVIEW:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/hungama/movies/sdk/Model/Playback;

    const-string v1, ""

    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->y:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/hungama/movies/sdk/Model/Playback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->y:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/hungama/movies/sdk/a;->f(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v1, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->TRAILER:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v1, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->SERIAL_EPISODE:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->y:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->MUSIC_VIDEO:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v1, v2, :cond_4

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "type=mv"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&type=mv"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-direct {p0, v0}, Lcom/hungama/movies/sdk/a;->h(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->S()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const-string v0, "no internet connection"

    invoke-direct {p0, v0}, Lcom/hungama/movies/sdk/a;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/hungama/movies/sdk/a$a;->c:Lcom/hungama/movies/sdk/a$a;

    invoke-virtual {p0, v0}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/a$a;)V

    const-string v0, "-1"

    const-string v1, "-1"

    invoke-direct {p0, v0, v1}, Lcom/hungama/movies/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private S()Z
    .locals 4

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/Utils/PlayUtils;->getPackageFromDB(Landroid/content/Context;Ljava/lang/String;)Lcom/hungama/movies/sdk/Model/Playback;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/Model/Playback;->getDownloadedPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/Model/Playback;->getDownloadPer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hungama/movies/sdk/a;->G:Z

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/Model/Playback;->getDownloadedPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/e/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    invoke-virtual {v1, v0}, Lcom/hungama/movies/sdk/Model/Playback;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/Model/Playback;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hungama/movies/sdk/a;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->ah:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playlist proxy error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/hungama/movies/sdk/a;->G:Z

    return v0
.end method

.method private T()V
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->ah:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializePlayerViews()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->as:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->as:Landroid/view/View;

    sget v1, Lcom/hungama/movies/sdk/R$id;->surface_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->u:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->u:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setUseController(Z)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->ah:Ljava/lang/String;

    const-string v1, "startAudioFocusTracking"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->am:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;)V

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->am:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->am:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->register()Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/hungama/movies/sdk/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hungama/movies/sdk/b;-><init>(Lcom/hungama/movies/sdk/a;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    :cond_1
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->as:Landroid/view/View;

    sget v1, Lcom/hungama/movies/sdk/R$id;->tv_movie_discription:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->A:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private U()V
    .locals 4

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/hungama/movies/sdk/c/b;

    invoke-direct {v0}, Lcom/hungama/movies/sdk/c/b;-><init>()V

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/b;->b(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/b;->a(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    :cond_0
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android_movie_sdk"

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/b;->f(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    invoke-virtual {v0, v2}, Lcom/hungama/movies/sdk/c/b;->g(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    :cond_1
    return-void
.end method

.method private V()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->as:Landroid/view/View;

    sget v1, Lcom/hungama/movies/sdk/R$id;->iv_resume_network:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->as:Landroid/view/View;

    sget v1, Lcom/hungama/movies/sdk/R$id;->iv_replay:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->as:Landroid/view/View;

    sget v1, Lcom/hungama/movies/sdk/R$id;->iv_trailer_replay:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private W()V
    .locals 4

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v0, v0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    if-eqz v0, :cond_1

    const-string v0, "full"

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v1, v1, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/a/f;->k()I

    move-result v1

    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v2, v2, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v2}, Lcom/hungama/movies/sdk/a/f;->i()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/hungama/movies/sdk/a;->a(Ljava/lang/String;IIZ)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v0, v0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/f;->m()V

    :cond_1
    return-void
.end method

.method private X()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v1, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->PREVIEW:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->u()V

    :cond_0
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->y()V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->u()V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v0, v0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v0, v0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/f;->l()V

    :cond_1
    return-void
.end method

.method private Y()V
    .locals 2

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->P()Z

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hungama/movies/sdk/b;->q:Lcom/hungama/movies/sdk/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    sget-object v1, Lcom/hungama/movies/sdk/b;->q:Lcom/hungama/movies/sdk/c;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;->onVariantList(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private Z()V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/hungama/movies/sdk/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/hungama/movies/sdk/a;->au:Landroid/content/Context;

    return-object p0
.end method

.method private a(Ljava/util/UUID;Ljava/lang/String;[Ljava/lang/String;Z)Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    new-instance v3, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hungama/movies/sdk/a;->l(Z)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v1

    invoke-direct {v3, p2, v1}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    if-eqz p3, :cond_0

    :goto_0
    array-length p2, p3

    add-int/lit8 p2, p2, -0x1

    if-ge v0, p2, :cond_0

    aget-object p2, p3, v0

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v3, p2, v1}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->setKeyRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->newInstance(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/hungama/movies/sdk/a;->aw:Landroid/os/Handler;

    iget-object v6, p0, Lcom/hungama/movies/sdk/a;->ai:Lcom/hungama/movies/sdk/f/a;

    move-object v0, p2

    move-object v1, p1

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;Z)V

    return-object p2
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 13

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p2, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    iget-object v3, p0, Lcom/hungama/movies/sdk/a;->aB:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    new-instance v4, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    iget-object v5, p0, Lcom/hungama/movies/sdk/a;->aC:Landroid/os/Handler;

    iget-object v6, p0, Lcom/hungama/movies/sdk/a;->ai:Lcom/hungama/movies/sdk/f/a;

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    return-object p2

    :pswitch_1
    new-instance p2, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->aB:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->setAllowChunklessPreparation(Z)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->aC:Landroid/os/Handler;

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->ai:Lcom/hungama/movies/sdk/f/a;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    return-object p1

    :pswitch_2
    new-instance p2, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    invoke-direct {p0, v0}, Lcom/hungama/movies/sdk/a;->j(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v3

    new-instance v4, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->aB:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v5, p0, Lcom/hungama/movies/sdk/a;->aC:Landroid/os/Handler;

    iget-object v6, p0, Lcom/hungama/movies/sdk/a;->ai:Lcom/hungama/movies/sdk/f/a;

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    return-object p2

    :pswitch_3
    new-instance p2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-direct {p0, v0}, Lcom/hungama/movies/sdk/a;->j(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v9

    new-instance v10, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->aB:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v10, v0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v11, p0, Lcom/hungama/movies/sdk/a;->aC:Landroid/os/Handler;

    iget-object v12, p0, Lcom/hungama/movies/sdk/a;->ai:Lcom/hungama/movies/sdk/f/a;

    move-object v7, p2

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hungama/movies/sdk/Model/Playback;
    .locals 15

    new-instance v0, Lorg/json/JSONObject;

    move-object v1, p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "node"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    const-string v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const-string v3, "download_url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/hungama/movies/sdk/Utils/DownloadVariant;

    const/4 v8, 0x0

    invoke-static {v5}, Lcom/hungama/movies/sdk/a/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v6, v14

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v6 .. v13}, Lcom/hungama/movies/sdk/Utils/DownloadVariant;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "encrypt"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "token"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "isDRM"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    new-instance v7, Lcom/hungama/movies/sdk/Model/Playback;

    invoke-direct {v7, v3, v2}, Lcom/hungama/movies/sdk/Model/Playback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lcom/hungama/movies/sdk/Model/Playback;->setVariants(Ljava/util/List;)V

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "marlin-bb-hls"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "bb-content-id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/hungama/movies/sdk/Model/Playback;->setBbContentId(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/hungama/movies/sdk/Model/Playback;->setType(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v7, v6}, Lcom/hungama/movies/sdk/Model/Playback;->setIS_DRM(Z)V

    invoke-virtual {v7, v5}, Lcom/hungama/movies/sdk/Model/Playback;->setToken(Ljava/lang/String;)V

    return-object v7
.end method

.method static synthetic a(Lcom/hungama/movies/sdk/a;Ljava/lang/String;II)Lcom/hungama/movies/sdk/c/d;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hungama/movies/sdk/a;->a(Ljava/lang/String;II)Lcom/hungama/movies/sdk/c/d;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;II)Lcom/hungama/movies/sdk/c/d;
    .locals 4

    new-instance v0, Lcom/hungama/movies/sdk/c/d;

    invoke-direct {v0}, Lcom/hungama/movies/sdk/c/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/hungama/movies/sdk/c/d;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/d;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->PREVIEW:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v1, v2, :cond_0

    const-string v1, "preview"

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/d;->d(Ljava/lang/String;)V

    const-string v1, "video"

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/d;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->TRAILER:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v1, v2, :cond_1

    const-string v1, "stream"

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/d;->d(Ljava/lang/String;)V

    const-string v1, "trailer"

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/d;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->MUSIC_VIDEO:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v1, v2, :cond_2

    const-string v1, "stream"

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/d;->d(Ljava/lang/String;)V

    const-string v1, "video"

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/d;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->SERIAL_EPISODE:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v1, v2, :cond_3

    const-string v1, "stream"

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/d;->d(Ljava/lang/String;)V

    const-string v1, "serial"

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/d;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->MUSIC_VIDEO:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v1, v2, :cond_4

    const-string v1, "stream"

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/d;->d(Ljava/lang/String;)V

    const-string v1, "video"

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/d;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "stream"

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/d;->d(Ljava/lang/String;)V

    const-string v1, "film"

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/d;->c(Ljava/lang/String;)V

    :goto_0
    const-string v1, "MediaEventHungamaObject Act:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/hungama/movies/sdk/c/d;->a(J)V

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/hungama/movies/sdk/c/d;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/hungama/movies/sdk/c/d;->g(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->ao:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/hungama/movies/sdk/c/d;->b(Ljava/lang/String;)V

    const-string p2, "full"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "incremental"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "Billing"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const-string p1, "MediaEventHungamaObject Buffered Act:"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long p1, p3

    invoke-virtual {v0, p1, p2}, Lcom/hungama/movies/sdk/c/d;->b(J)V

    :cond_6
    return-object v0
.end method

.method static synthetic a(Lcom/hungama/movies/sdk/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hungama/movies/sdk/a;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/hungama/movies/sdk/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hungama/movies/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    :try_start_0
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "-1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "NA"

    const-string p1, "0"

    :cond_0
    :goto_0
    move-object v10, p1

    move-object v9, p2

    goto :goto_1

    :cond_1
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "-1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "NA"

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "Error-40"

    goto :goto_0

    :cond_2
    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p2, "Error-41"

    goto :goto_0

    :cond_3
    const-string v0, "2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "Error-42"

    goto :goto_0

    :cond_4
    const-string v0, "-2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "-3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    const-string p2, "NA"

    goto :goto_0

    :goto_1
    const-string v3, ""

    const-string v2, ""

    const-string p1, "0"

    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object p2, p2, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    if-eqz p2, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object p2, p2, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {p2}, Lcom/hungama/movies/sdk/a/f;->k()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6
    move-object v8, p1

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->al()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hungama/movies/sdk/a;->aS:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->ak()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hungama/movies/sdk/a;->aT:Ljava/lang/String;

    const-string v0, "Player"

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    iget-object v4, p0, Lcom/hungama/movies/sdk/a;->aS:Ljava/lang/String;

    iget-object v5, p0, Lcom/hungama/movies/sdk/a;->aT:Ljava/lang/String;

    const-string v6, "1"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object p2, p2, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {p2}, Lcom/hungama/movies/sdk/a/f;->i()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v10}, Lcom/hungama/movies/sdk/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private aa()V
    .locals 4

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hungama/movies/sdk/d/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "full"

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v1, v1, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/a/f;->k()I

    move-result v1

    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v2, v2, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v2}, Lcom/hungama/movies/sdk/a/f;->i()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/hungama/movies/sdk/a;->a(Ljava/lang/String;IIZ)V

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hungama/movies/sdk/a;->aR:J

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/hungama/movies/sdk/b;->c:J

    sget-object v0, Lcom/hungama/movies/sdk/a$e;->a:Lcom/hungama/movies/sdk/a$e;

    invoke-virtual {p0, v0}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/a$e;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v0, v0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/f;->m()V

    return-void
.end method

.method private ab()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/hungama/movies/sdk/a;->k(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private ac()V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/hungama/movies/sdk/a;->d(Z)V

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->y()V

    sput-boolean v0, Lcom/hungama/movies/sdk/a;->aH:Z

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->t()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private ad()V
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/b;->h()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/hungama/movies/sdk/b;->c:J

    :cond_0
    return-void
.end method

.method private ae()V
    .locals 0

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->A()V

    return-void
.end method

.method private af()V
    .locals 13

    :try_start_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/Model/Playback;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Cast"

    const-string v1, "HPF - onCastApplicationConnected..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Cast"

    const-string v1, "HPF - starting chrome cast activity..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    long-to-int v0, v3

    move v12, v0

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->z:Ljava/lang/String;

    :goto_2
    move-object v10, v0

    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    iget-object v5, p0, Lcom/hungama/movies/sdk/a;->ao:Ljava/lang/String;

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->A:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const-string v0, ""

    :goto_3
    move-object v6, v0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/Model/Playback;->getUrl()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->getType()I

    move-result v11

    move-object v8, v10

    move-object v9, v10

    invoke-static/range {v2 .. v12}, Lcom/hungama/movies/sdk/chromecast/CastUtils;->startCasting(Lcom/hungama/movies/sdk/Model/Playback;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    new-instance v0, Lcom/hungama/movies/sdk/c/b;

    invoke-direct {v0}, Lcom/hungama/movies/sdk/c/b;-><init>()V

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hungama/movies/sdk/c/b;->a(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    const/4 v3, 0x2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v4, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->MUSIC_VIDEO:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v2, v4, :cond_4

    invoke-static {}, Lcom/hungama/movies/sdk/c/c;->a()Lcom/hungama/movies/sdk/c/c;

    move-result-object v2

    iget-object v4, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/c/b;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v2, v4, v1, v0, v3}, Lcom/hungama/movies/sdk/c/c;->a(Ljava/lang/String;ZLjava/util/HashMap;I)V

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/hungama/movies/sdk/c/c;->a()Lcom/hungama/movies/sdk/c/c;

    move-result-object v1

    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/c/b;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1, v2, v4, v0, v3}, Lcom/hungama/movies/sdk/c/c;->a(Ljava/lang/String;ZLjava/util/HashMap;I)V

    :goto_4
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    invoke-interface {v0}, Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;->onCastConnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_5
    return-void
.end method

.method private ag()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->au:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->ab()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/hungama/movies/sdk/a/d;->a(Ljava/lang/Exception;)V

    :goto_0
    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->aj()V

    return-void
.end method

.method private ah()V
    .locals 11

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->au:Landroid/content/Context;

    invoke-static {v0}, Lcom/hungama/movies/sdk/a/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "content_type"

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->ai()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content_id"

    iget-object v3, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "stream_type"

    const-string v3, "online"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Connection Type"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Device Model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Device Brand"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app_version"

    invoke-static {}, Lcom/hungama/movies/sdk/Utils/PlayUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Stream Start"

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/hungama/movies/sdk/c/c;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V

    const-string v3, "Player"

    :try_start_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v0, v0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/f;->i()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->al()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->aS:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->ak()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->aT:Ljava/lang/String;

    iget-object v4, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget-object v7, p0, Lcom/hungama/movies/sdk/a;->aS:Ljava/lang/String;

    iget-object v8, p0, Lcom/hungama/movies/sdk/a;->aT:Ljava/lang/String;

    const-string v9, "1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v3 .. v10}, Lcom/hungama/movies/sdk/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private ai()Ljava/lang/String;
    .locals 3

    const-string v0, "movie"

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->SERIAL_EPISODE:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v1, v2, :cond_0

    const-string v0, "tv_show"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->MUSIC_VIDEO:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v1, v2, :cond_1

    const-string v0, "music_video"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->LIVE_SHOW:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v1, v2, :cond_2

    const-string v0, "live_show"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->PURCHASED:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->PREVIEW:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->TRAILER:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v1, v2, :cond_4

    :cond_3
    const-string v0, "movie"

    :cond_4
    :goto_0
    return-object v0
.end method

.method private aj()V
    .locals 14

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/hungama/movies/sdk/a;->ad:Z

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->au:Landroid/content/Context;

    invoke-static {v0}, Lcom/hungama/movies/sdk/a/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->ai()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "stream_type"

    const-string v4, "online"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "content_type"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_version"

    invoke-static {}, Lcom/hungama/movies/sdk/Utils/PlayUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content_id"

    iget-object v3, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "start_time"

    iget-wide v3, p0, Lcom/hungama/movies/sdk/a;->w:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v1, "stop_time"

    iget-wide v3, p0, Lcom/hungama/movies/sdk/a;->aR:J

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-wide v3, p0, Lcom/hungama/movies/sdk/a;->aR:J

    div-long/2addr v3, v5

    iget-wide v7, p0, Lcom/hungama/movies/sdk/a;->w:J

    div-long/2addr v7, v5

    const/4 v1, 0x0

    sub-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    const-string v1, "duration"

    invoke-virtual {v2, v1, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content_name"

    iget-object v3, p0, Lcom/hungama/movies/sdk/a;->ao:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "login_type"

    iget-object v3, p0, Lcom/hungama/movies/sdk/a;->au:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/hungama/movies/sdk/R$string;->login_type:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Device Model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Device Brand"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "source"

    const-string v3, "Player"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v1, 0x0

    :try_start_3
    iget-wide v3, p0, Lcom/hungama/movies/sdk/a;->aR:J

    long-to-float v3, v3

    iget-object v4, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-wide v4, v4, Lcom/hungama/movies/sdk/b;->e:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    long-to-float v1, v4

    div-float/2addr v3, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v3, v3, v1

    float-to-int v1, v3

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string v3, "buff"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v5, v5, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v5}, Lcom/hungama/movies/sdk/a/f;->i()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Percentage Completion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->au:Landroid/content/Context;

    invoke-static {v1}, Lcom/hungama/movies/sdk/b/a;->a(Landroid/content/Context;)Lcom/hungama/movies/sdk/b/a;

    move-result-object v1

    const-string v3, "Content Quality"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connection Type"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/hungama/movies/sdk/c/c;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->al()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->aS:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->ak()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->aT:Ljava/lang/String;

    const-string v5, "Player"

    iget-object v6, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    const-string v7, ""

    const-string v8, ""

    iget-object v9, p0, Lcom/hungama/movies/sdk/a;->aS:Ljava/lang/String;

    iget-object v10, p0, Lcom/hungama/movies/sdk/a;->aT:Ljava/lang/String;

    const-string v11, "1"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v1, v1, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/a/f;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v5 .. v13}, Lcom/hungama/movies/sdk/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private ak()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->aT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->aT:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    const-string v1, "tVSeriesEpisode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "96"

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v1, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->SERIAL_EPISODE:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v0, v1, :cond_2

    const-string v0, "96"

    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method private al()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->aS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->aS:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    const-string v1, "getHAContentType 0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "musicVideoTrack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "22"

    return-object v0

    :cond_1
    const-string v1, "eventsandBroadcastsVideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "53"

    return-object v0

    :cond_2
    const-string v1, "tVSeries"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "98"

    return-object v0

    :cond_3
    const-string v1, "shortFilms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "93"

    return-object v0

    :cond_4
    const-string v1, "tVSeriesEpisode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "98"

    return-object v0

    :cond_5
    const-string v1, "getHAContentType 1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "100"

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->SERIAL_EPISODE:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v1, v2, :cond_6

    const-string v0, "98"

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->MUSIC_VIDEO:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v1, v2, :cond_7

    const-string v0, "22"

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->LIVE_SHOW:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v1, v2, :cond_8

    const-string v0, "live_show"

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->PURCHASED:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-eq v1, v2, :cond_a

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->PREVIEW:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-eq v1, v2, :cond_a

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->MOVIE:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v1, v2, :cond_9

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->TRAILER:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v1, v2, :cond_b

    const-string v0, "51"

    goto :goto_1

    :cond_a
    :goto_0
    const-string v0, "4"

    :cond_b
    :goto_1
    return-object v0
.end method

.method private static b(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/hungama/movies/sdk/a;)I
    .locals 0

    iget p0, p0, Lcom/hungama/movies/sdk/a;->aE:I

    return p0
.end method

.method static synthetic c(Lcom/hungama/movies/sdk/a;)I
    .locals 0

    iget p0, p0, Lcom/hungama/movies/sdk/a;->aF:I

    return p0
.end method

.method static synthetic d(Lcom/hungama/movies/sdk/a;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/hungama/movies/sdk/a;->aD:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic e(Lcom/hungama/movies/sdk/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->aa()V

    return-void
.end method

.method static synthetic f(Lcom/hungama/movies/sdk/a;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/hungama/movies/sdk/a;->aG:Ljava/lang/Runnable;

    return-object p0
.end method

.method private f(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hungama/movies/sdk/a;->f(Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hungama/movies/sdk/a;->aO:Z

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/hungama/movies/sdk/a;->ak:Landroid/net/Uri;

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->av:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->ak:Landroid/net/Uri;

    iget-object v3, p0, Lcom/hungama/movies/sdk/a;->av:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/hungama/movies/sdk/a;->ag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hungama/movies/sdk/a;->b(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/hungama/movies/sdk/a;->al:I

    invoke-virtual {p0, v0}, Lcom/hungama/movies/sdk/a;->b(Z)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/hungama/movies/sdk/a;->B:I

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/hungama/movies/sdk/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hungama/movies/sdk/a;->ah:Ljava/lang/String;

    return-object p0
.end method

.method private g(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->n()V

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->S()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->ab:Lcom/hungama/movies/sdk/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->ab:Lcom/hungama/movies/sdk/d/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/d/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->ab:Lcom/hungama/movies/sdk/d/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    new-instance v0, Lcom/hungama/movies/sdk/d/a;

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&enc=1&b64=2"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/hungama/movies/sdk/a$3;

    invoke-direct {v2, p0}, Lcom/hungama/movies/sdk/a$3;-><init>(Lcom/hungama/movies/sdk/a;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/hungama/movies/sdk/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/hungama/movies/sdk/d/b;)V

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->ab:Lcom/hungama/movies/sdk/d/a;

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->ab:Lcom/hungama/movies/sdk/d/a;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/d/a;->a()V

    :cond_1
    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->au:Landroid/content/Context;

    invoke-static {v0}, Lcom/hungama/movies/sdk/a/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "stream_type"

    const-string v3, "online"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content_id"

    iget-object v3, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Connection Type"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "content_type"

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->ai()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Error Type"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object p1, p1, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    if-eqz p1, :cond_0

    const-string p1, "duration"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v2, v2, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v2}, Lcom/hungama/movies/sdk/a/f;->k()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "duration"

    const-string v0, "0"

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p1, "Stream Failed"

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/hungama/movies/sdk/c/c;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method private i(Z)V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/Model/Playback;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/Model/Playback;->setBbContentId(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->af()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/Model/Playback;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hungama/movies/sdk/a;->f(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private j(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->ay:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/hungama/movies/sdk/Utils/MoviesApplication;->buildDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method private k(Z)Landroid/view/View;
    .locals 1

    sget-object p1, Lcom/hungama/movies/sdk/a$4;->b:[I

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->as:Landroid/view/View;

    sget v0, Lcom/hungama/movies/sdk/R$id;->ll_gracefull_exit_ontrailer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->as:Landroid/view/View;

    sget v0, Lcom/hungama/movies/sdk/R$id;->ll_gracefull_exit_ontrailer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->as:Landroid/view/View;

    sget v0, Lcom/hungama/movies/sdk/R$id;->ll_gracefull_exit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :goto_0
    :pswitch_3
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->as:Landroid/view/View;

    sget v0, Lcom/hungama/movies/sdk/R$id;->ll_gracefull_exit_ontrailer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :cond_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private l(Z)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->ay:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/hungama/movies/sdk/a;->a(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public A()V
    .locals 1

    invoke-static {}, Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;->getInstance()Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;->registerForEvents(Lcom/hungama/movies/sdk/Model/IHungamaCastEventListener;)V

    return-void
.end method

.method public B()V
    .locals 1

    invoke-static {}, Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;->getInstance()Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;->unRegisterForEvents()V

    return-void
.end method

.method public C()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hungama/movies/sdk/a$b;

    invoke-direct {v0, p0}, Lcom/hungama/movies/sdk/a$b;-><init>(Lcom/hungama/movies/sdk/a;)V

    sput-object v0, Lcom/hungama/movies/sdk/a;->aL:Lcom/hungama/movies/sdk/a$b;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/hungama/movies/sdk/a;->aL:Lcom/hungama/movies/sdk/a$b;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized D()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/hungama/movies/sdk/a;->aL:Lcom/hungama/movies/sdk/a$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/hungama/movies/sdk/a;->aL:Lcom/hungama/movies/sdk/a$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/hungama/movies/sdk/a;->aL:Lcom/hungama/movies/sdk/a$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public E()V
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->as:Landroid/view/View;

    sget v1, Lcom/hungama/movies/sdk/R$id;->fl_parent_network_unavailable:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hungama/movies/sdk/d/c;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->aa:Lcom/hungama/movies/sdk/a$a;

    sget-object v2, Lcom/hungama/movies/sdk/a$a;->c:Lcom/hungama/movies/sdk/a$a;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->aa:Lcom/hungama/movies/sdk/a$a;

    sget-object v2, Lcom/hungama/movies/sdk/a$a;->b:Lcom/hungama/movies/sdk/a$a;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->aa:Lcom/hungama/movies/sdk/a$a;

    sget-object v2, Lcom/hungama/movies/sdk/a$a;->a:Lcom/hungama/movies/sdk/a$a;

    if-ne v1, v2, :cond_2

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->f()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hungama/movies/sdk/d/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->aa:Lcom/hungama/movies/sdk/a$a;

    :cond_3
    return-void
.end method

.method public F()V
    .locals 4

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->as:Landroid/view/View;

    sget v1, Lcom/hungama/movies/sdk/R$id;->fl_parent_network_unavailable:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hungama/movies/sdk/d/c;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->aa:Lcom/hungama/movies/sdk/a$a;

    sget-object v2, Lcom/hungama/movies/sdk/a$a;->b:Lcom/hungama/movies/sdk/a$a;

    const/16 v3, 0x8

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->u:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/b;->a(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->f()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->aa:Lcom/hungama/movies/sdk/a$a;

    sget-object v2, Lcom/hungama/movies/sdk/a$a;->c:Lcom/hungama/movies/sdk/a$a;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->aa:Lcom/hungama/movies/sdk/a$a;

    sget-object v2, Lcom/hungama/movies/sdk/a$a;->a:Lcom/hungama/movies/sdk/a$a;

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->k()V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hungama/movies/sdk/d/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->aa:Lcom/hungama/movies/sdk/a$a;

    :cond_4
    return-void
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hungama/movies/sdk/a;->aQ:Z

    return v0
.end method

.method public H()J
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->h()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public I()J
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->i()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public J()Lcom/hungama/movies/sdk/Utils/PlaybackState;
    .locals 1

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hungama/movies/sdk/Utils/PlaybackState;->PLAY:Lcom/hungama/movies/sdk/Utils/PlaybackState;

    return-object v0

    :cond_0
    sget-object v0, Lcom/hungama/movies/sdk/Utils/PlaybackState;->PAUSE:Lcom/hungama/movies/sdk/Utils/PlaybackState;

    return-object v0
.end method

.method public K()V
    .locals 0

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->r()V

    return-void
.end method

.method public L()Z
    .locals 3

    sget-object v0, Lcom/hungama/movies/sdk/b;->q:Lcom/hungama/movies/sdk/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hungama/movies/sdk/b;->q:Lcom/hungama/movies/sdk/c;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hungama/movies/sdk/b;->q:Lcom/hungama/movies/sdk/c;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public M()J
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v0, v0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v0, v0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/f;->j()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public N()Z
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public O()J
    .locals 4

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->ai:Lcom/hungama/movies/sdk/f/a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->ai:Lcom/hungama/movies/sdk/f/a;

    invoke-virtual {v2}, Lcom/hungama/movies/sdk/f/a;->a()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :cond_0
    return-wide v0

    :catch_0
    return-wide v0
.end method

.method public P()Z
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->aA:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->aA:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    iget v6, v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v5, v6, :cond_3

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    iget v8, v6, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v7, v8, :cond_2

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    if-eqz v8, :cond_1

    iget v9, v8, Lcom/google/android/exoplayer2/Format;->width:I

    if-lez v9, :cond_1

    const-string v9, "VideoFormat"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "width >> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " >> height >> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/hungama/movies/sdk/a/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/hungama/movies/sdk/Utils/Variant;

    const-string v10, ""

    invoke-direct {v9, v10, v8}, Lcom/hungama/movies/sdk/Utils/Variant;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/hungama/movies/sdk/b;->q:Lcom/hungama/movies/sdk/c;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/hungama/movies/sdk/Utils/Variant;

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hungama/movies/sdk/Utils/Variant;

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v3}, Lcom/hungama/movies/sdk/c;->a([Lcom/hungama/movies/sdk/Utils/Variant;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/hungama/movies/sdk/a/d;->a(Ljava/lang/Exception;)V

    :cond_5
    :goto_3
    const/4 v0, 0x1

    return v0
.end method

.method a(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ExoPlayerDemo"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->D:Ljava/lang/String;

    return-object v0
.end method

.method public a(F)V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v1, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hungama/movies/sdk/b/a;->a(Landroid/content/Context;)Lcom/hungama/movies/sdk/b/a;

    move-result-object v0

    sget-object v1, Lcom/hungama/movies/sdk/b;->q:Lcom/hungama/movies/sdk/c;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/b;->a()V

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->P()Z

    :cond_0
    sget-object v1, Lcom/hungama/movies/sdk/b;->q:Lcom/hungama/movies/sdk/c;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/c;->a()Ljava/util/ArrayList;

    move-result-object v1

    sget-object v2, Lcom/hungama/movies/sdk/b;->q:Lcom/hungama/movies/sdk/c;

    invoke-virtual {v2}, Lcom/hungama/movies/sdk/c;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/b/a;->c(Ljava/lang/String;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    sget-object v1, Lcom/hungama/movies/sdk/a/b;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/hungama/movies/sdk/b;->o:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->getProgressResolution()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hungama/movies/sdk/b;->o:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    sget-object v1, Lcom/hungama/movies/sdk/b;->q:Lcom/hungama/movies/sdk/c;

    invoke-virtual {v1, p1}, Lcom/hungama/movies/sdk/c;->a(I)I

    move-result v1

    iput v1, v0, Lcom/hungama/movies/sdk/b;->p:I

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->getBandwidth()I

    move-result v1

    iput v1, v0, Lcom/hungama/movies/sdk/b;->p:I

    :cond_2
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget v0, v0, Lcom/hungama/movies/sdk/b;->p:I

    invoke-virtual {p0, v0}, Lcom/hungama/movies/sdk/a;->b(I)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    new-instance p1, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;

    invoke-direct {p1}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->setBandwidth(I)V

    invoke-virtual {p1, v0}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->setQuality(I)V

    const-string v0, "Auto"

    invoke-virtual {p1, v0}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->setDisplayBandwidth(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    invoke-interface {v0, p1}, Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;->onVariantChanged(Lcom/hungama/movies/sdk/Utils/M3u8MetaData;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;

    invoke-interface {v0, p1}, Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;->onVariantChanged(Lcom/hungama/movies/sdk/Utils/M3u8MetaData;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/hungama/movies/sdk/a;->H:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/hungama/movies/sdk/a;->J:J

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "PlayerActivity"

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->ah:Ljava/lang/String;

    iput-object p1, p0, Lcom/hungama/movies/sdk/a;->au:Landroid/content/Context;

    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    iput-object p1, p0, Lcom/hungama/movies/sdk/a;->ay:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    new-instance p1, Ljava/net/CookieManager;

    invoke-direct {p1}, Ljava/net/CookieManager;-><init>()V

    iput-object p1, p0, Lcom/hungama/movies/sdk/a;->az:Ljava/net/CookieManager;

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->az:Ljava/net/CookieManager;

    sget-object v0, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    invoke-virtual {p1, v0}, Ljava/net/CookieManager;->setCookiePolicy(Ljava/net/CookiePolicy;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    iput-object p1, p0, Lcom/hungama/movies/sdk/a;->av:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->aw:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hungama/movies/sdk/a;->ax:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/hungama/movies/sdk/a;->B:I

    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->r:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->z:Ljava/lang/String;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->q:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->y:Ljava/lang/String;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->LOCAL_VIDEO:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->m:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->ak:Landroid/net/Uri;

    :cond_0
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->o:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->o:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/hungama/movies/sdk/a;->aq:I

    :cond_1
    iget v1, p0, Lcom/hungama/movies/sdk/a;->aq:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/hungama/movies/sdk/a;->aq:I

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    sput v1, Lcom/hungama/movies/sdk/a;->af:I

    :cond_2
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/hungama/movies/sdk/a;->B:I

    :cond_3
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iput-wide v1, p0, Lcom/hungama/movies/sdk/a;->w:J

    :cond_4
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hungama/movies/sdk/a;->ar:Z

    :cond_5
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->s:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->s:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->D:Ljava/lang/String;

    :cond_6
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->t:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->t:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->E:Ljava/lang/String;

    :cond_7
    const-string v1, "PlayVideoActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlayVideoActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hungama/movies/sdk/a;->D:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PlayVideoActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bucket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hungama/movies/sdk/a;->E:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->A:Ljava/lang/String;

    :cond_8
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->k:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hungama/movies/sdk/a;->ao:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/hungama/movies/sdk/b/a;->a(Landroid/content/Context;)Lcom/hungama/movies/sdk/b/a;

    move-result-object p1

    const-string v1, "Auto"

    invoke-virtual {p1, v1}, Lcom/hungama/movies/sdk/b/a;->c(Ljava/lang/String;)V

    const-string v1, "Hungama Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play call received:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->V()V

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->PREVIEW:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-eq v1, v2, :cond_9

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->U()V

    goto :goto_0

    :cond_9
    invoke-static {}, Lcom/hungama/movies/sdk/c/c;->a()Lcom/hungama/movies/sdk/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/c/c;->b()V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/hungama/movies/sdk/a;->e(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hungama/movies/sdk/a;->c(Z)V

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->Q()V

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->ae()V

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->C()V

    invoke-static {}, Lcom/hungama/movies/sdk/c/c;->a()Lcom/hungama/movies/sdk/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->au:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/c;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/hungama/movies/sdk/a$1;

    invoke-direct {v0, p0, p1}, Lcom/hungama/movies/sdk/a$1;-><init>(Lcom/hungama/movies/sdk/a;Lcom/hungama/movies/sdk/b/a;)V

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a$1;->start()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/a;->as:Landroid/view/View;

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->T()V

    return-void
.end method

.method public a(Lcom/hungama/movies/sdk/Model/Playback;I)V
    .locals 2

    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->ah:Ljava/lang/String;

    const-string v0, "onSuccess"

    invoke-static {p2, v0}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/hungama/movies/sdk/a;->ax:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->ah:Ljava/lang/String;

    const-string v0, "onSuccess inner"

    invoke-static {p2, v0}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    instance-of p2, p1, Lcom/hungama/movies/sdk/Model/Playback;

    if-eqz p2, :cond_4

    iput-object p1, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    if-eqz p1, :cond_2

    const-string p1, "Hungama Debug"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "API Response received:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/Model/Playback;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/Model/Playback;->isDrm()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/hungama/movies/sdk/a;->i(Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/Model/Playback;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hungama/movies/sdk/a;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/hungama/movies/sdk/R$string;->lbl_url_alert:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Unable to get play url."

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Lcom/hungama/movies/sdk/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Lcom/hungama/movies/sdk/Utils/PlaybackController;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/a;->at:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    return-void
.end method

.method public a(Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/a;->a:Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;

    return-void
.end method

.method public a(Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    return-void
.end method

.method public a(Lcom/hungama/movies/sdk/Utils/WebServiceError;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hungama/movies/sdk/a;->aO:Z

    const-string v0, "Hungama Debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API Response onFail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/Utils/WebServiceError;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hungama/movies/sdk/a;->f(Z)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    invoke-interface {v0, p1}, Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;->onFail(Lcom/hungama/movies/sdk/Utils/WebServiceError;)V

    :cond_0
    const-string p1, "Response failed"

    invoke-virtual {p0, p1}, Lcom/hungama/movies/sdk/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/hungama/movies/sdk/a$a;)V
    .locals 2

    iget-boolean v0, p0, Lcom/hungama/movies/sdk/a;->G:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hungama/movies/sdk/d/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->aa:Lcom/hungama/movies/sdk/a$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->aa:Lcom/hungama/movies/sdk/a$a;

    sget-object v1, Lcom/hungama/movies/sdk/a$a;->b:Lcom/hungama/movies/sdk/a$a;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/hungama/movies/sdk/a$a;->b:Lcom/hungama/movies/sdk/a$a;

    iput-object p1, p0, Lcom/hungama/movies/sdk/a;->aa:Lcom/hungama/movies/sdk/a$a;

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/hungama/movies/sdk/a;->aa:Lcom/hungama/movies/sdk/a$a;

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hungama/movies/sdk/a;->aM:Z

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->ad()V

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/b;->k()V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public declared-synchronized a(Lcom/hungama/movies/sdk/a$e;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/hungama/movies/sdk/b;->d:Z

    sget-object v0, Lcom/hungama/movies/sdk/a$4;->a:[I

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/a$e;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->t()V

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Error"

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/a$e;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1, v2}, Lcom/hungama/movies/sdk/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/hungama/movies/sdk/a;->e(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->t()V

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->ac()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/hungama/movies/sdk/d/c;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    iput-boolean v2, p0, Lcom/hungama/movies/sdk/a;->aM:Z

    sget-object p1, Lcom/hungama/movies/sdk/a$a;->b:Lcom/hungama/movies/sdk/a$a;

    invoke-virtual {p0, p1}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/a$a;)V

    const-string p1, "no internet connection"

    invoke-direct {p0, p1}, Lcom/hungama/movies/sdk/a;->i(Ljava/lang/String;)V

    const-string p1, "-1"

    const-string v0, "-1"

    invoke-direct {p0, p1, v0}, Lcom/hungama/movies/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->LOCAL_VIDEO:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/hungama/movies/sdk/R$string;->lbl_player_local_video_deleted_alert_dialog_text:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/hungama/movies/sdk/R$string;->lbl_player_response_failed_alert_dialog_text:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Error"

    invoke-static {v0, v1, p1, v2}, Lcom/hungama/movies/sdk/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "non playable url"

    invoke-direct {p0, p1}, Lcom/hungama/movies/sdk/a;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_3
    :try_start_2
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->i()V

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->t()V

    invoke-virtual {p0, v1}, Lcom/hungama/movies/sdk/a;->g(Z)V

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->ac()V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->i()V

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->t()V

    invoke-virtual {p0, v2}, Lcom/hungama/movies/sdk/a;->g(Z)V

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->ac()V

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->ag()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/a;->ao:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v1, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->LOCAL_VIDEO:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->aN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "full"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/hungama/movies/sdk/a;->aO:Z

    if-eqz v0, :cond_3

    :cond_2
    return-void

    :cond_3
    const-string v0, "full"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->aN:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, ""

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->aN:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/hungama/movies/sdk/c/c;->a()Lcom/hungama/movies/sdk/c/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3}, Lcom/hungama/movies/sdk/a;->a(Ljava/lang/String;II)Lcom/hungama/movies/sdk/c/d;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p4}, Lcom/hungama/movies/sdk/c/c;->a(Landroid/content/Context;Lcom/hungama/movies/sdk/c/d;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/hungama/movies/sdk/Utils/DownloadEventsCallback;)V
    .locals 7

    iput-object p3, p0, Lcom/hungama/movies/sdk/a;->ac:Lcom/hungama/movies/sdk/Utils/DownloadEventsCallback;

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->au:Landroid/content/Context;

    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->ao:Ljava/lang/String;

    iget-object v3, p0, Lcom/hungama/movies/sdk/a;->z:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/hungama/movies/sdk/e/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hungama/movies/sdk/Utils/DownloadEventsCallback;Lcom/hungama/movies/sdk/Utils/Variant;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hungama/movies/sdk/a;->ae:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->E:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->aA:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->M:Lcom/hungama/movies/sdk/f/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->M:Lcom/hungama/movies/sdk/f/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lcom/hungama/movies/sdk/f/b;->a(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;II)V

    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/a;->D:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 9

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->ah:Ljava/lang/String;

    const-string v0, "preparePlayer()"

    invoke-static {p1, v0}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lcom/hungama/movies/sdk/a;->ax:Z

    if-eqz p1, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hungama/movies/sdk/a;->ad:Z

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->aB:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    if-nez v0, :cond_1

    invoke-direct {p0, v4}, Lcom/hungama/movies/sdk/a;->j(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->aB:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    :cond_1
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    iget-object v5, p0, Lcom/hungama/movies/sdk/a;->az:Ljava/net/CookieManager;

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->az:Ljava/net/CookieManager;

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    :cond_2
    iget-wide v5, p0, Lcom/hungama/movies/sdk/a;->w:J

    cmp-long v0, v5, v1

    if-nez v0, :cond_3

    iget v0, p0, Lcom/hungama/movies/sdk/a;->B:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    iget v0, p0, Lcom/hungama/movies/sdk/a;->B:I

    int-to-long v5, v0

    iput-wide v5, p0, Lcom/hungama/movies/sdk/a;->w:J

    :cond_3
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/Model/Playback;->getBbContentId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/Model/Playback;->getBbContentId()Ljava/lang/String;

    move-result-object v0

    sget v5, Lcom/hungama/movies/sdk/R$string;->error_drm_unknown:I

    sget v6, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v7, 0x12

    if-ge v6, v7, :cond_4

    sget v0, Lcom/hungama/movies/sdk/R$string;->error_drm_not_supported:I

    :goto_0
    move v5, v0

    :goto_1
    move-object v0, v3

    goto :goto_2

    :cond_4
    :try_start_0
    const-string v6, "widevine"

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Util;->getDrmUuid(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    if-nez v6, :cond_5

    sget v5, Lcom/hungama/movies/sdk/R$string;->error_drm_unsupported_scheme:I

    goto :goto_1

    :cond_5
    const-string v7, "mi_mobile_withoutDownload"

    const-string v8, "vodafone_tv_withoutDownload"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    invoke-direct {p0, v6, v0, v3, p1}, Lcom/hungama/movies/sdk/a;->a(Ljava/util/UUID;Ljava/lang/String;[Ljava/lang/String;Z)Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget v0, v0, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;->reason:I

    if-ne v0, v4, :cond_7

    sget v0, Lcom/hungama/movies/sdk/R$string;->error_drm_unsupported_scheme:I

    goto :goto_0

    :cond_7
    sget v0, Lcom/hungama/movies/sdk/R$string;->error_drm_unknown:I

    goto :goto_0

    :goto_2
    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hungama/movies/sdk/a;->g(Ljava/lang/String;)V

    return-void

    :cond_8
    move-object v0, v3

    :cond_9
    const-string v5, "mi_mobile_withoutDownload"

    const-string v6, "vodafone_tv_withoutDownload"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object v5, v3

    goto :goto_3

    :cond_a
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    iget-object v6, p0, Lcom/hungama/movies/sdk/a;->ay:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    :goto_3
    new-instance v6, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v6, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v6, p0, Lcom/hungama/movies/sdk/a;->aA:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v6, p0, Lcom/hungama/movies/sdk/a;->aA:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    new-instance v7, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    new-instance v6, Lcom/hungama/movies/sdk/f/b;

    iget-object v7, p0, Lcom/hungama/movies/sdk/a;->aA:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v6, v7, v5}, Lcom/hungama/movies/sdk/f/b;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v6, p0, Lcom/hungama/movies/sdk/a;->M:Lcom/hungama/movies/sdk/f/b;

    iget-wide v5, p0, Lcom/hungama/movies/sdk/a;->w:J

    invoke-virtual {p0, v5, v6}, Lcom/hungama/movies/sdk/a;->a(J)V

    invoke-static {}, Lcom/hungama/movies/sdk/Utils/MoviesApplication;->useExtensionRenderers()Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x2

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    :goto_4
    new-instance v6, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;I)V

    iget-object v5, p0, Lcom/hungama/movies/sdk/a;->aA:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-static {v6, v5, v0}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    new-instance v0, Lcom/hungama/movies/sdk/f/a;

    iget-object v5, p0, Lcom/hungama/movies/sdk/a;->aA:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, v5}, Lcom/hungama/movies/sdk/f/a;-><init>(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;)V

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->ai:Lcom/hungama/movies/sdk/f/a;

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v5, p0, Lcom/hungama/movies/sdk/a;->ai:Lcom/hungama/movies/sdk/f/a;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v5, p0, Lcom/hungama/movies/sdk/a;->ai:Lcom/hungama/movies/sdk/f/a;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addAudioDebugListener(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v5, p0, Lcom/hungama/movies/sdk/a;->ai:Lcom/hungama/movies/sdk/f/a;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addVideoDebugListener(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v5, p0, Lcom/hungama/movies/sdk/a;->ai:Lcom/hungama/movies/sdk/f/a;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addMetadataOutput(Lcom/google/android/exoplayer2/metadata/MetadataOutput;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->u:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    iget-object v5, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_c
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->r()V

    :cond_d
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->ak:Landroid/net/Uri;

    if-eqz v0, :cond_12

    new-array v0, v4, [Landroid/net/Uri;

    iget-object v5, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    invoke-virtual {v5}, Lcom/hungama/movies/sdk/Model/Playback;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v0, p1

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    array-length v5, v0

    new-array v5, v5, [Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 v6, 0x0

    :goto_5
    array-length v7, v0

    if-ge v6, v7, :cond_e

    aget-object v7, v0, v6

    aget-object v8, v3, v6

    invoke-direct {p0, v7, v8}, Lcom/hungama/movies/sdk/a;->a(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_e
    array-length v0, v5

    if-ne v0, v4, :cond_f

    aget-object v0, v5, p1

    goto :goto_6

    :cond_f
    new-instance v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;-><init>([Lcom/google/android/exoplayer2/source/MediaSource;)V

    :goto_6
    iget-wide v5, p0, Lcom/hungama/movies/sdk/a;->w:J

    cmp-long v3, v5, v1

    if-lez v3, :cond_10

    const/4 v3, 0x1

    goto :goto_7

    :cond_10
    const/4 v3, 0x0

    :goto_7
    iget-wide v5, p0, Lcom/hungama/movies/sdk/a;->V:J

    cmp-long v1, v5, v1

    if-lez v1, :cond_11

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-wide v5, p0, Lcom/hungama/movies/sdk/a;->V:J

    invoke-virtual {v1, v5, v6}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    iget-wide v1, p0, Lcom/hungama/movies/sdk/a;->V:J

    invoke-virtual {p0, v1, v2}, Lcom/hungama/movies/sdk/a;->b(J)V

    goto :goto_8

    :cond_11
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-wide v5, p0, Lcom/hungama/movies/sdk/a;->w:J

    invoke-virtual {v1, v5, v6}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    iget-wide v1, p0, Lcom/hungama/movies/sdk/a;->V:J

    invoke-virtual {p0, v1, v2}, Lcom/hungama/movies/sdk/a;->b(J)V

    :goto_8
    const-string v1, "Hungama Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prepare player:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    invoke-virtual {v5}, Lcom/hungama/movies/sdk/Model/Playback;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    xor-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v0, v2, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    :cond_12
    const-string v0, "play"

    invoke-virtual {p0, v0, p1, p1, p1}, Lcom/hungama/movies/sdk/a;->a(Ljava/lang/String;IIZ)V

    iget-wide v0, p0, Lcom/hungama/movies/sdk/a;->w:J

    invoke-virtual {p0, v0, v1}, Lcom/hungama/movies/sdk/a;->a(J)V

    return-void

    :cond_13
    :goto_9
    return-void
.end method

.method public c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->au:Landroid/content/Context;

    return-object v0
.end method

.method public c(J)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/a;->z:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->as:Landroid/view/View;

    sget v1, Lcom/hungama/movies/sdk/R$id;->ll_initial_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public d()F
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->aA:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->M:Lcom/hungama/movies/sdk/f/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->M:Lcom/hungama/movies/sdk/f/b;

    invoke-virtual {v0, p1}, Lcom/hungama/movies/sdk/f/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->f()V

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    sput-boolean p1, Lcom/hungama/movies/sdk/a;->aH:Z

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-static {v0}, Lcom/hungama/movies/sdk/f/b;->a(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/hungama/movies/sdk/c/b;

    invoke-direct {v0}, Lcom/hungama/movies/sdk/c/b;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/hungama/movies/sdk/c/b;->h(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    :cond_0
    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/hungama/movies/sdk/c/b;->i(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hungama/movies/sdk/c/b;->a(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    invoke-static {}, Lcom/hungama/movies/sdk/c/c;->a()Lcom/hungama/movies/sdk/c/c;

    move-result-object p1

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/c/b;->a()Ljava/util/HashMap;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/hungama/movies/sdk/c/c;->a(Ljava/lang/String;ZLjava/util/HashMap;I)V

    return-void
.end method

.method public e(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->f()V

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    sput-boolean p1, Lcom/hungama/movies/sdk/a;->aH:Z

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->aA:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->M:Lcom/hungama/movies/sdk/f/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->M:Lcom/hungama/movies/sdk/f/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/f/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public f(Z)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->P()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public g()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->aA:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->M:Lcom/hungama/movies/sdk/f/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->aA:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->M:Lcom/hungama/movies/sdk/f/b;

    invoke-virtual {v1, v0}, Lcom/hungama/movies/sdk/f/b;->a(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g(Z)V
    .locals 0

    iget-boolean p1, p0, Lcom/hungama/movies/sdk/a;->aP:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hungama/movies/sdk/a;->aP:Z

    return-void
.end method

.method public h()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hungama/movies/sdk/a;->H:J

    iput-wide v0, p0, Lcom/hungama/movies/sdk/a;->I:J

    iput-wide v0, p0, Lcom/hungama/movies/sdk/a;->J:J

    return-void
.end method

.method public h(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/hungama/movies/sdk/a;->aQ:Z

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 7

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v1, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->TRAILER:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v1, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->PREVIEW:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v1, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->LOCAL_VIDEO:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v0, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hungama/movies/sdk/a;->I:J

    iget-wide v0, p0, Lcom/hungama/movies/sdk/a;->J:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    new-instance v0, Lcom/hungama/movies/sdk/c/b;

    invoke-direct {v0}, Lcom/hungama/movies/sdk/c/b;-><init>()V

    const-string v1, "full"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/b;->b(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    :cond_2
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/b;->a(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    iget-wide v1, p0, Lcom/hungama/movies/sdk/a;->H:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/b;->c(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    iget-wide v1, p0, Lcom/hungama/movies/sdk/a;->I:J

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/b;->d(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    :try_start_0
    iget-wide v1, p0, Lcom/hungama/movies/sdk/a;->I:J

    div-long/2addr v1, v3

    iget-wide v5, p0, Lcom/hungama/movies/sdk/a;->H:J

    div-long/2addr v5, v3

    const/4 v3, 0x0

    sub-long/2addr v1, v5

    iget-wide v3, p0, Lcom/hungama/movies/sdk/a;->J:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_3

    iput-wide v1, p0, Lcom/hungama/movies/sdk/a;->J:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    iget-wide v1, p0, Lcom/hungama/movies/sdk/a;->J:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/b;->e(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    const/4 v1, 0x1

    :try_start_1
    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    iget-object v3, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    :goto_1
    const-string v3, "android_movie_sdk"

    invoke-virtual {v0, v2}, Lcom/hungama/movies/sdk/c/b;->f(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    invoke-virtual {v0, v3}, Lcom/hungama/movies/sdk/c/b;->g(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    iget-object v3, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v4, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->MUSIC_VIDEO:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v3, v4, :cond_4

    invoke-static {}, Lcom/hungama/movies/sdk/c/c;->a()Lcom/hungama/movies/sdk/c/c;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/c/b;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/hungama/movies/sdk/c/c;->a(Ljava/lang/String;ZLjava/util/HashMap;I)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/hungama/movies/sdk/c/c;->a()Lcom/hungama/movies/sdk/c/c;

    move-result-object v3

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/c/b;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v3, v2, v1, v0, v1}, Lcom/hungama/movies/sdk/c/c;->a(Ljava/lang/String;ZLjava/util/HashMap;I)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    :goto_3
    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "play"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/hungama/movies/sdk/a;->a(Ljava/lang/String;IIZ)V

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->T()V

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->k()V

    return-void
.end method

.method public k()V
    .locals 1

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->l()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hungama/movies/sdk/a;->b(Z)V

    return-void
.end method

.method public l()V
    .locals 0

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->m()V

    return-void
.end method

.method public m()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hungama/movies/sdk/a;->c(Z)V

    invoke-direct {p0, v0}, Lcom/hungama/movies/sdk/a;->k(Z)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hungama/movies/sdk/a;->f(Z)V

    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->l()V

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->aN:Ljava/lang/String;

    return-void
.end method

.method public onAudioCapabilitiesChanged(Lcom/google/android/exoplayer2/audio/AudioCapabilities;)V
    .locals 1

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "mi_mobile_withoutDownload"

    const-string v0, "mi_mobile_withoutDownload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result p1

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->t()V

    invoke-virtual {p0, p1}, Lcom/hungama/movies/sdk/a;->b(Z)V

    :cond_1
    return-void
.end method

.method public onCastApplicationConnected()V
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/Model/Playback;->isDrm()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/hungama/movies/sdk/a;->i(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->af()V

    :goto_0
    return-void
.end method

.method public onCastDeviceConnected()V
    .locals 0

    return-void
.end method

.method public onHungamaCastButtonDetected()V
    .locals 0

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    invoke-interface {v0, p1}, Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;->onError(Ljava/lang/Exception;)V

    :cond_0
    const-string v0, "0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/hungama/movies/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "Error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->ah:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "onError exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/EOFException;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/EOFException;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/IllegalArgumentException;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unexpected end of stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->ad()V

    sget-object p1, Lcom/hungama/movies/sdk/a$e;->g:Lcom/hungama/movies/sdk/a$e;

    invoke-virtual {p0, p1}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/a$e;)V

    goto :goto_0

    :cond_3
    instance-of p1, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/b;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hungama/movies/sdk/a;->V:J

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->t()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/hungama/movies/sdk/a;->b(Z)V

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/hungama/movies/sdk/a$e;->c:Lcom/hungama/movies/sdk/a$e;

    invoke-virtual {p0, p1}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/a$e;)V

    :goto_0
    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object p1, p1, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object p1, p1, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/a/f;->k()I

    move-result p1

    iput p1, p0, Lcom/hungama/movies/sdk/a;->aE:I

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object p1, p1, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/a/f;->i()I

    move-result p1

    iput p1, p0, Lcom/hungama/movies/sdk/a;->aF:I

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object p1, p1, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/a/f;->m()V

    :cond_5
    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object p1, p1, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    if-eqz p1, :cond_6

    const-string p1, "error"

    iget v0, p0, Lcom/hungama/movies/sdk/a;->aE:I

    iget v1, p0, Lcom/hungama/movies/sdk/a;->aF:I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/hungama/movies/sdk/a;->a(Ljava/lang/String;IIZ)V

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    :cond_6
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playWhenReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", playbackState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    goto/16 :goto_1

    :pswitch_0
    const-string p1, "Hungama Debug"

    const-string p2, "STATE_ENDED player:"

    invoke-static {p1, p2}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->a:Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->a:Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;

    sget-object p2, Lcom/hungama/movies/sdk/Utils/PlaybackControllerState;->STATE_ENDED:Lcom/hungama/movies/sdk/Utils/PlaybackControllerState;

    invoke-interface {p1, p2}, Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;->onPlayerStateChanged(Lcom/hungama/movies/sdk/Utils/PlaybackControllerState;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ended"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object p2, p2, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    if-eqz p2, :cond_d

    const-string p2, "MediaEventHungamaObject Buffer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v1, v1, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/a/f;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "MediaEventHungamaObject Play"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v1, v1, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/a/f;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->aa()V

    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object p2, p2, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {p2}, Lcom/hungama/movies/sdk/a/f;->l()V

    goto/16 :goto_2

    :pswitch_1
    const-string p2, "Hungama Debug"

    const-string v2, "STATE_READY player:"

    invoke-static {p2, v2}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/hungama/movies/sdk/a;->ax:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {p2}, Lcom/hungama/movies/sdk/b;->k()V

    :cond_1
    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->a:Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->a:Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/PlaybackControllerState;->STATE_READY:Lcom/hungama/movies/sdk/Utils/PlaybackControllerState;

    invoke-interface {p2, v2}, Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;->onPlayerStateChanged(Lcom/hungama/movies/sdk/Utils/PlaybackControllerState;)V

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ready"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0, v2}, Lcom/hungama/movies/sdk/b;->a(Z)V

    :cond_4
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->p()V

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->m()V

    :cond_5
    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->i()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/hungama/movies/sdk/b;->e:J

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-boolean p1, p1, Lcom/hungama/movies/sdk/b;->d:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iput-boolean v1, p1, Lcom/hungama/movies/sdk/b;->d:Z

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->h()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/hungama/movies/sdk/b;->c:J

    iget-wide v0, p0, Lcom/hungama/movies/sdk/a;->w:J

    invoke-virtual {p0, v0, v1}, Lcom/hungama/movies/sdk/a;->c(J)V

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->ah()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_6
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/hungama/movies/sdk/a;->f(Z)V

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->z()V

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/b;->n()V

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->i()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/hungama/movies/sdk/b;->e:J

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/b;->i()J

    move-result-wide v0

    long-to-int p1, v0

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->PREVIEW:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne p1, v0, :cond_7

    sget p1, Lcom/hungama/movies/sdk/a;->af:I

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/hungama/movies/sdk/a;->X:J

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->v()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->Z()V

    move-object p1, p2

    goto/16 :goto_2

    :pswitch_2
    const-string p1, "Hungama Debug"

    const-string p2, "STATE_BUFFERING player:"

    invoke-static {p1, p2}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->a:Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->a:Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;

    sget-object p2, Lcom/hungama/movies/sdk/Utils/PlaybackControllerState;->STATE_BUFFERING:Lcom/hungama/movies/sdk/Utils/PlaybackControllerState;

    invoke-interface {p1, p2}, Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;->onPlayerStateChanged(Lcom/hungama/movies/sdk/Utils/PlaybackControllerState;)V

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "buffering"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {p2}, Lcom/hungama/movies/sdk/b;->o()V

    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {p2}, Lcom/hungama/movies/sdk/b;->u()V

    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/hungama/movies/sdk/b;->c:J

    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-wide v2, p2, Lcom/hungama/movies/sdk/b;->e:J

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-ltz p2, :cond_a

    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-wide v2, p2, Lcom/hungama/movies/sdk/b;->c:J

    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-wide v4, p2, Lcom/hungama/movies/sdk/b;->e:J

    cmp-long p2, v2, v4

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->a:Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/hungama/movies/sdk/a;->a:Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;

    sget-object v0, Lcom/hungama/movies/sdk/Utils/PlaybackControllerState;->STATE_ENDED:Lcom/hungama/movies/sdk/Utils/PlaybackControllerState;

    invoke-interface {p2, v0}, Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;->onPlayerStateChanged(Lcom/hungama/movies/sdk/Utils/PlaybackControllerState;)V

    :cond_9
    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->aa()V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p0, v1}, Lcom/hungama/movies/sdk/a;->f(Z)V

    goto :goto_2

    :pswitch_3
    const-string p1, "Hungama Debug"

    const-string p2, "STATE_IDLE player:"

    invoke-static {p1, p2}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->a:Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->a:Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;

    sget-object p2, Lcom/hungama/movies/sdk/Utils/PlaybackControllerState;->STATE_IDLE:Lcom/hungama/movies/sdk/Utils/PlaybackControllerState;

    invoke-interface {p1, p2}, Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;->onPlayerStateChanged(Lcom/hungama/movies/sdk/Utils/PlaybackControllerState;)V

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "idle"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :goto_1
    iget-object p1, p1, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    if-eqz p1, :cond_c

    const-string p1, "MediaEventHungamaObject Play"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v1, v1, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/a/f;->k()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MediaEventHungamaObject Buffer"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v1, v1, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/a/f;->i()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "unknown"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_d
    :goto_2
    const-string p2, "MediaEventHungamaObject text"

    invoke-static {p2, p1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onSeekProcessed()V
    .locals 0

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->Y()V

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->aA:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackTypeRendererSupport(I)I

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackTypeRendererSupport(I)I

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    iget-boolean v0, p0, Lcom/hungama/movies/sdk/a;->aj:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->k()V

    :cond_0
    return-void
.end method

.method protected q()V
    .locals 1

    new-instance v0, Lcom/hungama/movies/sdk/a$2;

    invoke-direct {v0, p0}, Lcom/hungama/movies/sdk/a$2;-><init>(Lcom/hungama/movies/sdk/a;)V

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a$2;->start()V

    return-void
.end method

.method public r()V
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hungama/movies/sdk/a;->aR:J

    :cond_0
    iget-boolean v0, p0, Lcom/hungama/movies/sdk/a;->ad:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->aj()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hungama/movies/sdk/a;->ax:Z

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->W()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/hungama/movies/sdk/a;->g(Z)V

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->w()V

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/b;->m()V

    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->am:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->am:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->unregister()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->t()V

    invoke-direct {p0}, Lcom/hungama/movies/sdk/a;->X()V

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->B()V

    invoke-static {}, Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;->getInstance()Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;->close()V

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->D()V

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/b;->q()V

    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->am:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v2}, Lcom/hungama/movies/sdk/b;->w()V

    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->ab:Lcom/hungama/movies/sdk/d/a;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->ab:Lcom/hungama/movies/sdk/d/a;

    invoke-virtual {v2}, Lcom/hungama/movies/sdk/d/a;->b()V

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->ab:Lcom/hungama/movies/sdk/d/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_0
    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->Z:Landroid/os/Handler;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->aG:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->N:Landroid/os/Handler;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->as:Landroid/view/View;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->u:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->au:Landroid/content/Context;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->ak:Landroid/net/Uri;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->aA:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->z:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->L:Lcom/hungama/movies/sdk/Model/Playback;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->at:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->ao:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->K:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->E:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->D:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->y:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->a:Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->aN:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->aw:Landroid/os/Handler;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->aC:Landroid/os/Handler;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->M:Lcom/hungama/movies/sdk/f/b;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->aB:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->av:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->ay:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->az:Ljava/net/CookieManager;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->ag:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->ah:Ljava/lang/String;

    invoke-static {}, Lcom/hungama/movies/sdk/c/c;->a()Lcom/hungama/movies/sdk/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hungama/movies/sdk/c/c;->c()V

    iput-object v1, p0, Lcom/hungama/movies/sdk/a;->aa:Lcom/hungama/movies/sdk/a$a;

    invoke-static {}, Lcom/hungama/movies/sdk/c/a;->a()Lcom/hungama/movies/sdk/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/c/a;->b()V

    invoke-static {v0}, Lcom/hungama/movies/sdk/a/c;->a(Z)V

    return-void
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p1, "surface"

    const-string p2, "surfaceChanged"

    invoke-static {p1, p2}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    :cond_0
    const-string p1, "surface"

    const-string v0, "surfaceCreated"

    invoke-static {p1, v0}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurface()V

    :cond_0
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a;->p()V

    const-string p1, "surface"

    const-string v0, "surfaceDestroyed"

    invoke-static {p1, v0}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public t()V
    .locals 4

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hungama/movies/sdk/a;->w:J

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->ai:Lcom/hungama/movies/sdk/f/a;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->M:Lcom/hungama/movies/sdk/f/b;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/f/b;->b()V

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->M:Lcom/hungama/movies/sdk/f/b;

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->aA:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->ai:Lcom/hungama/movies/sdk/f/a;

    invoke-virtual {v2}, Lcom/hungama/movies/sdk/f/a;->a()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;->onDataConsumption(J)V

    :cond_0
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->ai:Lcom/hungama/movies/sdk/f/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->ai:Lcom/hungama/movies/sdk/f/a;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/f/a;->b()V

    :cond_1
    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->ai:Lcom/hungama/movies/sdk/f/a;

    :cond_2
    return-void
.end method

.method public u()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->N:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->N:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->aD:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized v()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->aD:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hungama/movies/sdk/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hungama/movies/sdk/a$c;-><init>(Lcom/hungama/movies/sdk/a;Lcom/hungama/movies/sdk/a$1;)V

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->aD:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->N:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->aD:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->N:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->aD:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public w()V
    .locals 5

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v1, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->LOCAL_VIDEO:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/hungama/movies/sdk/c/b;

    invoke-direct {v0}, Lcom/hungama/movies/sdk/c/b;-><init>()V

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/b;->r(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    :cond_1
    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v1, v1, Lcom/hungama/movies/sdk/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/b;->j(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/hungama/movies/sdk/a;->O:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/b;->l(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/hungama/movies/sdk/a;->P:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/b;->k(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/hungama/movies/sdk/a;->Q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/b;->m(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/hungama/movies/sdk/a;->R:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/b;->n(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/hungama/movies/sdk/a;->S:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/b;->o(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/hungama/movies/sdk/a;->T:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/b;->p(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/hungama/movies/sdk/a;->U:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/b;->q(Ljava/lang/String;)Lcom/hungama/movies/sdk/c/b;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->MUSIC_VIDEO:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/hungama/movies/sdk/c/c;->a()Lcom/hungama/movies/sdk/c/c;

    move-result-object v1

    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/c/b;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1, v2, v4, v0, v4}, Lcom/hungama/movies/sdk/c/c;->a(Ljava/lang/String;ZLjava/util/HashMap;I)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/hungama/movies/sdk/c/c;->a()Lcom/hungama/movies/sdk/c/c;

    move-result-object v1

    iget-object v2, p0, Lcom/hungama/movies/sdk/a;->x:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/c/b;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/hungama/movies/sdk/c/c;->a(Ljava/lang/String;ZLjava/util/HashMap;I)V

    :goto_1
    iput v4, p0, Lcom/hungama/movies/sdk/a;->O:I

    iput v4, p0, Lcom/hungama/movies/sdk/a;->P:I

    iput v4, p0, Lcom/hungama/movies/sdk/a;->Q:I

    iput v4, p0, Lcom/hungama/movies/sdk/a;->R:I

    iput v4, p0, Lcom/hungama/movies/sdk/a;->S:I

    iput v4, p0, Lcom/hungama/movies/sdk/a;->T:I

    iput v4, p0, Lcom/hungama/movies/sdk/a;->U:I

    return-void
.end method

.method public x()V
    .locals 1

    sget v0, Lcom/hungama/movies/sdk/R$drawable;->player_ic_play_bottomplayer:I

    return-void
.end method

.method public y()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Z:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Z:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->aG:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized z()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->aG:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hungama/movies/sdk/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hungama/movies/sdk/a$d;-><init>(Lcom/hungama/movies/sdk/a;Lcom/hungama/movies/sdk/a$1;)V

    iput-object v0, p0, Lcom/hungama/movies/sdk/a;->aG:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Z:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->aG:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a;->Z:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a;->aG:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
