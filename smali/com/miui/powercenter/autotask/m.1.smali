.class public Lcom/miui/powercenter/autotask/m;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aXg(Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/powercenter/autotask/m;->aXh(Lcom/miui/powercenter/autotask/AutoTask;Z)V

    return-void
.end method

.method public static aXh(Lcom/miui/powercenter/autotask/AutoTask;Z)V
    .locals 13

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    const-string/jumbo v0, "OperationsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Apply task id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-static {}, Lcom/miui/powercenter/autotask/m;->aXn()Z

    move-result v0

    move v1, v0

    :goto_0
    invoke-static {}, Lcom/miui/powercenter/a/k;->bck()Z

    move-result v7

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->aYt()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v8

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/miui/powercenter/autotask/m;->aXp()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    xor-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->aYg()Ljava/util/List;

    move-result-object v10

    new-instance v0, Lcom/miui/powercenter/autotask/n;

    invoke-direct {v0, v3}, Lcom/miui/powercenter/autotask/n;-><init>(Lcom/miui/powercenter/autotask/n;)V

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    move v6, v5

    move v4, v5

    :goto_1
    if-ge v6, v11, :cond_9

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/m;->aXl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {p0, v0, v12}, Lcom/miui/powercenter/autotask/AutoTask;->aYw(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v12, "airplane_mode"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move v3, v2

    :goto_2
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v3

    move-object v3, v0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v4, v5

    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->aXU()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->aYa()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0, v5}, Lcom/miui/powercenter/autotask/AutoTask;->setEnabled(Z)V

    :cond_3
    invoke-static {v8, p0}, Lcom/miui/powercenter/autotask/f;->aVQ(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)V

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v0

    invoke-static {v8, v0, v1}, Lcom/miui/powercenter/autotask/c;->aVe(Landroid/content/Context;J)V

    :cond_4
    if-eqz v7, :cond_a

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v0

    invoke-static {v8, v0, v1}, Lcom/miui/powercenter/autotask/c;->aVi(Landroid/content/Context;J)V

    :cond_5
    :goto_4
    const-wide/16 v0, 0x0

    if-eqz v4, :cond_6

    invoke-static {v3}, Lcom/miui/powercenter/autotask/m;->aXi(Ljava/lang/Object;)V

    const-wide/16 v0, 0x3e8

    :cond_6
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v9, v0, v1}, Lcom/miui/powercenter/autotask/m;->aXk(Ljava/util/Map;J)V

    :cond_7
    return-void

    :cond_8
    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v9, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    move v3, v4

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->aYa()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/miui/powercenter/autotask/AutoTask;->aYs(Z)V

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/miui/powercenter/autotask/m;->aXp()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v8, p0}, Lcom/miui/powercenter/autotask/w;->aYL(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v6

    invoke-static {v8, v0, v6, v7}, Lcom/miui/powercenter/autotask/c;->aVk(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_4

    :cond_b
    move v4, v5

    goto :goto_3
.end method

.method private static aXi(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lcom/miui/powercenter/autotask/N;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/N;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/N;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static aXj(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "airplane_mode"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/miui/powercenter/a/h;->bby(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "auto_clean_memory"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Lcom/miui/powercenter/a;->beY(I)V

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "bluetooth"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v2, v0}, Lcom/miui/powercenter/a/h;->bbz(Z)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    const-string/jumbo v2, "brightness"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    check-cast p1, Ljava/lang/Integer;

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/a/h;->bbw(I)V

    goto :goto_1

    :cond_6
    const-string/jumbo v2, "gps"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    check-cast p1, Ljava/lang/Integer;

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/powercenter/a/a;->baP(Landroid/content/Context;I)V

    goto :goto_1

    :cond_7
    const-string/jumbo v2, "internet"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    check-cast p1, Ljava/lang/Integer;

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/a/h;->bbA(I)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v2, "sleep"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    check-cast p1, Ljava/lang/Integer;

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/a/h;->bbB(I)V

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v2, "synchronization"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_a

    :goto_3
    invoke-virtual {v2, v0}, Lcom/miui/powercenter/a/h;->bbC(Z)V

    goto/16 :goto_1

    :cond_a
    move v0, v1

    goto :goto_3

    :cond_b
    const-string/jumbo v2, "vibration"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_c

    :goto_4
    invoke-virtual {v2, v0}, Lcom/miui/powercenter/a/h;->bbD(Z)V

    goto/16 :goto_1

    :cond_c
    move v0, v1

    goto :goto_4

    :cond_d
    const-string/jumbo v2, "wifi"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_e

    :goto_5
    invoke-virtual {v2, v0}, Lcom/miui/powercenter/a/h;->bbE(Z)V

    goto/16 :goto_1

    :cond_e
    move v0, v1

    goto :goto_5

    :cond_f
    const-string/jumbo v2, "mute"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_10

    :goto_6
    invoke-virtual {v2, v0}, Lcom/miui/powercenter/a/h;->bbF(Z)V

    goto/16 :goto_1

    :cond_10
    move v0, v1

    goto :goto_6

    :cond_11
    const-string/jumbo v2, "auto_brightness"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_12

    :goto_7
    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/a/h;->bbG(I)V

    goto/16 :goto_1

    :cond_12
    move v1, v0

    goto :goto_7

    :cond_13
    const-string/jumbo v2, "save_mode"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_14

    :goto_8
    invoke-static {v2, v0}, Lcom/miui/powercenter/a/a;->baR(Landroid/content/Context;Z)V

    goto/16 :goto_1

    :cond_14
    move v0, v1

    goto :goto_8
.end method

.method private static aXk(Ljava/util/Map;J)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/powercenter/autotask/O;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/autotask/O;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static aXl(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "airplane_mode"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/powercenter/a/h;->bbH()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "auto_clean_memory"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/miui/powercenter/a;->beZ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v2, "bluetooth"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/powercenter/a/h;->bbI()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "brightness"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/a/h;->bbx()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_5
    const-string/jumbo v2, "gps"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/a/a;->baG(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_6
    const-string/jumbo v2, "internet"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/powercenter/a/h;->bbJ()Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    const-string/jumbo v2, "sleep"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/a/h;->bbK()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_9
    const-string/jumbo v2, "synchronization"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/powercenter/a/h;->bbL()Z

    move-result v2

    if-eqz v2, :cond_a

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_a
    move v0, v1

    goto :goto_3

    :cond_b
    const-string/jumbo v2, "vibration"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/powercenter/a/h;->bbM()Z

    move-result v2

    if-eqz v2, :cond_c

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_c
    move v0, v1

    goto :goto_4

    :cond_d
    const-string/jumbo v2, "wifi"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/powercenter/a/h;->bbN()Z

    move-result v2

    if-eqz v2, :cond_e

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_e
    move v0, v1

    goto :goto_5

    :cond_f
    const-string/jumbo v2, "mute"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/powercenter/a/h;->bbO()Z

    move-result v2

    if-eqz v2, :cond_10

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_10
    move v0, v1

    goto :goto_6

    :cond_11
    const-string/jumbo v2, "auto_brightness"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/a/h;->bbP()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_12
    const-string/jumbo v2, "save_mode"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/powercenter/a/a;->baL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_13

    :goto_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_13
    move v0, v1

    goto :goto_7

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static aXm(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "brightness"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static aXn()Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Lcom/miui/securitycenter/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static aXo(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v3, 0x0

    const-string/jumbo v1, "OperationsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Restore task id "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/miui/powercenter/autotask/m;->aXp()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->aYx()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/miui/powercenter/autotask/n;

    invoke-direct {v2, v0}, Lcom/miui/powercenter/autotask/n;-><init>(Lcom/miui/powercenter/autotask/n;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    move v2, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0, v0}, Lcom/miui/powercenter/autotask/m;->aXm(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v0}, Lcom/miui/powercenter/autotask/m;->aXl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_0
    const-string/jumbo v5, "airplane_mode"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYy(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    move v1, v2

    :goto_1
    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYy(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    move v1, v2

    goto :goto_1

    :cond_2
    move-object v1, v0

    move v2, v3

    :cond_3
    invoke-virtual {p1, v3}, Lcom/miui/powercenter/autotask/AutoTask;->aYs(Z)V

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->aYt()V

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->aXU()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1, v3}, Lcom/miui/powercenter/autotask/AutoTask;->setEnabled(Z)V

    :cond_4
    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/powercenter/autotask/f;->aVQ(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)V

    invoke-static {}, Lcom/miui/powercenter/autotask/m;->aXp()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/powercenter/autotask/w;->aYL(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miui/powercenter/autotask/c;->aVl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    const-wide/16 v4, 0x0

    if-eqz v2, :cond_7

    invoke-static {v1}, Lcom/miui/powercenter/autotask/m;->aXi(Ljava/lang/Object;)V

    const-wide/16 v0, 0x3e8

    :goto_2
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v6, v0, v1}, Lcom/miui/powercenter/autotask/m;->aXk(Ljava/util/Map;J)V

    :cond_6
    return-void

    :cond_7
    move-wide v0, v4

    goto :goto_2

    :cond_8
    move-object v0, v1

    move v1, v2

    goto :goto_1
.end method

.method private static aXp()Z
    .locals 1

    invoke-static {}, Lcom/miui/powercenter/a/f;->bbn()Z

    move-result v0

    return v0
.end method

.method static synthetic aXq(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/powercenter/autotask/m;->aXj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
