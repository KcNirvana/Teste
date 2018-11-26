.class public Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;
.super Lcom/miui/networkassistant/config/ConfigFile;
.source ""


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "_datausage_ignore_applist_config.db"

.field private static sInstanceMap:Ljava/util/HashMap;


# instance fields
.field private mImsi:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/config/ConfigFile;-><init>()V

    iput-object p2, p0, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->mImsi:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;
    .locals 3

    const-class v1, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->sInstanceMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->sInstanceMap:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    invoke-direct {v0, p0, p1}, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->sInstanceMap:Ljava/util/HashMap;

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
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_datausage_ignore_applist_config.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIgnoreList()Ljava/util/ArrayList;
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->mPairValues:Ljava/util/concurrent/ConcurrentHashMap;

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public isDataUsageIgnore(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->get(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setDataUsageIgnore(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
