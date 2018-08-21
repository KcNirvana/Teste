.class public Lcom/miui/home/launcher/assistant/util/LiteSoundManager;
.super Ljava/lang/Object;
.source "LiteSoundManager.java"


# static fields
.field private static final MSG_INIT_SOUND_POOL:I = 0x1

.field private static final MSG_UNINIT_SOUND_POOL:I = 0x2

.field private static sInstance:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;


# instance fields
.field public close_sound:I

.field private context:Landroid/content/Context;

.field public effectPool:Landroid/media/SoundPool;

.field private volatile mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private volatile mIsDestroyed:Z

.field public open_sound:I


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->mIsDestroyed:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "LiteSoundManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager$1;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/assistant/util/LiteSoundManager$1;-><init>(Lcom/miui/home/launcher/assistant/util/LiteSoundManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/util/LiteSoundManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/util/LiteSoundManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/util/LiteSoundManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/assistant/util/LiteSoundManager;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public static getInstance()Lcom/miui/home/launcher/assistant/util/LiteSoundManager;
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->sInstance:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->sInstance:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    invoke-direct {v0}, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->sInstance:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->sInstance:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->sInstance:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->mIsDestroyed:Z

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public initSoundPool(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->mIsDestroyed:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->effectPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public playClose()V
    .locals 7

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->effectPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->close_sound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playOpen()V
    .locals 7

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->effectPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->open_sound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
