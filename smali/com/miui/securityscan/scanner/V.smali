.class final Lcom/miui/securityscan/scanner/V;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Fi:Lcom/miui/securityscan/scanner/p;

.field final synthetic Fj:Lcom/miui/securitycenter/memory/e;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/p;Lcom/miui/securitycenter/memory/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/V;->Fi:Lcom/miui/securityscan/scanner/p;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/V;->Fj:Lcom/miui/securitycenter/memory/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/securityscan/scanner/V;->Fj:Lcom/miui/securitycenter/memory/e;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/securityscan/scanner/V;->Fj:Lcom/miui/securitycenter/memory/e;

    invoke-interface {v2}, Lcom/miui/securitycenter/memory/e;->EQ()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/securityscan/scanner/V;->Fi:Lcom/miui/securityscan/scanner/p;

    invoke-static {v2}, Lcom/miui/securityscan/scanner/p;->EK(Lcom/miui/securityscan/scanner/p;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/securityscan/scanner/p;->EN(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    invoke-static {}, Lcom/miui/common/b/f;->aHO()I

    move-result v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/securityscan/scanner/V;->Fi:Lcom/miui/securityscan/scanner/p;

    invoke-static {v3}, Lcom/miui/securityscan/scanner/p;->EJ(Lcom/miui/securityscan/scanner/p;)Landroid/app/ActivityManager;

    move-result-object v3

    const/16 v9, 0x3e9

    invoke-virtual {v3, v9, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/securityscan/scanner/V;->Fi:Lcom/miui/securityscan/scanner/p;

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-static {v3, v2}, Lcom/miui/securityscan/scanner/p;->EL(Lcom/miui/securityscan/scanner/p;Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v10, v2, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/securityscan/scanner/V;->Fi:Lcom/miui/securityscan/scanner/p;

    invoke-static {v11, v2}, Lcom/miui/securityscan/scanner/p;->EL(Lcom/miui/securityscan/scanner/p;Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v11, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_5

    iget-object v11, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v11, :cond_5

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/securityscan/scanner/V;->Fi:Lcom/miui/securityscan/scanner/p;

    invoke-static {v11}, Lcom/miui/securityscan/scanner/p;->EK(Lcom/miui/securityscan/scanner/p;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v2}, Lcom/miui/common/b/k;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_3

    if-eq v10, v7, :cond_2

    const/16 v11, 0x3e7

    if-ne v10, v11, :cond_3

    if-nez v7, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/securityscan/scanner/V;->Fi:Lcom/miui/securityscan/scanner/p;

    invoke-static {v11}, Lcom/miui/securityscan/scanner/p;->EK(Lcom/miui/securityscan/scanner/p;)Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v2, v12}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/miui/securitycenter/memory/a;

    invoke-direct {v12}, Lcom/miui/securitycenter/memory/a;-><init>()V

    invoke-virtual {v12, v2}, Lcom/miui/securitycenter/memory/a;->setPackageName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/securityscan/scanner/V;->Fi:Lcom/miui/securityscan/scanner/p;

    invoke-static {v13, v2, v10}, Lcom/miui/securityscan/scanner/p;->EM(Lcom/miui/securityscan/scanner/p;Ljava/lang/String;I)Landroid/util/SparseBooleanArray;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/miui/securitycenter/memory/a;->bpE(Landroid/util/SparseBooleanArray;)V

    const-wide/16 v14, 0x0

    invoke-virtual {v12, v14, v15}, Lcom/miui/securitycenter/memory/a;->bpF(J)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/securityscan/scanner/V;->Fi:Lcom/miui/securityscan/scanner/p;

    invoke-static {v13}, Lcom/miui/securityscan/scanner/p;->EK(Lcom/miui/securityscan/scanner/p;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v2}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/miui/securitycenter/memory/a;->bpD(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Lcom/miui/securitycenter/memory/a;->bpH(I)V

    invoke-virtual {v12, v11}, Lcom/miui/securitycenter/memory/a;->bpG(Ljava/lang/String;)V

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/securityscan/scanner/V;->Fj:Lcom/miui/securitycenter/memory/e;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/securityscan/scanner/V;->Fj:Lcom/miui/securitycenter/memory/e;

    invoke-interface {v2}, Lcom/miui/securitycenter/memory/e;->EO()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/securityscan/scanner/V;->Fj:Lcom/miui/securitycenter/memory/e;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/securityscan/scanner/V;->Fj:Lcom/miui/securitycenter/memory/e;

    invoke-interface {v2, v4}, Lcom/miui/securitycenter/memory/e;->EP(Ljava/util/List;)V

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_0

    :cond_6
    :try_start_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/securityscan/scanner/V;->Fi:Lcom/miui/securityscan/scanner/p;

    invoke-static {v2}, Lcom/miui/securityscan/scanner/p;->EJ(Lcom/miui/securityscan/scanner/p;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v3, v3, v11

    :goto_1
    const/4 v11, 0x1

    new-array v11, v11, [I

    iget v12, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    const/4 v13, 0x0

    aput v12, v11, v13

    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v11}, Lmiui/securitycenter/utils/SecurityCenterHelper;->getProcessPss([I)[J

    move-result-object v11

    if-eqz v3, :cond_7

    invoke-static {v2}, Lcom/miui/common/b/f;->aHR(I)I

    move-result v12

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/securityscan/scanner/V;->Fi:Lcom/miui/securityscan/scanner/p;

    invoke-static {v2}, Lcom/miui/securityscan/scanner/p;->EK(Lcom/miui/securityscan/scanner/p;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/miui/common/b/k;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    if-eq v12, v7, :cond_8

    const/16 v2, 0x3e7

    if-ne v12, v2, :cond_7

    if-nez v7, :cond_7

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/securityscan/scanner/V;->Fi:Lcom/miui/securityscan/scanner/p;

    invoke-static {v2}, Lcom/miui/securityscan/scanner/p;->EK(Lcom/miui/securityscan/scanner/p;)Landroid/content/Context;

    move-result-object v2

    const/4 v13, 0x0

    invoke-static {v2, v3, v13}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v13, "_"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securitycenter/memory/a;

    const/4 v14, 0x0

    aget-wide v14, v11, v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    if-nez v2, :cond_9

    new-instance v2, Lcom/miui/securitycenter/memory/a;

    invoke-direct {v2}, Lcom/miui/securitycenter/memory/a;-><init>()V

    invoke-virtual {v2, v3}, Lcom/miui/securitycenter/memory/a;->setPackageName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/securityscan/scanner/V;->Fi:Lcom/miui/securityscan/scanner/p;

    invoke-static {v11, v3, v12}, Lcom/miui/securityscan/scanner/p;->EM(Lcom/miui/securityscan/scanner/p;Ljava/lang/String;I)Landroid/util/SparseBooleanArray;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/miui/securitycenter/memory/a;->bpE(Landroid/util/SparseBooleanArray;)V

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/miui/securitycenter/memory/a;->bpF(J)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/securityscan/scanner/V;->Fi:Lcom/miui/securityscan/scanner/p;

    invoke-static {v11}, Lcom/miui/securityscan/scanner/p;->EK(Lcom/miui/securityscan/scanner/p;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v3}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/securitycenter/memory/a;->bpD(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Lcom/miui/securitycenter/memory/a;->bpH(I)V

    invoke-virtual {v2, v13}, Lcom/miui/securitycenter/memory/a;->bpG(Ljava/lang/String;)V

    invoke-interface {v9, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-interface {v9, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lcom/miui/securitycenter/memory/a;->bpA()J

    move-result-wide v12

    add-long/2addr v12, v14

    invoke-virtual {v2, v12, v13}, Lcom/miui/securitycenter/memory/a;->bpF(J)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/securityscan/scanner/V;->Fj:Lcom/miui/securitycenter/memory/e;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/securityscan/scanner/V;->Fj:Lcom/miui/securitycenter/memory/e;

    invoke-interface {v2}, Lcom/miui/securitycenter/memory/e;->EO()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/securityscan/scanner/V;->Fj:Lcom/miui/securitycenter/memory/e;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/securityscan/scanner/V;->Fj:Lcom/miui/securitycenter/memory/e;

    invoke-interface {v2, v4}, Lcom/miui/securitycenter/memory/e;->EP(Ljava/util/List;)V

    :cond_b
    return-void

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_d
    :try_start_2
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securitycenter/memory/a;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_3
    const-string/jumbo v3, "MemoryCheckManager"

    const-string/jumbo v5, "startScan:"

    invoke-static {v3, v5, v2}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/securityscan/scanner/V;->Fj:Lcom/miui/securitycenter/memory/e;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/securityscan/scanner/V;->Fj:Lcom/miui/securitycenter/memory/e;

    invoke-interface {v2, v4}, Lcom/miui/securitycenter/memory/e;->EP(Ljava/util/List;)V

    :cond_e
    :goto_3
    return-void

    :cond_f
    :try_start_4
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securitycenter/memory/a;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/securityscan/scanner/V;->Fj:Lcom/miui/securitycenter/memory/e;

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/securityscan/scanner/V;->Fj:Lcom/miui/securitycenter/memory/e;

    invoke-interface {v3, v4}, Lcom/miui/securitycenter/memory/e;->EP(Ljava/util/List;)V

    :cond_11
    throw v2

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/securityscan/scanner/V;->Fj:Lcom/miui/securitycenter/memory/e;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/securityscan/scanner/V;->Fj:Lcom/miui/securitycenter/memory/e;

    invoke-interface {v2, v4}, Lcom/miui/securitycenter/memory/e;->EP(Ljava/util/List;)V

    goto :goto_3
.end method
