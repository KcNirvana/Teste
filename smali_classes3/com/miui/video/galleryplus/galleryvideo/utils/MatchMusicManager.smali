.class public Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;
.super Ljava/lang/Object;
.source "MatchMusicManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$OnMatchMusicListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MatchMusicManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsClick:Z

.field private mMiPlayerTranscoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

.field private mMusicCompletionListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;

.field private mMusicErrorListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;

.field private mMusicFilePath:Ljava/lang/String;

.field private mOnMatchMusicListener:Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$OnMatchMusicListener;

.field private mScene:Lorg/videolan/libvlc/MIPlayerGetScene;

.field private mSceneCompletionListener:Lorg/videolan/libvlc/MIPlayerGetScene$onCompletionListener;

.field private mSceneId:I

.field private mSceneOnErrorListener:Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;

.field private mTemPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mSceneId:I

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$2;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$2;-><init>(Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mSceneCompletionListener:Lorg/videolan/libvlc/MIPlayerGetScene$onCompletionListener;

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$3;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$3;-><init>(Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mSceneOnErrorListener:Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$4;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$4;-><init>(Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mMusicCompletionListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$5;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$5;-><init>(Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mMusicErrorListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->initMusicSource(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->handleMusicError(I)V

    return-void
.end method

.method private getMusicCacheDir()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/music_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/FileUtils;->createDir(Ljava/lang/String;)Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/music_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMusicTempPath()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mTemPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/music_temp.mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->getNewPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mTemPath:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mTemPath:Ljava/lang/String;

    return-object v0
.end method

.method private handleMusicError(I)V
    .locals 0

    return-void
.end method

.method private handleMusicSuccess(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mOnMatchMusicListener:Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$OnMatchMusicListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mOnMatchMusicListener:Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$OnMatchMusicListener;

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$OnMatchMusicListener;->onSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initMusicSource(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/player/service/utils/AiMusicUtils;->isMusicExist()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "music"

    const-string v1, "MIUI/.music"

    invoke-static {p1, v0, v1}, Lcom/miui/video/player/service/utils/AiMusicUtils;->copyAssetsToDst(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private matchMusic(ILjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/miui/video/player/service/utils/AiMusicUtils;->isNewDefaultMusicExist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/video/base/utils/AIMusicSPHelper;->getInstance(Landroid/content/Context;)Lcom/miui/video/base/utils/AIMusicSPHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/video/base/utils/AIMusicSPHelper;->getIndexByPath(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/miui/video/player/service/utils/AiMusicUtils;->getMusicPathByDefault(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/miui/video/player/service/utils/AiMusicUtils;->getMusicPathByScene(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mMusicFilePath:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mMusicFilePath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->handleMusicSuccess(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getNewPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".mp4"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setOnMatchMusicListener(Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$OnMatchMusicListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mOnMatchMusicListener:Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$OnMatchMusicListener;

    return-void
.end method

.method public startMatchMusic(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mScene:Lorg/videolan/libvlc/MIPlayerGetScene;

    if-nez v0, :cond_0

    new-instance v0, Lorg/videolan/libvlc/MIPlayerGetScene;

    invoke-direct {v0}, Lorg/videolan/libvlc/MIPlayerGetScene;-><init>()V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mScene:Lorg/videolan/libvlc/MIPlayerGetScene;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mMusicFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mMusicFilePath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->handleMusicSuccess(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mIsClick:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mIsClick:Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mScene:Lorg/videolan/libvlc/MIPlayerGetScene;

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->getMusicCacheDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/videolan/libvlc/MIPlayerGetScene;->setInputOutput(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mScene:Lorg/videolan/libvlc/MIPlayerGetScene;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mSceneCompletionListener:Lorg/videolan/libvlc/MIPlayerGetScene$onCompletionListener;

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MIPlayerGetScene;->setOnCompletionListener(Lorg/videolan/libvlc/MIPlayerGetScene$onCompletionListener;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mScene:Lorg/videolan/libvlc/MIPlayerGetScene;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mSceneOnErrorListener:Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MIPlayerGetScene;->setOnErrorListener(Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;)V

    const-string v0, "MatchMusicManager"

    const-string v1, "ai music getAiMusic --- start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mScene:Lorg/videolan/libvlc/MIPlayerGetScene;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MIPlayerGetScene;->getScene()I

    move-result v0

    const-string v1, "MatchMusicManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ai music getAiMusic --- end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mIsClick:Z

    if-ltz v0, :cond_3

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->mSceneId:I

    invoke-direct {p0, v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->matchMusic(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$1;

    invoke-direct {p1, p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;I)V

    invoke-static {p1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
