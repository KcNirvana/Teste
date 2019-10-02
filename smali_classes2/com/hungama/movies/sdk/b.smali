.class public Lcom/hungama/movies/sdk/b;
.super Ljava/lang/Object;
.source "HungamaPlayerController.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hungama/movies/sdk/b$c;,
        Lcom/hungama/movies/sdk/b$b;,
        Lcom/hungama/movies/sdk/b$a;
    }
.end annotation


# static fields
.field public static q:Lcom/hungama/movies/sdk/c;


# instance fields
.field private A:Lcom/hungama/movies/sdk/b$a;

.field private B:Ljava/util/Timer;

.field private C:J

.field private D:J

.field private E:Ljava/util/Timer;

.field private final F:J

.field private final G:J

.field public a:I

.field public b:Ljava/lang/String;

.field public c:J

.field public d:Z

.field protected e:J

.field f:J

.field g:Lcom/hungama/movies/sdk/b$b;

.field h:I

.field i:Z

.field j:Z

.field public k:Lcom/hungama/movies/sdk/b$c;

.field public l:I

.field public m:I

.field n:Lcom/hungama/movies/sdk/a/f;

.field public o:Ljava/lang/String;

.field public p:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/StringBuilder;

.field private t:Ljava/util/Formatter;

.field private u:Z

.field private v:Lcom/hungama/movies/sdk/a;

.field private w:Z

.field private x:J

.field private y:J

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/hungama/movies/sdk/a;Landroid/os/Bundle;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/hungama/movies/sdk/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hungama/movies/sdk/b;->r:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/hungama/movies/sdk/b;->a:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/hungama/movies/sdk/b;->c:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/hungama/movies/sdk/b;->u:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iput-boolean v2, p0, Lcom/hungama/movies/sdk/b;->d:Z

    iput-boolean v2, p0, Lcom/hungama/movies/sdk/b;->w:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/hungama/movies/sdk/b;->x:J

    iput-wide v4, p0, Lcom/hungama/movies/sdk/b;->y:J

    iput-wide v0, p0, Lcom/hungama/movies/sdk/b;->e:J

    iput-boolean v2, p0, Lcom/hungama/movies/sdk/b;->z:Z

    iput-object v3, p0, Lcom/hungama/movies/sdk/b;->g:Lcom/hungama/movies/sdk/b$b;

    iput-object v3, p0, Lcom/hungama/movies/sdk/b;->B:Ljava/util/Timer;

    iput v2, p0, Lcom/hungama/movies/sdk/b;->h:I

    iget v0, p0, Lcom/hungama/movies/sdk/b;->h:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/hungama/movies/sdk/b;->C:J

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/hungama/movies/sdk/b;->D:J

    iput-object v3, p0, Lcom/hungama/movies/sdk/b;->E:Ljava/util/Timer;

    iput-object v3, p0, Lcom/hungama/movies/sdk/b;->k:Lcom/hungama/movies/sdk/b$c;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/hungama/movies/sdk/b;->F:J

    iput-wide v0, p0, Lcom/hungama/movies/sdk/b;->G:J

    iput v2, p0, Lcom/hungama/movies/sdk/b;->l:I

    iput v2, p0, Lcom/hungama/movies/sdk/b;->m:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/hungama/movies/sdk/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hungama/movies/sdk/b;->r:Ljava/lang/String;

    iput-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget p1, p0, Lcom/hungama/movies/sdk/b;->h:I

    if-gtz p1, :cond_0

    const/16 p1, 0x258

    iput p1, p0, Lcom/hungama/movies/sdk/b;->h:I

    :cond_0
    iget p1, p0, Lcom/hungama/movies/sdk/b;->h:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/hungama/movies/sdk/b;->C:J

    invoke-virtual {p0, p2}, Lcom/hungama/movies/sdk/b;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->a()V

    return-void
.end method

