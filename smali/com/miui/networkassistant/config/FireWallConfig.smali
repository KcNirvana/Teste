.class public Lcom/miui/networkassistant/config/FireWallConfig;
.super Lcom/miui/networkassistant/config/ConfigFile;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "FireWallConfig"

.field private static sInstanceMap:Ljava/util/HashMap;


# instance fields
.field private mFileName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/config/ConfigFile;-><init>()V

    iput-object p2, p0, Lcom/miui/networkassistant/config/FireWallConfig;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/config/FireWallConfig;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/FireWallConfig;
    .locals 3

    const-class v1, Lcom/miui/networkassistant/config/FireWallConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/config/FireWallConfig;->sInstanceMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/config/FireWallConfig;->sInstanceMap:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/config/FireWallConfig;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/config/FireWallConfig;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/networkassistant/config/FireWallConfig;

    invoke-direct {v0, p0, p1}, Lcom/miui/networkassistant/config/FireWallConfig;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/networkassistant/config/FireWallConfig;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/FireWallConfig;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getPairMap()Lmiui/util/ArrayMap;
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v3, Lmiui/util/ArrayMap;

    invoke-direct {v3}, Lmiui/util/ArrayMap;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/config/FireWallConfig;->mPairValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/miui/networkassistant/model/FirewallRule;->parse(I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v1, v0}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v5, "FireWallConfig"

    const-string/jumbo v6, "parse rule exception"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v2

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized getRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/miui/networkassistant/config/FireWallConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/model/FirewallRule;->parse(I)Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_3
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/networkassistant/config/FireWallConfig;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
