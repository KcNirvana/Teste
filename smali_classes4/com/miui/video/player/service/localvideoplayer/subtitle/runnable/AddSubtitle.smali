.class public Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;
.super Ljava/lang/Object;
.source "AddSubtitle.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "AddSubtitle"


# instance fields
.field private mAddTimedTextListener:Lcom/miui/video/player/service/localvideoplayer/player/OnAddTimedTextListener;

.field private mListener:Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ILoadSubtitleFinishedListener;

.field private mPath:Ljava/lang/String;

.field private mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

.field private mTrackManager:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;Ljava/lang/String;Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ILoadSubtitleFinishedListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle$1;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mAddTimedTextListener:Lcom/miui/video/player/service/localvideoplayer/player/OnAddTimedTextListener;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mTrackManager:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mTrackManager:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getPlayer()Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mListener:Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ILoadSubtitleFinishedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;)Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;Ljava/lang/String;[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->addTrack2List(Ljava/lang/String;[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;)Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mTrackManager:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;)Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ILoadSubtitleFinishedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mListener:Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ILoadSubtitleFinishedListener;

    return-object p0
.end method

.method private addTrack2List(Ljava/lang/String;[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;)V
    .locals 3

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;

    invoke-direct {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/subtitle/LanguageDetector;->getInstance()Lcom/miui/video/player/service/localvideoplayer/subtitle/LanguageDetector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/LanguageDetector;->detectLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->setLanguageAndType(Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->setPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-static {p2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/TrackUtils;->getPosInTrack([Ltv/danmaku/ijk/media/player/misc/ITrackInfo;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->setPosInTrack(I)V

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->removeExtraSubtitle()V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mTrackManager:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getExtraSubtitleTracks()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mTrackManager:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {p2}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getExtraSubtitleTracks()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addTrack2Player(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/miui/video/framework/utils/FileUtils;->guessFileCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleUtil;->DEFAULT_SUBTITLE_CHARSET:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mTrackManager:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleUtil;->createVideoSubtitleDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleUtil;->DEFAULT_SUBTITLE_CHARSET:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleUtil;->DEFAULT_SUBTITLE_CHARSET:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/miui/video/framework/utils/FileUtils;->convertFileCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    const-string v0, "application/x-subrip"

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mAddTimedTextListener:Lcom/miui/video/player/service/localvideoplayer/player/OnAddTimedTextListener;

    invoke-interface {p1, v1, v0, v2}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/player/service/localvideoplayer/player/OnAddTimedTextListener;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleUtil;->TEMP_SUBTITLE_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddSubtitle copy external sub to local path outFileName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleUtil;->DEFAULT_SUBTITLE_CHARSET:Ljava/lang/String;

    sget-object v2, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleUtil;->DEFAULT_SUBTITLE_CHARSET:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/miui/video/framework/utils/FileUtils;->convertFileCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    const-string v0, "application/x-subrip"

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mAddTimedTextListener:Lcom/miui/video/player/service/localvideoplayer/player/OnAddTimedTextListener;

    invoke-interface {p1, v1, v0, v2}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/player/service/localvideoplayer/player/OnAddTimedTextListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    const-string v1, "application/x-subrip"

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mAddTimedTextListener:Lcom/miui/video/player/service/localvideoplayer/player/OnAddTimedTextListener;

    invoke-interface {v0, p1, v1, v2}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/player/service/localvideoplayer/player/OnAddTimedTextListener;)V

    :goto_0
    return-void
.end method

.method private removeExtraSubtitle()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mTrackManager:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getExtraSubtitleTracks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;

    invoke-virtual {v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/video/framework/utils/FileUtils;->getPureParentDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mTrackManager:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v4}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getVideoPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/video/framework/utils/FileUtils;->getPureParentDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleUtil;->createExtraSubtitleDir()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->mPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->addTrack2Player(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddSubtitle: for...Exception.e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
