.class public Lcom/miui/powercenter/legacypowerrank/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aFS:Ljava/util/List;

.field private static aFT:Ljava/util/List;

.field private static aFU:D

.field private static aFV:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/powercenter/legacypowerrank/f;->aFS:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/powercenter/legacypowerrank/f;->aFT:Ljava/util/List;

    sput-wide v2, Lcom/miui/powercenter/legacypowerrank/f;->aFV:D

    sput-wide v2, Lcom/miui/powercenter/legacypowerrank/f;->aFU:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aRA(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-lt p0, v1, :cond_0

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static aRB(Ljava/util/List;)Ljava/util/List;
    .locals 12

    const v11, 0x7f0703f8

    const/16 v10, 0x3e8

    const-wide/16 v8, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/miui/powercenter/legacypowerrank/e;

    invoke-direct {v2}, Lcom/miui/powercenter/legacypowerrank/e;-><init>()V

    new-instance v3, Lcom/miui/powercenter/legacypowerrank/e;

    invoke-direct {v3}, Lcom/miui/powercenter/legacypowerrank/e;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/legacypowerrank/e;

    iget v5, v0, Lcom/miui/powercenter/legacypowerrank/e;->uid:I

    invoke-static {v5}, Lcom/miui/powercenter/legacypowerrank/f;->aRz(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/e;->getUid()I

    move-result v5

    invoke-static {v5}, Lcom/miui/powercenter/legacypowerrank/f;->aRA(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/e;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-ne v5, v10, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/securitycenter/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/miui/powercenter/legacypowerrank/e;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/e;->getUid()I

    move-result v5

    iput v5, v2, Lcom/miui/powercenter/legacypowerrank/e;->uid:I

    iget v5, v0, Lcom/miui/powercenter/legacypowerrank/e;->aFG:I

    iput v5, v2, Lcom/miui/powercenter/legacypowerrank/e;->aFG:I

    const-string/jumbo v5, "android"

    iput-object v5, v2, Lcom/miui/powercenter/legacypowerrank/e;->aFQ:Ljava/lang/String;

    :cond_1
    invoke-virtual {v2, v0}, Lcom/miui/powercenter/legacypowerrank/e;->aRo(Lcom/miui/powercenter/legacypowerrank/e;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "dex2oat"

    iget-object v6, v0, Lcom/miui/powercenter/legacypowerrank/e;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/miui/powercenter/legacypowerrank/e;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/miui/powercenter/legacypowerrank/e;->name:Ljava/lang/String;

    iput-object v5, v3, Lcom/miui/powercenter/legacypowerrank/e;->name:Ljava/lang/String;

    iget v5, v0, Lcom/miui/powercenter/legacypowerrank/e;->aFG:I

    iput v5, v3, Lcom/miui/powercenter/legacypowerrank/e;->aFG:I

    :cond_3
    invoke-virtual {v3, v0}, Lcom/miui/powercenter/legacypowerrank/e;->aRo(Lcom/miui/powercenter/legacypowerrank/e;)V

    const-string/jumbo v5, "PowerRankHelperHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dex2oat uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v0, v0, Lcom/miui/powercenter/legacypowerrank/e;->uid:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    invoke-static {v1, v0}, Lcom/miui/powercenter/legacypowerrank/f;->aRx(Ljava/util/List;Lcom/miui/powercenter/legacypowerrank/e;)Lcom/miui/powercenter/legacypowerrank/e;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v5, v0}, Lcom/miui/powercenter/legacypowerrank/e;->aRo(Lcom/miui/powercenter/legacypowerrank/e;)V

    goto/16 :goto_0

    :cond_6
    iget-wide v4, v2, Lcom/miui/powercenter/legacypowerrank/e;->aFR:D

    cmpl-double v0, v4, v8

    if-lez v0, :cond_8

    iget-object v0, v2, Lcom/miui/powercenter/legacypowerrank/e;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securitycenter/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/miui/powercenter/legacypowerrank/e;->name:Ljava/lang/String;

    iput v10, v2, Lcom/miui/powercenter/legacypowerrank/e;->uid:I

    const/4 v0, 0x6

    iput v0, v2, Lcom/miui/powercenter/legacypowerrank/e;->aFG:I

    :cond_7
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/e;->aFR:D

    cmpl-double v0, v4, v8

    if-lez v0, :cond_9

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method

.method public static declared-synchronized aRq()V
    .locals 10

    const/4 v1, 0x0

    const/16 v8, 0x3e7

    const-wide/16 v2, 0x0

    const-class v4, Lcom/miui/powercenter/legacypowerrank/f;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v0, "PowerRankHelperHolder"

    const-string/jumbo v5, "refreshStats begin"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lmiui/securitycenter/powercenter/PowerRankHelper;

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-direct {v5, v0}, Lmiui/securitycenter/powercenter/PowerRankHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v5}, Lmiui/securitycenter/powercenter/PowerRankHelper;->refreshStats()V

    sget-object v0, Lcom/miui/powercenter/legacypowerrank/f;->aFS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/miui/powercenter/legacypowerrank/f;->aFS:Ljava/util/List;

    invoke-virtual {v5}, Lmiui/securitycenter/powercenter/PowerRankHelper;->getAppUsageList()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/powercenter/legacypowerrank/f;->aRw(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/powercenter/legacypowerrank/f;->aRB(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/miui/powercenter/legacypowerrank/f;->aFS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/legacypowerrank/e;

    iget v7, v0, Lcom/miui/powercenter/legacypowerrank/e;->uid:I

    invoke-static {v7}, Lcom/miui/common/b/f;->aHR(I)I

    move-result v7

    if-ne v7, v8, :cond_4

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/common/b/f;->aHU()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    const/4 v1, 0x0

    const/16 v7, 0x3e7

    invoke-static {v1, v7}, Lcom/miui/a/d/a/a;->bua(II)Ljava/util/List;

    move-result-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/e;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/e;->getUid()I

    move-result v0

    invoke-static {v1, v7, v0}, Lcom/miui/powercenter/legacypowerrank/f;->aRy(Ljava/util/List;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/powercenter/legacypowerrank/f;->aFT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/miui/powercenter/legacypowerrank/f;->aFT:Ljava/util/List;

    invoke-virtual {v5}, Lmiui/securitycenter/powercenter/PowerRankHelper;->getMiscUsageList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/powercenter/legacypowerrank/f;->aRw(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/miui/powercenter/legacypowerrank/f;->aFS:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/legacypowerrank/e;

    iget-wide v0, v0, Lcom/miui/powercenter/legacypowerrank/e;->aFR:D

    add-double/2addr v0, v2

    move-wide v2, v0

    goto :goto_2

    :cond_2
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/powercenter/legacypowerrank/f;->aFU:D

    sget-object v0, Lcom/miui/powercenter/legacypowerrank/f;->aFT:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/legacypowerrank/e;

    sget-wide v6, Lcom/miui/powercenter/legacypowerrank/f;->aFU:D

    iget-wide v8, v0, Lcom/miui/powercenter/legacypowerrank/e;->aFR:D

    add-double/2addr v6, v8

    sput-wide v6, Lcom/miui/powercenter/legacypowerrank/f;->aFU:D
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "PowerRankHelperHolder"

    const-string/jumbo v2, "refreshStats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    const-string/jumbo v0, "PowerRankHelperHolder"

    const-string/jumbo v1, "refreshStats end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-void

    :cond_3
    :try_start_3
    sget-wide v0, Lcom/miui/powercenter/legacypowerrank/f;->aFU:D

    add-double/2addr v0, v2

    sput-wide v0, Lcom/miui/powercenter/legacypowerrank/f;->aFV:D
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "PowerRankHelperHolder"

    const-string/jumbo v2, "refreshStats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_2
    move-exception v0

    :try_start_5
    const-string/jumbo v1, "PowerRankHelperHolder"

    const-string/jumbo v2, "refreshStats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public static declared-synchronized aRr()Ljava/util/List;
    .locals 2

    const-class v1, Lcom/miui/powercenter/legacypowerrank/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/powercenter/legacypowerrank/f;->aFS:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/f;->aRv(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized aRs()Ljava/util/List;
    .locals 2

    const-class v1, Lcom/miui/powercenter/legacypowerrank/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/powercenter/legacypowerrank/f;->aFT:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/f;->aRv(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized aRt()D
    .locals 4

    const-class v0, Lcom/miui/powercenter/legacypowerrank/f;

    monitor-enter v0

    :try_start_0
    sget-wide v2, Lcom/miui/powercenter/legacypowerrank/f;->aFV:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized aRu()D
    .locals 4

    const-class v0, Lcom/miui/powercenter/legacypowerrank/f;

    monitor-enter v0

    :try_start_0
    sget-wide v2, Lcom/miui/powercenter/legacypowerrank/f;->aFU:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static aRv(Ljava/util/List;)Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/legacypowerrank/e;

    new-instance v3, Lcom/miui/powercenter/legacypowerrank/e;

    invoke-direct {v3, v0}, Lcom/miui/powercenter/legacypowerrank/e;-><init>(Lcom/miui/powercenter/legacypowerrank/e;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static aRw(Ljava/util/List;)Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/securitycenter/powercenter/BatterySipper;

    new-instance v3, Lcom/miui/powercenter/legacypowerrank/e;

    invoke-direct {v3, v0}, Lcom/miui/powercenter/legacypowerrank/e;-><init>(Lmiui/securitycenter/powercenter/BatterySipper;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static aRx(Ljava/util/List;Lcom/miui/powercenter/legacypowerrank/e;)Lcom/miui/powercenter/legacypowerrank/e;
    .locals 4

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/legacypowerrank/e;

    iget v2, v0, Lcom/miui/powercenter/legacypowerrank/e;->uid:I

    iget v3, p1, Lcom/miui/powercenter/legacypowerrank/e;->uid:I

    if-ne v2, v3, :cond_0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static aRy(Ljava/util/List;Ljava/lang/String;I)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return v3

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, p2, :cond_1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v3
.end method

.method private static aRz(I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/powercenter/a/f;->bbo()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/miui/powercenter/a/f;->bbm(I)I

    move-result v0

    invoke-static {}, Lcom/miui/common/b/f;->aHP()I

    move-result v1

    if-ne v0, v1, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    invoke-static {}, Lcom/miui/powercenter/a/f;->bbp()I

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    invoke-static {p0}, Lcom/miui/powercenter/a/f;->bbm(I)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/miui/powercenter/a/f;->bbm(I)I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_4

    :cond_3
    return v3

    :cond_4
    return v2
.end method
