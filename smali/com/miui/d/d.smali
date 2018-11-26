.class public Lcom/miui/d/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final bdF:Ljava/util/Set;

.field private static final bdG:Ljava/util/concurrent/ExecutorService;

.field private static volatile bdL:Lcom/miui/d/d;

.field private static bdM:J


# instance fields
.field private bdH:Ljava/util/Map;

.field private bdI:Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;

.field private bdJ:Landroid/content/ServiceConnection;

.field private bdK:Landroid/content/SharedPreferences;

.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/miui/d/d;->bdG:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    sput-object v0, Lcom/miui/d/d;->bdF:Ljava/util/Set;

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/d/d;->bdL:Lcom/miui/d/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/d/d;->bdI:Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/d/d;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/d/d;->bdH:Ljava/util/Map;

    new-instance v0, Lcom/miui/d/j;

    invoke-direct {v0, p0}, Lcom/miui/d/j;-><init>(Lcom/miui/d/d;)V

    iput-object v0, p0, Lcom/miui/d/d;->bdJ:Landroid/content/ServiceConnection;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/d/d;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/d/d;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/miui/d/d;->mContext:Landroid/content/Context;

    :cond_1
    iget-object v0, p0, Lcom/miui/d/d;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "unified_ad_list"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/d/d;->bdK:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/miui/d/d;->bBi()V

    return-void
.end method

