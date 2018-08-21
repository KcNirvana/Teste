.class public Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;
.super Ljava/lang/Object;
.source "RecommendManager.java"


# static fields
.field public static final PREF_RECOMMEND_POSITION:Ljava/lang/String; = "recommend_position"

.field private static final PREF_RECOMMEND_REQ:Ljava/lang/String; = "recommend_req"

.field private static final TAG:Ljava/lang/String; = "RecommendManager"

.field public static isAllScreen:Z

.field private static sInstance:Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;

.field private mSource:Lcom/miui/home/launcher/assistant/module/CardSource;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/miui/home/launcher/assistant/module/CardSource;

    sget-object v1, Lcom/miui/home/launcher/assistant/module/CardManager$CARD_SOURCE_ID;->RECOMMEND:Lcom/miui/home/launcher/assistant/module/CardManager$CARD_SOURCE_ID;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/CardManager$CARD_SOURCE_ID;->ordinal()I

    move-result v1

    const v2, 0x1b040064

    const-class v3, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;

    const-string/jumbo v4, "key_recommend"

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/assistant/module/CardSource;-><init>(IILjava/lang/Class;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->mSource:Lcom/miui/home/launcher/assistant/module/CardSource;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->createRecomCard()V

    return-void
.end method

.method private createRecomCard()V
    .locals 8

    const/4 v7, -0x1

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->containInSources()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "key_recommend"

    invoke-static {v3, v5}, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->getCardStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string/jumbo v3, "RecommendManager"

    const-string/jumbo v5, "recommend status = close || existed"

    invoke-static {v3, v5}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "recommend_req"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/miui/home/launcher/assistant/util/PrefNativeUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "RecommendManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requseted = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "recommend_position"

    const/4 v6, -0x1

    invoke-static {v3, v5, v6}, Lcom/miui/home/launcher/assistant/util/PrefNativeUtil;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    :cond_2
    :goto_1
    const-string/jumbo v3, "RecommendManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "recommend position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v7, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/CardManager;->getCardSize()I

    move-result v3

    if-gt v0, v3, :cond_3

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->mSource:Lcom/miui/home/launcher/assistant/module/CardSource;

    invoke-static {v0, v3}, Lcom/miui/home/launcher/assistant/module/CardManager;->addCardSource(ILcom/miui/home/launcher/assistant/module/CardSource;)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "key_recommend"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->setCardStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->refreshListView()V

    :cond_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->getCTACardStatus(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v1, Lcom/miui/home/launcher/assistant/request/RecommendRequest;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/miui/home/launcher/assistant/request/RecommendRequest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/request/RecommendRequest;->reqPosition()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->parsePosition(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v7, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/CardManager;->getCardSize()I

    move-result v3

    if-le v0, v3, :cond_5

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/CardManager;->getCardSize()I

    move-result v0

    :cond_5
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "recommend_req"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Lcom/miui/home/launcher/assistant/util/PrefNativeUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "recommend_position"

    invoke-static {v3, v5, v0}, Lcom/miui/home/launcher/assistant/util/PrefNativeUtil;->setInt(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->sInstance:Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->sInstance:Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->sInstance:Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->sInstance:Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private parsePosition(Ljava/lang/String;)I
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string/jumbo v2, "cardPosition"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "RecommendManager"

    const-string/jumbo v3, "JSONException"

    invoke-static {v2, v3, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public containInSources()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->mSource:Lcom/miui/home/launcher/assistant/module/CardSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->mSource:Lcom/miui/home/launcher/assistant/module/CardSource;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/CardManager;->hasSource(Lcom/miui/home/launcher/assistant/module/CardSource;)Z

    move-result v0

    goto :goto_0
.end method

.method public initRecommend()V
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager$1;-><init>(Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->runInBackgroud(Ljava/lang/Runnable;)V

    return-void
.end method
