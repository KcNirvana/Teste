.class public Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;
.super Ljava/lang/Object;
.source "SoundEffect.java"


# static fields
.field private static final DIRAC_SOUND_CLASS_NAME:Ljava/lang/String; = "android.media.audiofx.DiracSound"

.field private static TAG:Ljava/lang/String; = "SoundEffect"

.field public static final USE_DIRAC_SOUND:Z

.field private static mDiracUtil:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;

.field private static sDiracService:Lse/dirac/acs/api/AudioControlService;

.field private static sPendingSfxEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->findDiracSound()Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->USE_DIRAC_SOUND:Z

    invoke-static {}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->newInstance()Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;

    move-result-object v0

    sput-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->mDiracUtil:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findDiracSound()Z
    .locals 4

    :try_start_0
    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->TAG:Ljava/lang/String;

    const-string v1, "find dirac sound"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.media.audiofx.DiracSound"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find dirac sound error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static turnOnMovieSoundEffect(Landroid/content/Context;Z)V
    .locals 3

    sget-boolean v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->USE_DIRAC_SOUND:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOnMovieSoundEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->mDiracUtil:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->newInstance()Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;

    move-result-object v0

    sput-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->mDiracUtil:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;

    :cond_1
    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->mDiracUtil:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;

    invoke-virtual {v0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->initialize()V

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->mDiracUtil:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;

    invoke-virtual {v0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->hasInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOnMovieSoundEffect: setEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->mDiracUtil:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;

    invoke-virtual {v0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->getMovieFieldValue()I

    move-result v0

    sget-object v1, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->mDiracUtil:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->setMode(I)V

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->mDiracUtil:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;

    invoke-virtual {v0, p0, p1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->setEnabled(Landroid/content/Context;Z)V

    sget-object p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->mDiracUtil:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;

    invoke-virtual {p0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->release()V

    :cond_2
    return-void
.end method

.method public static turnOnMusicSoundEffect(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->USE_DIRAC_SOUND:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->TAG:Ljava/lang/String;

    const-string v1, "turnOnMusicSoundEffect: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->mDiracUtil:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->newInstance()Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;

    move-result-object v0

    sput-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->mDiracUtil:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;

    :cond_1
    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->mDiracUtil:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;

    invoke-virtual {v0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->initialize()V

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->mDiracUtil:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;

    invoke-virtual {v0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->hasInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->TAG:Ljava/lang/String;

    const-string v1, "turnOnMusicSoundEffect: setEnabled false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->mDiracUtil:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->setEnabled(Landroid/content/Context;Z)V

    sget-object p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->mDiracUtil:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;

    invoke-virtual {p0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->getMusicFieldValue()I

    move-result p0

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->mDiracUtil:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;

    invoke-virtual {v0, p0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->setMode(I)V

    sget-object p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->mDiracUtil:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;

    invoke-virtual {p0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->release()V

    :cond_2
    return-void
.end method
