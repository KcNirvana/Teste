.class public Lcom/miui/payment/captor/config/TextPatternConfigManager;
.super Ljava/lang/Object;
.source "TextPatternConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/captor/config/TextPatternConfigManager$Holder;
    }
.end annotation


# static fields
.field public static final PAYMENT_CONFIG_FILE:Ljava/lang/String; = "payment_pattern_config.json"


# instance fields
.field private mBackTrackingCaches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureCaches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockObj:Ljava/lang/Object;

.field private mTextPatternCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/captor/config/TextPattern;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/payment/captor/config/TextPatternConfigManager;->mLockObj:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/payment/captor/config/TextPatternConfigManager;->mTextPatternCaches:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/payment/captor/config/TextPatternConfigManager;->mFeatureCaches:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/payment/captor/config/TextPatternConfigManager;->mBackTrackingCaches:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/payment/captor/config/TextPatternConfigManager;->loadConfig()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/payment/captor/config/TextPatternConfigManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/payment/captor/config/TextPatternConfigManager;-><init>()V

    return-void
.end method

.method private createCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/miui/payment/captor/config/TextPatternConfigManager;
    .locals 1

    invoke-static {}, Lcom/miui/payment/captor/config/TextPatternConfigManager$Holder;->access$100()Lcom/miui/payment/captor/config/TextPatternConfigManager;

    move-result-object v0

    return-object v0
.end method

.method private loadBackTrackingConfig(Lcom/miui/payment/captor/config/TextPatternConfig;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/payment/captor/config/TextPatternConfig;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/miui/payment/captor/config/TextPatternConfig;->getBackTracking()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private loadConfig()V
    .locals 7

    const-string/jumbo v5, "payment_pattern_config.json"

    invoke-static {v5}, Lcom/miui/payment/utils/FileUtil;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "read patternConfig file failed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const-class v5, Lcom/miui/payment/captor/config/TextPatternConfig;

    invoke-static {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/payment/captor/config/TextPatternConfig;

    if-nez v3, :cond_1

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "parse patternConfig json failed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-direct {p0, v3}, Lcom/miui/payment/captor/config/TextPatternConfigManager;->loadTextPatternConfig(Lcom/miui/payment/captor/config/TextPatternConfig;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/miui/payment/captor/config/TextPatternConfigManager;->loadFeaturesConfig(Lcom/miui/payment/captor/config/TextPatternConfig;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v3}, Lcom/miui/payment/captor/config/TextPatternConfigManager;->loadBackTrackingConfig(Lcom/miui/payment/captor/config/TextPatternConfig;)Ljava/util/List;

    move-result-object v0

    iget-object v6, p0, Lcom/miui/payment/captor/config/TextPatternConfigManager;->mLockObj:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iput-object v4, p0, Lcom/miui/payment/captor/config/TextPatternConfigManager;->mTextPatternCaches:Ljava/util/Map;

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iput-object v2, p0, Lcom/miui/payment/captor/config/TextPatternConfigManager;->mFeatureCaches:Ljava/util/List;

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iput-object v0, p0, Lcom/miui/payment/captor/config/TextPatternConfigManager;->mBackTrackingCaches:Ljava/util/List;

    :cond_4
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private loadFeaturesConfig(Lcom/miui/payment/captor/config/TextPatternConfig;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/payment/captor/config/TextPatternConfig;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/miui/payment/captor/config/TextPatternConfig;->getFeatures()Lcom/miui/payment/captor/config/TextPatternConfig$Feature;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/payment/captor/config/TextPatternConfig$Feature;->getMaxLength()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/miui/payment/captor/config/TextPatternConfig$Feature;->getDigits()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/miui/payment/captor/config/TextPatternConfig$Feature;->getContains()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/miui/payment/captor/config/TextPatternConfig$Feature;->getNotContains()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1
.end method

.method private loadTextPatternConfig(Lcom/miui/payment/captor/config/TextPatternConfig;)Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/payment/captor/config/TextPatternConfig;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/captor/config/TextPattern;",
            ">;>;"
        }
    .end annotation

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/captor/config/TextPatternConfig;->getPackages()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v9}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v8

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v11, :cond_3

    invoke-interface {v8}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/payment/captor/config/TextPatternConfig$PackageConfig;

    if-nez v7, :cond_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Lcom/miui/payment/captor/config/TextPatternConfig$PackageConfig;->getActivityPatterns()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v7}, Lcom/miui/payment/captor/config/TextPatternConfig$PackageConfig;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_0

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/payment/captor/config/TextPatternConfig$ActivityConfig;

    if-nez v0, :cond_2

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/miui/payment/captor/config/TextPatternConfig$ActivityConfig;->getActivity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/payment/captor/config/TextPatternConfig$ActivityConfig;->getTextPatterns()Ljava/util/List;

    move-result-object v12

    invoke-direct {p0, v10, v3}, Lcom/miui/payment/captor/config/TextPatternConfigManager;->createCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-object v13
.end method


# virtual methods
.method public getBackTrackingTexts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/captor/config/TextPatternConfigManager;->mBackTrackingCaches:Ljava/util/List;

    return-object v0
.end method

.method public getCompletionFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/captor/config/TextPatternConfigManager;->mFeatureCaches:Ljava/util/List;

    return-object v0
.end method

.method public getTextPatterns(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/captor/config/TextPattern;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/miui/payment/captor/config/TextPatternConfigManager;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/payment/captor/config/TextPatternConfigManager;->mTextPatternCaches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTextPatterns(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/captor/config/TextPattern;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/miui/payment/captor/config/TextPatternConfigManager;->createCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/payment/captor/config/TextPatternConfigManager;->getTextPatterns(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
