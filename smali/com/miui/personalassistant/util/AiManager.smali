.class public Lcom/miui/personalassistant/util/AiManager;
.super Ljava/lang/Object;
.source "AiManager.java"


# static fields
.field private static final AI_STATE_ACITON:Ljava/lang/String; = "com.miui.personalassistant.action.AI_STATE"

.field public static volatile sInstance:Lcom/miui/personalassistant/util/AiManager;


# instance fields
.field private mAiStateLast:I

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/util/AiManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/util/AiManager;)I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/util/AiManager;->mAiStateLast:I

    return v0
.end method

.method static synthetic access$002(Lcom/miui/personalassistant/util/AiManager;I)I
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/util/AiManager;->mAiStateLast:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/util/AiManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/util/AiManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/util/AiManager;
    .locals 2

    sget-object v0, Lcom/miui/personalassistant/util/AiManager;->sInstance:Lcom/miui/personalassistant/util/AiManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/personalassistant/util/AiManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/personalassistant/util/AiManager;->sInstance:Lcom/miui/personalassistant/util/AiManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/util/AiManager;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/util/AiManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/personalassistant/util/AiManager;->sInstance:Lcom/miui/personalassistant/util/AiManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/personalassistant/util/AiManager;->sInstance:Lcom/miui/personalassistant/util/AiManager;

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
.method public initListener()V
    .locals 3

    const-string/jumbo v1, "AiState"

    const-string/jumbo v2, "MvsClientManager start init"

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    iput v1, p0, Lcom/miui/personalassistant/util/AiManager;->mAiStateLast:I

    iget-object v1, p0, Lcom/miui/personalassistant/util/AiManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/voiceassist/mvs/client/MvsClientManager;->getInstance(Landroid/content/Context;)Lcom/miui/voiceassist/mvs/client/MvsClientManager;

    move-result-object v0

    new-instance v1, Lcom/miui/personalassistant/util/AiManager$1;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/util/AiManager$1;-><init>(Lcom/miui/personalassistant/util/AiManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/voiceassist/mvs/client/MvsClientManager;->setMvsCallback(Lcom/miui/voiceassist/mvs/client/MvsClientManager$MvsCallback;)V

    invoke-virtual {v0}, Lcom/miui/voiceassist/mvs/client/MvsClientManager;->init()V

    return-void
.end method