.method static synthetic a(Lcom/hungama/movies/sdk/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/hungama/movies/sdk/b;->z()V

    return-void
.end method

.method static synthetic a(Lcom/hungama/movies/sdk/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hungama/movies/sdk/b;->z:Z

    return p1
.end method

.method static synthetic b(Lcom/hungama/movies/sdk/b;)Lcom/hungama/movies/sdk/a;
    .locals 0

    iget-object p0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    return-object p0
.end method

.method private x()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->t()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hungama/movies/sdk/b;->x:J

    iput-wide v0, p0, Lcom/hungama/movies/sdk/b;->c:J

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->j()V

    return-void
.end method

.method private declared-synchronized y()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "mi_mobile_withoutDownload"

    const-string v1, "mi_mobile_withoutDownload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->r:Ljava/lang/String;

    const-string v1, "startAudioFocusTracking"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-boolean v1, p0, Lcom/hungama/movies/sdk/b;->z:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->m()V

    :cond_0
    iget-object v1, p0, Lcom/hungama/movies/sdk/b;->A:Lcom/hungama/movies/sdk/b$a;

    if-nez v1, :cond_1

    new-instance v1, Lcom/hungama/movies/sdk/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/hungama/movies/sdk/b$a;-><init>(Lcom/hungama/movies/sdk/b;Lcom/hungama/movies/sdk/b$1;)V

    iput-object v1, p0, Lcom/hungama/movies/sdk/b;->A:Lcom/hungama/movies/sdk/b$a;

    iget-object v1, p0, Lcom/hungama/movies/sdk/b;->A:Lcom/hungama/movies/sdk/b$a;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v3, :cond_1

    iput-boolean v3, p0, Lcom/hungama/movies/sdk/b;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private z()V
    .locals 0

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->k()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/hungama/movies/sdk/a/b;->d:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "144p"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "240p"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "360p"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "480p"

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "576p"

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "720p"

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "1080p"

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hungama/movies/sdk/c;

    invoke-direct {v0, v1}, Lcom/hungama/movies/sdk/c;-><init>(Ljava/util/ArrayList;)V

    sput-object v0, Lcom/hungama/movies/sdk/b;->q:Lcom/hungama/movies/sdk/c;

    return-void
.end method

.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0, p1, p2}, Lcom/hungama/movies/sdk/a;->b(J)V

    :cond_0
    return-void
.end method

.method public a(JI)V
    .locals 4

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hungama/movies/sdk/d/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->i()V

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget v1, v0, Lcom/hungama/movies/sdk/a;->P:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/hungama/movies/sdk/a;->P:I

    const-wide/16 v0, 0x7530

    int-to-long v2, p3

    mul-long v2, v2, v0

    add-long/2addr p1, v2

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->i()J

    move-result-wide v0

    cmp-long p3, p1, v0

    if-gez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/hungama/movies/sdk/b;->b(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->i()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/hungama/movies/sdk/b;->b(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/hungama/movies/sdk/a;->H:J

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iput-wide v0, p1, Lcom/hungama/movies/sdk/a;->I:J

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iput-wide v0, p1, Lcom/hungama/movies/sdk/a;->J:J

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V
    .locals 2

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->j()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/hungama/movies/sdk/a;->w:J

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/hungama/movies/sdk/a;->b(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->g:Lcom/hungama/movies/sdk/b$b;

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hungama/movies/sdk/b;->i:Z

    iput-boolean p1, p0, Lcom/hungama/movies/sdk/b;->j:Z

    :cond_0
    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->B:Ljava/util/Timer;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/hungama/movies/sdk/b;->B:Ljava/util/Timer;

    :cond_1
    new-instance p1, Lcom/hungama/movies/sdk/b$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/hungama/movies/sdk/b$b;-><init>(Lcom/hungama/movies/sdk/b;Lcom/hungama/movies/sdk/b$1;)V

    iput-object p1, p0, Lcom/hungama/movies/sdk/b;->g:Lcom/hungama/movies/sdk/b$b;

    iget-object v1, p0, Lcom/hungama/movies/sdk/b;->B:Ljava/util/Timer;

    iget-object v2, p0, Lcom/hungama/movies/sdk/b;->g:Lcom/hungama/movies/sdk/b$b;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/hungama/movies/sdk/d/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    sget-object v1, Lcom/hungama/movies/sdk/Utils/PlaybackState;->PLAY:Lcom/hungama/movies/sdk/Utils/PlaybackState;

    invoke-interface {v0, v1}, Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;->onStateChanged(Lcom/hungama/movies/sdk/Utils/PlaybackState;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hungama/movies/sdk/b;->u:Z

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->l()V

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->E()V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(J)V
    .locals 3

    const-string v0, "progress"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x400

    div-long/2addr p1, v0

    long-to-int p1, p1

    mul-int/lit16 p1, p1, 0x400

    int-to-long p1, p1

    const-string v0, "progress after:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iput-wide p1, v0, Lcom/hungama/movies/sdk/a;->H:J

    :cond_0
    iput-wide p1, p0, Lcom/hungama/movies/sdk/b;->c:J

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0, p1, p2}, Lcom/hungama/movies/sdk/a;->b(J)V

    :cond_1
    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->i()J

    move-result-wide v1

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;->onPlaybackProgress(JJ)V

    :cond_2
    return-void
.end method

.method public b(JI)V
    .locals 4

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/hungama/movies/sdk/d/c;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget p2, p1, Lcom/hungama/movies/sdk/a;->O:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/hungama/movies/sdk/a;->O:I

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/a;->i()V

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->h()J

    move-result-wide p1

    const-wide/16 v0, 0x7530

    int-to-long v2, p3

    mul-long v2, v2, v0

    sub-long/2addr p1, v2

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/hungama/movies/sdk/b;->b(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/hungama/movies/sdk/b;->b(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hungama/movies/sdk/b;->u:Z

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->k()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    sget-object v1, Lcom/hungama/movies/sdk/Utils/PlaybackState;->PAUSE:Lcom/hungama/movies/sdk/Utils/PlaybackState;

    invoke-interface {v0, v1}, Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;->onStateChanged(Lcom/hungama/movies/sdk/Utils/PlaybackState;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 5

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->i()V

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget v1, v0, Lcom/hungama/movies/sdk/a;->P:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/hungama/movies/sdk/a;->P:I

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->g()Z

    move-result v0

    const-wide/16 v1, 0x7530

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->h()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->i()J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-gez v0, :cond_0

    invoke-virtual {p0, v3, v4}, Lcom/hungama/movies/sdk/b;->b(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->i()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/hungama/movies/sdk/b;->b(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->h()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->i()J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-gez v0, :cond_2

    invoke-virtual {p0, v3, v4}, Lcom/hungama/movies/sdk/b;->b(J)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->i()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/hungama/movies/sdk/b;->b(J)V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 7

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->i()V

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget v1, v0, Lcom/hungama/movies/sdk/a;->O:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/hungama/movies/sdk/a;->O:I

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->g()Z

    move-result v0

    const-wide/16 v1, 0x7530

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->h()J

    move-result-wide v5

    sub-long/2addr v5, v1

    cmp-long v0, v5, v3

    if-lez v0, :cond_0

    invoke-virtual {p0, v5, v6}, Lcom/hungama/movies/sdk/b;->b(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/hungama/movies/sdk/b;->b(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->h()J

    move-result-wide v5

    sub-long/2addr v5, v1

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    invoke-virtual {p0, v5, v6}, Lcom/hungama/movies/sdk/b;->b(J)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3, v4}, Lcom/hungama/movies/sdk/b;->b(J)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public h()J
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hungama/movies/sdk/b;->f:J

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lcom/hungama/movies/sdk/b;->c:J

    return-wide v0
.end method

.method public k()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->r:Ljava/lang/String;

    const-string v1, "pause()"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    sget-object v1, Lcom/hungama/movies/sdk/Utils/PlaybackState;->PAUSE:Lcom/hungama/movies/sdk/Utils/PlaybackState;

    invoke-interface {v0, v1}, Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;->onStateChanged(Lcom/hungama/movies/sdk/Utils/PlaybackState;)V

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->i()V

    :cond_1
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->m()V

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hungama/movies/sdk/b;->c:J

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->x()V

    :cond_2
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->u()V

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/f;->g()V

    :cond_3
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->q()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->q()V

    :cond_4
    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->y()V

    :cond_5
    return-void
.end method

.method public l()V
    .locals 2

    invoke-static {}, Lcom/hungama/movies/sdk/d/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->r:Ljava/lang/String;

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/hungama/movies/sdk/b;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->h()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/f;->h()V

    :cond_2
    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    sget-object v1, Lcom/hungama/movies/sdk/Utils/PlaybackState;->PLAY:Lcom/hungama/movies/sdk/Utils/PlaybackState;

    invoke-interface {v0, v1}, Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;->onStateChanged(Lcom/hungama/movies/sdk/Utils/PlaybackState;)V

    :cond_3
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->E()V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/hungama/movies/sdk/b;->a(Z)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->z()V

    :cond_5
    return-void
.end method

.method public declared-synchronized m()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "mi_mobile_withoutDownload"

    const-string v1, "mi_mobile_withoutDownload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->A:Lcom/hungama/movies/sdk/b$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/hungama/movies/sdk/b;->z:Z

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/hungama/movies/sdk/b;->A:Lcom/hungama/movies/sdk/b$a;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hungama/movies/sdk/b;->A:Lcom/hungama/movies/sdk/b$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public n()V
    .locals 4

    invoke-direct {p0}, Lcom/hungama/movies/sdk/b;->y()V

    iget-boolean v0, p0, Lcom/hungama/movies/sdk/b;->u:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/hungama/movies/sdk/b;->d:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/hungama/movies/sdk/b;->x:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hungama/movies/sdk/b;->x:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-wide v1, p0, Lcom/hungama/movies/sdk/b;->x:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-wide v1, p0, Lcom/hungama/movies/sdk/b;->x:J

    invoke-virtual {v0, v1, v2}, Lcom/hungama/movies/sdk/a;->b(J)V

    :cond_1
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->s()V

    return-void
.end method

.method protected o()V
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/f;->a()V

    const-string v0, "MediaEventHungamaObject Buffer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v2}, Lcom/hungama/movies/sdk/a/f;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MediaEventHungamaObject Play"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v2}, Lcom/hungama/movies/sdk/a/f;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/f;->f()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/hungama/movies/sdk/R$id;->iv_trailer_replay:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    sget v0, Lcom/hungama/movies/sdk/R$id;->iv_replay:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/hungama/movies/sdk/R$id;->iv_resume_network:I

    if-ne p1, v0, :cond_3

    iput-boolean v1, p0, Lcom/hungama/movies/sdk/b;->u:Z

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/a;->F()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iput-boolean v1, p1, Lcom/hungama/movies/sdk/a;->ad:Z

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/a;->h()V

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/a/f;->m()V

    :cond_2
    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/hungama/movies/sdk/b;->x()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/hungama/movies/sdk/b/a;->a(Landroid/content/Context;)Lcom/hungama/movies/sdk/b/a;

    move-result-object p1

    sget-object p2, Lcom/hungama/movies/sdk/b;->q:Lcom/hungama/movies/sdk/c;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->a()V

    iget-object p2, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object p2, p2, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {p2}, Lcom/hungama/movies/sdk/a;->P()Z

    :cond_0
    sget-object p2, Lcom/hungama/movies/sdk/b;->q:Lcom/hungama/movies/sdk/c;

    invoke-virtual {p2}, Lcom/hungama/movies/sdk/c;->a()Ljava/util/ArrayList;

    move-result-object p2

    sget-object p4, Lcom/hungama/movies/sdk/b;->q:Lcom/hungama/movies/sdk/c;

    invoke-virtual {p4}, Lcom/hungama/movies/sdk/c;->b()Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/hungama/movies/sdk/b/a;->c(Ljava/lang/String;)V

    if-nez p3, :cond_1

    sget-object p1, Lcom/hungama/movies/sdk/a/b;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/hungama/movies/sdk/b;->o:Ljava/lang/String;

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p3, -0x1

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->getProgressResolution()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hungama/movies/sdk/b;->o:Ljava/lang/String;

    :goto_0
    sget-object p1, Lcom/hungama/movies/sdk/b;->q:Lcom/hungama/movies/sdk/c;

    invoke-virtual {p1, p3}, Lcom/hungama/movies/sdk/c;->a(I)I

    move-result p1

    iput p1, p0, Lcom/hungama/movies/sdk/b;->p:I

    if-lez p3, :cond_2

    add-int/lit8 p1, p3, -0x1

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->getBandwidth()I

    move-result p1

    iput p1, p0, Lcom/hungama/movies/sdk/b;->p:I

    :cond_2
    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget p5, p0, Lcom/hungama/movies/sdk/b;->p:I

    invoke-virtual {p1, p5}, Lcom/hungama/movies/sdk/a;->b(I)V

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget p5, p1, Lcom/hungama/movies/sdk/a;->U:I

    add-int/lit8 p5, p5, -0x1

    iput p5, p1, Lcom/hungama/movies/sdk/a;->U:I

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hungama/movies/sdk/b;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object p1, p1, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object p1, p1, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;

    invoke-interface {p1, p2}, Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;->onVariantChanged(Lcom/hungama/movies/sdk/Utils/M3u8MetaData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_1

    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/hungama/movies/sdk/b;->b(J)V

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object p1, p1, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object p1, p1, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;->onSeekingStateChanged(Z)V

    :cond_0
    return-void

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hungama/movies/sdk/b;->w:Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/a;->i()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hungama/movies/sdk/b;->w:Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object v1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v1, v1, Lcom/hungama/movies/sdk/a;->W:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v2, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->PREVIEW:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-wide v1, v1, Lcom/hungama/movies/sdk/a;->X:J

    int-to-long v3, p1

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-wide v0, p1, Lcom/hungama/movies/sdk/a;->X:J

    invoke-virtual {p0, v0, v1}, Lcom/hungama/movies/sdk/b;->b(J)V

    return-void

    :cond_0
    iget-wide v1, p0, Lcom/hungama/movies/sdk/b;->y:J

    int-to-long v3, p1

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iput-wide v3, p0, Lcom/hungama/movies/sdk/b;->y:J

    :cond_1
    iget-object v1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v1, v1, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v1, v1, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    invoke-interface {v1, v0}, Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;->onSeekingStateChanged(Z)V

    :cond_2
    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    invoke-interface {v0, p1}, Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;->onSeekingProgressChanged(I)V

    :cond_3
    invoke-virtual {p0, v3, v4}, Lcom/hungama/movies/sdk/b;->b(J)V

    return-void
.end method

.method protected p()V
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    if-eqz v0, :cond_1

    const-string v0, "MediaEventHungamaObject Buffer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v2}, Lcom/hungama/movies/sdk/a/f;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MediaEventHungamaObject Play"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v2}, Lcom/hungama/movies/sdk/a/f;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/f;->d()V

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/f;->e()V

    :cond_1
    return-void
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->g:Lcom/hungama/movies/sdk/b$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->g:Lcom/hungama/movies/sdk/b$b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b$b;->cancel()Z

    iput-object v1, p0, Lcom/hungama/movies/sdk/b;->g:Lcom/hungama/movies/sdk/b$b;

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->B:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->B:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/hungama/movies/sdk/b;->B:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hungama/movies/sdk/a/f;

    invoke-direct {v0}, Lcom/hungama/movies/sdk/a/f;-><init>()V

    iput-object v0, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    :cond_0
    return-void
.end method

.method public s()V
    .locals 8

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hungama/movies/sdk/a/f;

    invoke-direct {v0}, Lcom/hungama/movies/sdk/a/f;-><init>()V

    iput-object v0, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/f;->e()V

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->E:Ljava/util/Timer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/hungama/movies/sdk/b;->E:Ljava/util/Timer;

    new-instance v0, Lcom/hungama/movies/sdk/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hungama/movies/sdk/b$c;-><init>(Lcom/hungama/movies/sdk/b;Lcom/hungama/movies/sdk/b$1;)V

    iput-object v0, p0, Lcom/hungama/movies/sdk/b;->k:Lcom/hungama/movies/sdk/b$c;

    iget-object v2, p0, Lcom/hungama/movies/sdk/b;->E:Ljava/util/Timer;

    iget-object v3, p0, Lcom/hungama/movies/sdk/b;->k:Lcom/hungama/movies/sdk/b$c;

    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object p1, p1, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object p1, p1, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurface()V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->k:Lcom/hungama/movies/sdk/b$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->k:Lcom/hungama/movies/sdk/b$c;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b$c;->cancel()Z

    iput-object v1, p0, Lcom/hungama/movies/sdk/b;->k:Lcom/hungama/movies/sdk/b$c;

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->E:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->E:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/hungama/movies/sdk/b;->E:Ljava/util/Timer;

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/hungama/movies/sdk/b;->l:I

    iput v0, p0, Lcom/hungama/movies/sdk/b;->m:I

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->q()V

    return-void
.end method

.method public u()V
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->k:Lcom/hungama/movies/sdk/b$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->k:Lcom/hungama/movies/sdk/b$c;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b$c;->cancel()Z

    iput-object v1, p0, Lcom/hungama/movies/sdk/b;->k:Lcom/hungama/movies/sdk/b$c;

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->E:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->E:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/hungama/movies/sdk/b;->E:Ljava/util/Timer;

    :cond_1
    iget v0, p0, Lcom/hungama/movies/sdk/b;->l:I

    iget v1, p0, Lcom/hungama/movies/sdk/b;->h:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/hungama/movies/sdk/b;->h:I

    if-lez v0, :cond_2

    invoke-static {}, Lcom/hungama/movies/sdk/c/c;->a()Lcom/hungama/movies/sdk/c/c;

    move-result-object v0

    iget v1, p0, Lcom/hungama/movies/sdk/b;->l:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/hungama/movies/sdk/c/c;->a(J)V

    const-string v0, "CatchMedia consumption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consumption Event update - milisecDelta : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hungama/movies/sdk/b;->l:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/hungama/movies/sdk/b;->l:I

    :try_start_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b;->s()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public v()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hungama/movies/sdk/d/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->v:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    sget-object v1, Lcom/hungama/movies/sdk/a$a;->c:Lcom/hungama/movies/sdk/a$a;

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/a$a;)V

    :cond_1
    return-void
.end method

.method public w()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/hungama/movies/sdk/b;->v:Lcom/hungama/movies/sdk/a;

    sget-object v1, Lcom/hungama/movies/sdk/b;->q:Lcom/hungama/movies/sdk/c;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/hungama/movies/sdk/b;->q:Lcom/hungama/movies/sdk/c;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/c;->c()V

    :cond_0
    sput-object v0, Lcom/hungama/movies/sdk/b;->q:Lcom/hungama/movies/sdk/c;

    iput-object v0, p0, Lcom/hungama/movies/sdk/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/hungama/movies/sdk/b;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/hungama/movies/sdk/b;->s:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/hungama/movies/sdk/b;->t:Ljava/util/Formatter;

    iput-object v0, p0, Lcom/hungama/movies/sdk/b;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
