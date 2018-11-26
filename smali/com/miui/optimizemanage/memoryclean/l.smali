.class public Lcom/miui/optimizemanage/memoryclean/l;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/memoryclean/l;->mContext:Landroid/content/Context;

    return-void
.end method

.method private xF()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/l;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "proc_filter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "locked_pkg_list"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private xG(Ljava/util/Set;Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public xD(Ljava/util/List;)Ljava/util/List;
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/optimizemanage/memoryclean/l;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/optimizemanage/a/a;->zZ(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-static {}, Lcom/miui/optimizemanage/a/a;->Aa()J

    move-result-wide v8

    const-string/jumbo v2, "RunningProcFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cleanedMemory elapsed time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-direct/range {p0 .. p0}, Lcom/miui/optimizemanage/memoryclean/l;->xF()Ljava/util/Set;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/optimizemanage/memoryclean/b;

    iget-object v3, v2, Lcom/miui/optimizemanage/memoryclean/b;->vY:[I

    if-nez v3, :cond_2

    const/4 v5, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    iget-object v3, v2, Lcom/miui/optimizemanage/memoryclean/b;->vV:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_d

    iget-object v3, v2, Lcom/miui/optimizemanage/memoryclean/b;->vV:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/miui/optimizemanage/memoryclean/b;->wc:Z

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/optimizemanage/memoryclean/l;->mContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/miui/optimizemanage/memoryclean/b;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/miui/enterprise/ApplicationHelper;->shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "Enterprise"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, Lcom/miui/optimizemanage/memoryclean/b;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " should keep alive"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    iget-object v3, v2, Lcom/miui/optimizemanage/memoryclean/b;->packageName:Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/optimizemanage/memoryclean/l;->mContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/miui/optimizemanage/memoryclean/b;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/miui/optimizemanage/a/a;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    :goto_3
    iput-boolean v3, v2, Lcom/miui/optimizemanage/memoryclean/b;->wc:Z

    iget-boolean v3, v2, Lcom/miui/optimizemanage/memoryclean/b;->wc:Z

    if-nez v3, :cond_5

    iget-boolean v3, v2, Lcom/miui/optimizemanage/memoryclean/b;->isCached:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    iget-object v3, v2, Lcom/miui/optimizemanage/memoryclean/b;->vY:[I

    invoke-static {v3}, Lmiui/securitycenter/utils/SecurityCenterHelper;->getProcessPss([I)[J

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v3, 0x0

    :goto_4
    array-length v5, v4

    if-ge v3, v5, :cond_6

    iget-wide v14, v2, Lcom/miui/optimizemanage/memoryclean/b;->wb:J

    aget-wide v16, v4, v3

    const-wide/16 v18, 0x400

    mul-long v16, v16, v18

    add-long v14, v14, v16

    iput-wide v14, v2, Lcom/miui/optimizemanage/memoryclean/b;->wb:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    iget-wide v4, v2, Lcom/miui/optimizemanage/memoryclean/b;->wb:J

    const-wide/16 v14, 0x0

    cmp-long v3, v4, v14

    if-gtz v3, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_7
    const-wide/16 v4, 0x0

    cmp-long v3, v8, v4

    if-eqz v3, :cond_0

    const-wide/32 v4, 0x1d4c0

    cmp-long v3, v8, v4

    if-gez v3, :cond_0

    iget-boolean v3, v2, Lcom/miui/optimizemanage/memoryclean/b;->vU:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/miui/optimizemanage/memoryclean/b;->vZ:[J

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    const/4 v3, 0x1

    :goto_5
    iget-object v13, v2, Lcom/miui/optimizemanage/memoryclean/b;->vZ:[J

    array-length v13, v13

    if-ge v3, v13, :cond_9

    iget-object v13, v2, Lcom/miui/optimizemanage/memoryclean/b;->vZ:[J

    aget-wide v14, v13, v3

    cmp-long v13, v4, v14

    if-lez v13, :cond_8

    iget-object v4, v2, Lcom/miui/optimizemanage/memoryclean/b;->vZ:[J

    aget-wide v4, v4, v3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    const-wide/16 v14, 0x0

    cmp-long v3, v4, v14

    if-eqz v3, :cond_0

    sub-long v4, v10, v4

    cmp-long v3, v4, v8

    if-lez v3, :cond_a

    iget-object v3, v2, Lcom/miui/optimizemanage/memoryclean/b;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/miui/optimizemanage/memoryclean/l;->xG(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_b

    :cond_a
    cmp-long v3, v4, v8

    if-gez v3, :cond_0

    iget-boolean v2, v2, Lcom/miui/optimizemanage/memoryclean/b;->vW:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_c
    return-object p1

    :cond_d
    move v2, v5

    goto/16 :goto_2
.end method

.method public xE(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/l;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "proc_filter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "locked_pkg_list"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