.method public static declared-synchronized bBa(Landroid/content/Context;)Lcom/miui/d/d;
    .locals 2

    const-class v1, Lcom/miui/d/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/d/d;->bdL:Lcom/miui/d/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/d/d;

    invoke-direct {v0, p0}, Lcom/miui/d/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/d/d;->bdL:Lcom/miui/d/d;

    :cond_0
    sget-object v0, Lcom/miui/d/d;->bdL:Lcom/miui/d/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static bBf(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/systemAdSolution/common/AdInfo;
    .locals 6

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    const-string/jumbo v0, "skin_description"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "skinAdDescription_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".txt"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/miui/c/f;->bzz(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "RemoteUnifiedAdService"

    const-string/jumbo v1, "there is no unified ad now."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/miui/d/d;->bBh(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string/jumbo v0, "RemoteUnifiedAdService"

    const-string/jumbo v1, "colud not caver the cached str to the adInfo list."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemAdSolution/common/AdInfo;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/common/AdInfo;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/common/AdInfo;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_4

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_5

    const-string/jumbo v0, "RemoteUnifiedAdService"

    const-string/jumbo v1, "could not get skin info by ad id. no fitted ad info. maybe all ads are invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_5
    invoke-virtual {v1}, Lcom/miui/systemAdSolution/common/AdInfo;->getMaterials()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemAdSolution/common/Material;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/common/Material;->isMaterialViewLogLevel()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/miui/d/d;->bdF:Ljava/util/Set;

    new-instance v3, Ljava/lang/Long;

    invoke-virtual {v1}, Lcom/miui/systemAdSolution/common/AdInfo;->getId()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RemoteUnifiedAdService"

    const-string/jumbo v3, "could not get the ad from local."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :cond_7
    move-object v1, v2

    goto :goto_0
.end method

.method private static bBh(Ljava/lang/String;)Ljava/util/List;
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lcom/miui/systemAdSolution/common/AdInfo;->deserialize(Ljava/lang/String;)Lcom/miui/systemAdSolution/common/AdInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private bBi()V
    .locals 4

    iget-object v0, p0, Lcom/miui/d/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/d/d;->bBl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/d/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/d/d;->bBj(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/d/d;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/d/d;->bdJ:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/d/d;->bdM:J

    const-string/jumbo v0, "RemoteUnifiedAdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start bind service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/miui/d/d;->bdM:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RemoteUnifiedAdService"

    const-string/jumbo v2, "could not bind the service."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static bBj(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "miui.intent.action.ad.CHANGE_SKIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/miui/msa/util/MsaUtils;->getMsaPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private bBk()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/d/d;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/d/d;->bBl(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/d/d;->bdI:Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static bBl(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/d/d;->bBj(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "RemoteUnifiedAdService"

    const-string/jumbo v1, "find the ad service in systemAdSolution."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RemoteUnifiedAdService"

    const-string/jumbo v2, "some exceptions occur when judge if there is the system ad app."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string/jumbo v0, "RemoteUnifiedAdService"

    const-string/jumbo v1, "there is no a systemAdSolution app."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private bBm()V
    .locals 1

    iget-object v0, p0, Lcom/miui/d/d;->bdI:Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/d/d;->bBi()V

    :cond_0
    return-void
.end method

.method static synthetic bBn(Lcom/miui/d/d;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/d/d;->bdH:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic bBo(Lcom/miui/d/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/d/d;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic bBp(Lcom/miui/d/d;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/d/d;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic bBq(Lcom/miui/d/d;)Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;
    .locals 1

    iget-object v0, p0, Lcom/miui/d/d;->bdI:Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;

    return-object v0
.end method

.method static synthetic bBr()J
    .locals 2

    sget-wide v0, Lcom/miui/d/d;->bdM:J

    return-wide v0
.end method

.method static synthetic bBs(Lcom/miui/d/d;Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;)Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;
    .locals 0

    iput-object p1, p0, Lcom/miui/d/d;->bdI:Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;

    return-object p1
.end method

.method static synthetic bBt(Lcom/miui/d/d;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/d/d;->bBk()Z

    move-result v0

    return v0
.end method

.method static synthetic bBu(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lcom/miui/d/d;->bBh(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bBv(Lcom/miui/d/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/d/d;->bBm()V

    return-void
.end method


# virtual methods
.method public bBb(Ljava/lang/String;Lcom/miui/d/f;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/d/d;->bdH:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bBc(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/miui/d/d;->bdG:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/d/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/miui/d/e;-><init>(Lcom/miui/d/d;Ljava/lang/String;Lcom/miui/d/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RemoteUnifiedAdService"

    const-string/jumbo v2, "colud not get skin info. becuase some exceptions occur."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method bBd()V
    .locals 2

    iget-object v0, p0, Lcom/miui/d/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/d/d;->bBl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/d/d;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/d/d;->bdJ:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method bBe(Lcom/miui/d/g;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/miui/d/d;->bdG:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RemoteUnifiedAdService"

    const-string/jumbo v2, "exec some command failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bBg(Ljava/lang/String;Lcom/miui/systemAdSolution/common/AdTrackType;Ljava/lang/String;JLcom/miui/systemAdSolution/common/Material;J)Z
    .locals 14

    iget-object v2, p0, Lcom/miui/d/d;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string/jumbo v2, "RemoteUnifiedAdService"

    const-string/jumbo v3, "the params are invalid."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-ltz v2, :cond_0

    if-eqz p6, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/miui/systemAdSolution/common/AdTrackType;->getValue()Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    move-result-object v2

    sget-object v3, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->TRACK_VIEW:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    if-ne v2, v3, :cond_2

    invoke-virtual/range {p6 .. p6}, Lcom/miui/systemAdSolution/common/Material;->isMaterialViewLogLevel()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/miui/d/d;->bdF:Ljava/util/Set;

    new-instance v3, Ljava/lang/Long;

    move-wide/from16 v0, p4

    invoke-direct {v3, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const-string/jumbo v2, "RemoteUnifiedAdService"

    const-string/jumbo v3, "could not track. becasue the method getAdInfoFromLocal is not called before this tracking."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/miui/d/d;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v13, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/miui/d/k;

    move-object v3, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    move-wide/from16 v11, p7

    invoke-direct/range {v2 .. v12}, Lcom/miui/d/k;-><init>(Lcom/miui/d/d;Ljava/lang/String;Ljava/lang/String;Lcom/miui/systemAdSolution/common/AdTrackType;Ljava/lang/String;JLcom/miui/systemAdSolution/common/Material;J)V

    invoke-direct {v13, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v2, Lcom/miui/d/d;->bdG:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v13}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v13, v4, v5, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    const-string/jumbo v4, "RemoteUnifiedAdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "do track! the ad info id is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", the material id is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p6 .. p6}, Lcom/miui/systemAdSolution/common/Material;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", the resource id is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p7

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", the level is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p6 .. p6}, Lcom/miui/systemAdSolution/common/Material;->isMaterialViewLogLevel()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "material leve"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_3
    const-string/jumbo v3, "resource level."

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v3, "RemoteUnifiedAdService"

    const-string/jumbo v4, "colud not do track."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2

    :catch_1
    move-exception v2

    new-instance v2, Ljava/util/concurrent/TimeoutException;

    const-string/jumbo v3, "do track is time out(more than 1000 second.)"

    invoke-direct {v2, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
