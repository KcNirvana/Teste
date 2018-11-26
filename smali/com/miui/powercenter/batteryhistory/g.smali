.class public Lcom/miui/powercenter/batteryhistory/g;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aTL(Landroid/content/Context;Ljava/util/List;)J
    .locals 7

    invoke-static {p0, p1}, Lcom/miui/powercenter/batteryhistory/g;->aTM(Landroid/content/Context;Ljava/util/List;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/miui/powercenter/batteryhistory/g;->aTN(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/32 v4, 0xf731400

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    const-string/jumbo v2, "BatteryLeftUsageTime"

    const-string/jumbo v3, "use history time"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :cond_0
    const-string/jumbo v4, "BatteryLeftUsageTime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Use theory time, history "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " theory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2
.end method

.method private static aTM(Landroid/content/Context;Ljava/util/List;)J
    .locals 32

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const-wide/16 v12, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move/from16 v17, v16

    move/from16 v16, v15

    move/from16 v28, v8

    move/from16 v29, v9

    move-wide v8, v6

    move/from16 v7, v28

    move v6, v3

    move/from16 v30, v14

    move-wide v14, v12

    move/from16 v12, v29

    move/from16 v13, v30

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/batteryhistory/d;

    invoke-virtual {v2}, Lcom/miui/powercenter/batteryhistory/d;->aTD()J

    move-result-wide v18

    iget-byte v3, v2, Lcom/miui/powercenter/batteryhistory/d;->aHa:B

    iget-byte v0, v2, Lcom/miui/powercenter/batteryhistory/d;->aHc:B

    move/from16 v22, v0

    invoke-virtual {v2}, Lcom/miui/powercenter/batteryhistory/d;->aTE()Z

    move-result v20

    if-eqz v20, :cond_c

    if-nez v17, :cond_2

    const/16 v20, 0x2

    move/from16 v0, v22

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v20, 0x5

    move/from16 v0, v22

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    :cond_0
    move v2, v6

    move-wide/from16 v28, v8

    move v8, v7

    move v9, v12

    move-wide/from16 v6, v28

    move-wide/from16 v30, v14

    move v14, v13

    move/from16 v15, v16

    move-wide/from16 v12, v30

    move/from16 v16, v17

    :goto_1
    move/from16 v17, v16

    move/from16 v16, v15

    move-wide/from16 v28, v6

    move v7, v8

    move v6, v2

    move v2, v3

    move-wide/from16 v30, v12

    move v13, v14

    move v12, v9

    move-wide/from16 v8, v28

    move-wide/from16 v14, v30

    goto :goto_0

    :cond_1
    const/16 v17, 0x1

    move-wide/from16 v14, v18

    move v13, v3

    :cond_2
    iget-boolean v0, v2, Lcom/miui/powercenter/batteryhistory/d;->aHk:Z

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    if-eqz v20, :cond_6

    sub-long v24, v18, v4

    const-wide/32 v26, 0x1b7740

    cmp-long v2, v24, v26

    if-lez v2, :cond_4

    const-wide/16 v24, 0x0

    cmp-long v2, v4, v24

    if-lez v2, :cond_4

    if-le v13, v6, :cond_3

    cmp-long v2, v4, v14

    if-lez v2, :cond_3

    sub-int v2, v13, v6

    add-int/2addr v12, v2

    sub-long/2addr v4, v14

    add-long/2addr v10, v4

    :cond_3
    move-wide/from16 v14, v18

    move v13, v3

    :cond_4
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    :goto_2
    move v6, v2

    move/from16 v16, v20

    move v2, v12

    move-wide/from16 v28, v10

    move-wide v10, v4

    move-wide/from16 v4, v28

    :goto_3
    const/4 v12, 0x2

    move/from16 v0, v22

    if-ne v0, v12, :cond_d

    const-wide/16 v22, 0x0

    cmp-long v12, v10, v22

    if-lez v12, :cond_7

    sub-long v22, v18, v10

    const-wide/32 v24, 0x1b7740

    cmp-long v12, v22, v24

    if-lez v12, :cond_7

    if-le v13, v6, :cond_5

    cmp-long v12, v10, v14

    if-lez v12, :cond_5

    sub-int v6, v13, v6

    add-int/2addr v2, v6

    sub-long/2addr v10, v14

    add-long/2addr v4, v10

    :cond_5
    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    move-wide/from16 v28, v10

    move-wide v10, v4

    move-wide/from16 v4, v28

    move/from16 v30, v6

    move v6, v2

    move/from16 v2, v30

    :goto_4
    const/16 v17, 0x0

    const-wide/16 v14, 0x0

    const/4 v13, 0x0

    move v12, v6

    move v6, v2

    :goto_5
    if-eq v7, v3, :cond_c

    move v2, v6

    move v8, v3

    move v9, v12

    move-wide/from16 v6, v18

    move-wide/from16 v28, v14

    move v14, v13

    move/from16 v15, v16

    move-wide/from16 v12, v28

    move/from16 v16, v17

    goto/16 :goto_1

    :cond_6
    move-wide/from16 v4, v18

    move v2, v3

    goto :goto_2

    :cond_7
    if-le v13, v3, :cond_8

    cmp-long v12, v18, v14

    if-lez v12, :cond_8

    sub-int v12, v13, v3

    add-int/2addr v2, v12

    sub-long v12, v18, v14

    add-long/2addr v4, v12

    move-wide/from16 v28, v10

    move-wide v10, v4

    move-wide/from16 v4, v28

    move/from16 v30, v6

    move v6, v2

    move/from16 v2, v30

    goto :goto_4

    :cond_8
    move-wide/from16 v28, v10

    move-wide v10, v4

    move-wide/from16 v4, v28

    move/from16 v30, v6

    move v6, v2

    move/from16 v2, v30

    goto :goto_4

    :cond_9
    if-eqz v17, :cond_a

    if-le v13, v2, :cond_a

    cmp-long v3, v8, v14

    if-lez v3, :cond_a

    sub-int v2, v13, v2

    add-int/2addr v12, v2

    sub-long v2, v8, v14

    add-long/2addr v10, v2

    :cond_a
    const-wide/32 v2, 0x493e0

    cmp-long v2, v10, v2

    if-lez v2, :cond_b

    const/4 v2, 0x2

    if-le v12, v2, :cond_b

    invoke-static/range {p0 .. p0}, Lcom/miui/powercenter/a/a;->baC(Landroid/content/Context;)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v10

    int-to-long v4, v12

    div-long/2addr v2, v4

    return-wide v2

    :cond_b
    const-wide/16 v2, 0x0

    return-wide v2

    :cond_c
    move v2, v6

    move-wide/from16 v28, v8

    move v8, v7

    move v9, v12

    move-wide/from16 v6, v28

    move-wide/from16 v30, v14

    move v14, v13

    move/from16 v15, v16

    move-wide/from16 v12, v30

    move/from16 v16, v17

    goto/16 :goto_1

    :cond_d
    move v12, v2

    move-wide/from16 v28, v4

    move-wide v4, v10

    move-wide/from16 v10, v28

    goto :goto_5

    :cond_e
    move v2, v12

    move-wide/from16 v28, v10

    move-wide v10, v4

    move-wide/from16 v4, v28

    goto/16 :goto_3
.end method

.method private static aTN(Landroid/content/Context;)J
    .locals 6

    const-wide/16 v4, 0x3c

    invoke-static {p0}, Lcom/miui/powercenter/a/a;->baA(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0}, Lcom/miui/powercenter/a/a;->baC(Landroid/content/Context;)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    mul-long/2addr v0, v4

    mul-long/2addr v0, v4

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    div-long/2addr v0, v2

    return-wide v0
.end method
