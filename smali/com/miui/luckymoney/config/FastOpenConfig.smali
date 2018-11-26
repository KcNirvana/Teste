.class public Lcom/miui/luckymoney/config/FastOpenConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/miui/luckymoney/config/FastOpenConfig;


# instance fields
.field private mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

.field private mRestricts:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/luckymoney/config/FastOpenConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/luckymoney/config/FastOpenConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    iget-object v0, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getFastOpenConfig()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mRestricts:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mRestricts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/luckymoney/config/AppConstants;->FastOpenRestricts:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mRestricts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/FastOpenConfig;->saveConfig()V

    :cond_0
    sget-object v0, Lcom/miui/luckymoney/config/FastOpenConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRestricts:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mRestricts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private add(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mRestricts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mRestricts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/FastOpenConfig;
    .locals 3

    const-class v1, Lcom/miui/luckymoney/config/FastOpenConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/luckymoney/config/FastOpenConfig;->sInstance:Lcom/miui/luckymoney/config/FastOpenConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/luckymoney/config/FastOpenConfig;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/luckymoney/config/FastOpenConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/luckymoney/config/FastOpenConfig;->sInstance:Lcom/miui/luckymoney/config/FastOpenConfig;

    :cond_0
    sget-object v0, Lcom/miui/luckymoney/config/FastOpenConfig;->sInstance:Lcom/miui/luckymoney/config/FastOpenConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private remove(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mRestricts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mRestricts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRestrict(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getFastOpenConfig()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public saveConfig()V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    iget-object v1, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mRestricts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setFastOpenConfig(Ljava/util/ArrayList;)V

    return-void
.end method

.method public set(Ljava/lang/String;Z)Z
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/config/FastOpenConfig;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/luckymoney/config/FastOpenConfig;->add(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
