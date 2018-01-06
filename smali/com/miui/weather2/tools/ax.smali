.class public Lcom/miui/weather2/tools/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/tools/ax$c;,
        Lcom/miui/weather2/tools/ax$a;,
        Lcom/miui/weather2/tools/ax$b;
    }
.end annotation


# static fields
.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/speech/tts/TextToSpeech;

.field private b:Landroid/media/MediaPlayer;

.field private c:Lcom/miui/weather2/tools/ax$a;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/weather2/tools/ax$c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/miui/weather2/tools/ax$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/weather2/tools/ax;->d:Ljava/util/HashMap;

    sget-object v0, Lcom/miui/weather2/tools/ax;->d:Ljava/util/HashMap;

    const-string v1, "utteranceId"

    const-string v2, "weather_tts_utterance_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/weather2/tools/ax$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/weather2/tools/ax$a;-><init>(Lcom/miui/weather2/tools/ax;Lcom/miui/weather2/tools/ay;)V

    iput-object v0, p0, Lcom/miui/weather2/tools/ax;->c:Lcom/miui/weather2/tools/ax$a;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/tools/ax;->f:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/tools/ax;->g:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/tools/ax;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->b:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic b(Lcom/miui/weather2/tools/ax;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->e:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic c(Lcom/miui/weather2/tools/ax;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->a:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic e()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/miui/weather2/tools/ax;->d:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->f:Ljava/lang/Boolean;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/miui/weather2/tools/bi;->r(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->a:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_2

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/miui/weather2/tools/ax;->a:Landroid/speech/tts/TextToSpeech;

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->a:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/miui/weather2/tools/ay;

    invoke-direct {v1, p0}, Lcom/miui/weather2/tools/ay;-><init>(Lcom/miui/weather2/tools/ax;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_3

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/tools/ax;->b:Landroid/media/MediaPlayer;

    :cond_3
    iget-object v1, p0, Lcom/miui/weather2/tools/ax;->b:Landroid/media/MediaPlayer;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->b:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/miui/weather2/tools/az;

    invoke-direct {v2, p0}, Lcom/miui/weather2/tools/az;-><init>(Lcom/miui/weather2/tools/ax;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->b:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/miui/weather2/tools/ax;->c:Lcom/miui/weather2/tools/ax$a;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/miui/weather2/tools/ax$b;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/miui/weather2/tools/ax$c;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/weather2/tools/ax;->c()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/weather2/tools/ax;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->a:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->c:Lcom/miui/weather2/tools/ax$a;

    invoke-virtual {v0, p2}, Lcom/miui/weather2/tools/ax$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->a:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->a:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    sget-object v2, Lcom/miui/weather2/tools/ax;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/tools/ax$c;

    invoke-interface {v0}, Lcom/miui/weather2/tools/ax$c;->c()V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/weather2/tools/ax;->c()V

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/tools/ax;->b:Landroid/media/MediaPlayer;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/tools/ax;->b:Landroid/media/MediaPlayer;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->a:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    iput-object v2, p0, Lcom/miui/weather2/tools/ax;->a:Landroid/speech/tts/TextToSpeech;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/tools/ax$c;

    invoke-interface {v0}, Lcom/miui/weather2/tools/ax$c;->d()V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->a:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/tools/ax$c;

    invoke-interface {v0}, Lcom/miui/weather2/tools/ax$c;->d()V

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_2
    return-void
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/weather2/tools/ax;->b:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/tools/ax;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/miui/weather2/tools/ax;->a:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/weather2/tools/ax;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInit(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->a:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->a:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/miui/weather2/tools/ax;->b()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/tools/ax;->f:Ljava/lang/Boolean;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/tools/ax;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/tools/ax$b;

    iget-object v2, p0, Lcom/miui/weather2/tools/ax;->f:Ljava/lang/Boolean;

    invoke-interface {v0, v2}, Lcom/miui/weather2/tools/ax$b;->a(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/tools/ax;->f:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/tools/ax;->f:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/miui/weather2/tools/ax;->b()V

    goto :goto_0

    :cond_4
    return-void
.end method
