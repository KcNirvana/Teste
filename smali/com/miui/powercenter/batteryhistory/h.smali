.class public Lcom/miui/powercenter/batteryhistory/h;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized aTO(Lcom/miui/powercenter/batteryhistory/e;Ljava/util/List;IZ)V
    .locals 20

    const-class v12, Lcom/miui/powercenter/batteryhistory/h;

    monitor-enter v12

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    monitor-exit v12

    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/batteryhistory/d;

    invoke-virtual {v2}, Lcom/miui/powercenter/batteryhistory/d;->aTD()J

    move-result-wide v14

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/batteryhistory/d;

    invoke-virtual {v2}, Lcom/miui/powercenter/batteryhistory/d;->aTD()J

    move-result-wide v2

    sub-long/2addr v2, v14

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_12

    const-wide/16 v2, 0x1

    move-wide v10, v2

    :goto_0
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/batteryhistory/d;

    invoke-virtual {v2}, Lcom/miui/powercenter/batteryhistory/d;->aTE()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Lcom/miui/powercenter/batteryhistory/d;->aTD()J

    move-result-wide v16

    sub-long v16, v16, v14

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    div-long v16, v16, v10

    move-wide/from16 v0, v16

    long-to-int v3, v0

    if-eqz p3, :cond_2

    sub-int v3, p2, v3

    :cond_2
    iget-boolean v9, v2, Lcom/miui/powercenter/batteryhistory/d;->aHf:Z

    if-eq v9, v4, :cond_3

    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/e;->aHo:Landroid/graphics/Path;

    int-to-float v0, v3

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/powercenter/batteryhistory/e;->aHn:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_2
    move v4, v9

    :cond_3
    iget-boolean v9, v2, Lcom/miui/powercenter/batteryhistory/d;->aHk:Z

    if-eq v9, v5, :cond_4

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/e;->aHu:Landroid/graphics/Path;

    int-to-float v0, v3

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/powercenter/batteryhistory/e;->aHt:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_3
    move v5, v9

    :cond_4
    iget-boolean v9, v2, Lcom/miui/powercenter/batteryhistory/d;->aHi:Z

    if-eq v9, v6, :cond_5

    if-eqz v9, :cond_a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/powercenter/batteryhistory/e;->aHs:Landroid/graphics/Path;

    int-to-float v0, v3

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/powercenter/batteryhistory/e;->aHr:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_4
    move v6, v9

    :cond_5
    iget-boolean v9, v2, Lcom/miui/powercenter/batteryhistory/d;->aHm:Z

    if-eq v9, v7, :cond_6

    if-eqz v9, :cond_b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/powercenter/batteryhistory/e;->aHx:Landroid/graphics/Path;

    int-to-float v0, v3

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/powercenter/batteryhistory/e;->aHw:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_5
    move v7, v9

    :cond_6
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x13

    move/from16 v0, v16

    if-le v9, v0, :cond_c

    iget-boolean v9, v2, Lcom/miui/powercenter/batteryhistory/d;->aHh:Z

    iget-boolean v0, v2, Lcom/miui/powercenter/batteryhistory/d;->aHk:Z

    move/from16 v16, v0

    or-int v9, v9, v16

    :goto_6
    if-eq v9, v8, :cond_7

    if-eqz v9, :cond_d

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/powercenter/batteryhistory/e;->aHq:Landroid/graphics/Path;

    int-to-float v0, v3

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/powercenter/batteryhistory/e;->aHp:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_7
    move v8, v9

    :cond_7
    iget v2, v2, Lcom/miui/powercenter/batteryhistory/d;->aHj:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/powercenter/batteryhistory/e;->aHv:Lcom/miui/powercenter/batteryhistory/k;

    invoke-virtual {v9, v3, v2}, Lcom/miui/powercenter/batteryhistory/k;->aTZ(II)V

    move v2, v3

    :goto_8
    move v9, v2

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/e;->aHo:Landroid/graphics/Path;

    int-to-float v0, v3

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/powercenter/batteryhistory/e;->aHn:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v12

    throw v2

    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/e;->aHu:Landroid/graphics/Path;

    int-to-float v0, v3

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/powercenter/batteryhistory/e;->aHt:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/powercenter/batteryhistory/e;->aHs:Landroid/graphics/Path;

    int-to-float v0, v3

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/powercenter/batteryhistory/e;->aHr:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/powercenter/batteryhistory/e;->aHx:Landroid/graphics/Path;

    int-to-float v0, v3

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/powercenter/batteryhistory/e;->aHw:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    :cond_c
    iget-boolean v9, v2, Lcom/miui/powercenter/batteryhistory/d;->aHl:Z

    iget-boolean v0, v2, Lcom/miui/powercenter/batteryhistory/d;->aHk:Z

    move/from16 v16, v0

    or-int v9, v9, v16

    goto/16 :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/powercenter/batteryhistory/e;->aHq:Landroid/graphics/Path;

    int-to-float v0, v3

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/powercenter/batteryhistory/e;->aHp:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_7

    :cond_e
    invoke-virtual {v2}, Lcom/miui/powercenter/batteryhistory/d;->aTF()Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x0

    if-eqz v2, :cond_11

    add-int/lit8 v3, v9, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/miui/powercenter/batteryhistory/h;->aTP(Lcom/miui/powercenter/batteryhistory/e;IZZZZZ)V

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    move v2, v9

    goto/16 :goto_8

    :cond_f
    if-eqz p3, :cond_10

    const/4 v3, 0x0

    :goto_9
    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/miui/powercenter/batteryhistory/h;->aTP(Lcom/miui/powercenter/batteryhistory/e;IZZZZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v12

    return-void

    :cond_10
    move/from16 v3, p2

    goto :goto_9

    :cond_11
    move v2, v9

    goto/16 :goto_8

    :cond_12
    move-wide v10, v2

    goto/16 :goto_0
.end method

.method private static aTP(Lcom/miui/powercenter/batteryhistory/e;IZZZZZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/e;->aHo:Landroid/graphics/Path;

    int-to-float v1, p1

    iget v2, p0, Lcom/miui/powercenter/batteryhistory/e;->aHn:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/e;->aHu:Landroid/graphics/Path;

    int-to-float v1, p1

    iget v2, p0, Lcom/miui/powercenter/batteryhistory/e;->aHt:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_1
    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/e;->aHs:Landroid/graphics/Path;

    int-to-float v1, p1

    iget v2, p0, Lcom/miui/powercenter/batteryhistory/e;->aHr:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_2
    if-eqz p5, :cond_3

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/e;->aHx:Landroid/graphics/Path;

    int-to-float v1, p1

    iget v2, p0, Lcom/miui/powercenter/batteryhistory/e;->aHw:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_3
    if-eqz p6, :cond_4

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/e;->aHq:Landroid/graphics/Path;

    int-to-float v1, p1

    iget v2, p0, Lcom/miui/powercenter/batteryhistory/e;->aHp:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_4
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/e;->aHv:Lcom/miui/powercenter/batteryhistory/k;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/batteryhistory/k;->aUa(I)V

    return-void
.end method
