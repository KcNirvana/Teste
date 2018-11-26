.class public Lcom/miui/powercenter/b/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bcY(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/autotask/AutoTask;->aYh(Lcom/miui/powercenter/autotask/AutoTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/autotask/AutoTask;->aYi(Lcom/miui/powercenter/autotask/AutoTask;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static bcZ(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lcom/miui/powercenter/b/a;->bcY(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->aXT()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "changed_on"

    return-object v0

    :cond_0
    const-string/jumbo v0, "keep_on"

    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    const-string/jumbo v0, "changed_off"

    return-object v0

    :cond_2
    const-string/jumbo v0, "keep_off"

    return-object v0
.end method

.method public static bda()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "click_done"

    const-string/jumbo v2, "change_premiss"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "auto_change_action"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bdb()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "click_done"

    const-string/jumbo v2, "change_name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "auto_change_action"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bdc()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "click_done"

    const-string/jumbo v2, "change_action"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "auto_change_action"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bdd()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "click_undone"

    const-string/jumbo v2, "change_premiss"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "auto_change_action"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bde()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "click_undone"

    const-string/jumbo v2, "change_name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "auto_change_action"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bdf()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "click_undone"

    const-string/jumbo v2, "change_action"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "auto_change_action"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bdg()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "finish_or_not"

    const-string/jumbo v2, "finish"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "auto_change_action"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bdh()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "finish_or_not"

    const-string/jumbo v2, "not_finish"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "auto_change_action"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static bdi(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "auto_homepage_action"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bdj()V
    .locals 1

    const-string/jumbo v0, "on_off"

    invoke-static {v0}, Lcom/miui/powercenter/b/a;->bdi(Ljava/lang/String;)V

    return-void
.end method

.method public static bdk()V
    .locals 1

    const-string/jumbo v0, "task1"

    invoke-static {v0}, Lcom/miui/powercenter/b/a;->bdi(Ljava/lang/String;)V

    return-void
.end method

.method public static bdl()V
    .locals 1

    const-string/jumbo v0, "task2"

    invoke-static {v0}, Lcom/miui/powercenter/b/a;->bdi(Ljava/lang/String;)V

    return-void
.end method

.method public static bdm()V
    .locals 1

    const-string/jumbo v0, "task_custom"

    invoke-static {v0}, Lcom/miui/powercenter/b/a;->bdi(Ljava/lang/String;)V

    return-void
.end method

.method public static bdn()V
    .locals 1

    const-string/jumbo v0, "new_task"

    invoke-static {v0}, Lcom/miui/powercenter/b/a;->bdi(Ljava/lang/String;)V

    return-void
.end method

.method public static bdo()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "click_undone"

    const-string/jumbo v2, "change_premiss"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "auto_new_action"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bdp()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "click_undone"

    const-string/jumbo v2, "change_name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "auto_new_action"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bdq()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "click_undone"

    const-string/jumbo v2, "change_action"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "auto_new_action"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bdr(Landroid/content/Context;)V
    .locals 43

    const-string/jumbo v34, "off"

    const-string/jumbo v33, "deleted"

    const-string/jumbo v32, "deleted"

    const/16 v31, 0x0

    const/16 v30, 0x0

    const/16 v29, 0x0

    const/16 v28, 0x0

    const/16 v27, 0x0

    const/16 v26, 0x0

    const/16 v25, 0x0

    const/16 v24, 0x0

    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-static {}, Lcom/miui/powercenter/autotask/AutoTask;->aYe()Ljava/util/List;

    move-result-object v35

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/miui/powercenter/autotask/AutoTask;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/miui/powercenter/autotask/AutoTask;->aLk:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    if-eqz v36, :cond_28

    :try_start_0
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2c

    move v8, v13

    move v9, v14

    move/from16 v5, v27

    move/from16 v6, v28

    move/from16 v7, v29

    move/from16 v13, v18

    move/from16 v14, v19

    move/from16 v28, v30

    move-object/from16 v27, v33

    move-object/from16 v29, v34

    move/from16 v18, v23

    move/from16 v19, v10

    move/from16 v23, v25

    move v10, v15

    move/from16 v15, v20

    move/from16 v20, v11

    move/from16 v11, v16

    move/from16 v16, v21

    move/from16 v21, v12

    move/from16 v12, v17

    move/from16 v17, v22

    move/from16 v22, v24

    move/from16 v24, v26

    move-object/from16 v26, v32

    :goto_0
    new-instance v30, Lcom/miui/powercenter/autotask/AutoTask;

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;-><init>(Landroid/database/Cursor;)V

    add-int/lit8 v25, v31, 0x1

    invoke-virtual/range {v30 .. v30}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v32

    const-wide/16 v38, 0x1

    cmp-long v4, v32, v38

    if-nez v4, :cond_0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/powercenter/autotask/AutoTask;

    move-object/from16 v0, v30

    invoke-static {v0, v4}, Lcom/miui/powercenter/b/a;->bcZ(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object v27

    :cond_0
    invoke-virtual/range {v30 .. v30}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v32

    const-wide/16 v38, 0x2

    cmp-long v4, v32, v38

    if-nez v4, :cond_1

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v4

    const/16 v31, 0x1

    move/from16 v0, v31

    if-le v4, v0, :cond_1

    const/4 v4, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/powercenter/autotask/AutoTask;

    move-object/from16 v0, v30

    invoke-static {v0, v4}, Lcom/miui/powercenter/b/a;->bcZ(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object v26

    :cond_1
    invoke-virtual/range {v30 .. v30}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v32

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v38, v0

    cmp-long v4, v32, v38

    if-lez v4, :cond_2

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v30 .. v30}, Lcom/miui/powercenter/autotask/AutoTask;->aXT()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v19, v19, 0x1

    :cond_2
    invoke-virtual/range {v30 .. v30}, Lcom/miui/powercenter/autotask/AutoTask;->aXT()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v8

    move v8, v12

    move/from16 v12, v16

    move/from16 v16, v23

    move/from16 v23, v7

    move v7, v11

    move v11, v15

    move/from16 v15, v22

    move/from16 v22, v6

    move v6, v10

    move v10, v14

    move/from16 v14, v18

    move/from16 v18, v5

    move v5, v9

    move v9, v13

    move/from16 v13, v17

    move/from16 v17, v24

    move/from16 v24, v28

    move-object/from16 v28, v29

    :goto_1
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    move-result v29

    if-eqz v29, :cond_13

    move/from16 v31, v25

    move-object/from16 v29, v28

    move/from16 v28, v24

    move/from16 v24, v17

    move/from16 v17, v13

    move v13, v9

    move v9, v5

    move/from16 v5, v18

    move/from16 v18, v14

    move v14, v10

    move v10, v6

    move/from16 v6, v22

    move/from16 v22, v15

    move v15, v11

    move v11, v7

    move/from16 v7, v23

    move/from16 v23, v16

    move/from16 v16, v12

    move v12, v8

    move v8, v4

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v28, v28, 0x1

    const-string/jumbo v29, "on"

    invoke-virtual/range {v30 .. v30}, Lcom/miui/powercenter/autotask/AutoTask;->aYf()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v32, "hour_minute_duration"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4

    add-int/lit8 v4, v5, 0x1

    move v5, v6

    move v6, v7

    :goto_3
    move v7, v6

    move v6, v5

    move v5, v4

    goto :goto_2

    :cond_4
    const-string/jumbo v32, "hour_minute"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_5

    add-int/lit8 v4, v7, 0x1

    move/from16 v40, v5

    move v5, v6

    move v6, v4

    move/from16 v4, v40

    goto :goto_3

    :cond_5
    const-string/jumbo v32, "battery_level_down"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    add-int/lit8 v4, v6, 0x1

    move v6, v7

    move/from16 v40, v4

    move v4, v5

    move/from16 v5, v40

    goto :goto_3

    :cond_6
    invoke-virtual/range {v30 .. v30}, Lcom/miui/powercenter/autotask/AutoTask;->aYg()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    add-int/lit8 v24, v24, 0x1

    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v30

    add-int v22, v22, v30

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_5
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v31, "airplane_mode"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_9

    add-int/lit8 v4, v18, 0x1

    move/from16 v40, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v4

    move/from16 v4, v40

    :goto_6
    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v15

    move v15, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v4

    goto :goto_5

    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_7

    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    :cond_9
    const-string/jumbo v31, "mute"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_a

    add-int/lit8 v4, v17, 0x1

    move/from16 v17, v18

    move/from16 v40, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v4

    move v4, v8

    move/from16 v8, v40

    goto :goto_6

    :cond_a
    const-string/jumbo v31, "gps"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_b

    add-int/lit8 v4, v16, 0x1

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v40, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move v15, v4

    move v4, v8

    move v8, v9

    move/from16 v9, v40

    goto :goto_6

    :cond_b
    const-string/jumbo v31, "internet"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_c

    add-int/lit8 v4, v15, 0x1

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v40, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v4

    move v4, v8

    move v8, v9

    move v9, v10

    move/from16 v10, v40

    goto :goto_6

    :cond_c
    const-string/jumbo v31, "wifi"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_d

    add-int/lit8 v4, v14, 0x1

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v40, v12

    move v12, v13

    move v13, v4

    move v4, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move/from16 v11, v40

    goto/16 :goto_6

    :cond_d
    const-string/jumbo v31, "synchronization"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_e

    add-int/lit8 v4, v13, 0x1

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v40, v4

    move v4, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move/from16 v12, v40

    goto/16 :goto_6

    :cond_e
    const-string/jumbo v31, "vibration"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_f

    add-int/lit8 v4, v12, 0x1

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v40, v9

    move v9, v10

    move v10, v11

    move v11, v4

    move v4, v8

    move/from16 v8, v40

    goto/16 :goto_6

    :cond_f
    const-string/jumbo v31, "bluetooth"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_10

    add-int/lit8 v4, v11, 0x1

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v40, v4

    move v4, v8

    move v8, v9

    move v9, v10

    move/from16 v10, v40

    goto/16 :goto_6

    :cond_10
    const-string/jumbo v31, "auto_brightness"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_11

    add-int/lit8 v4, v10, 0x1

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v40, v4

    move v4, v8

    move v8, v9

    move/from16 v9, v40

    goto/16 :goto_6

    :cond_11
    const-string/jumbo v31, "brightness"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_12

    add-int/lit8 v4, v9, 0x1

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v40, v4

    move v4, v8

    move/from16 v8, v40

    goto/16 :goto_6

    :cond_12
    const-string/jumbo v31, "auto_clean_memory"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_29

    add-int/lit8 v4, v8, 0x1

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    goto/16 :goto_6

    :cond_13
    move/from16 v40, v19

    move/from16 v19, v16

    move/from16 v16, v13

    move v13, v10

    move v10, v7

    move v7, v4

    move/from16 v4, v40

    move/from16 v41, v5

    move/from16 v5, v20

    move/from16 v20, v17

    move/from16 v17, v14

    move v14, v11

    move v11, v8

    move/from16 v8, v41

    move/from16 v42, v12

    move v12, v9

    move v9, v6

    move/from16 v6, v21

    move/from16 v21, v18

    move/from16 v18, v15

    move/from16 v15, v42

    :goto_7
    invoke-static/range {v36 .. v36}, Lmiui/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_8
    const-string/jumbo v29, "auto_toggle_total"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/miui/powercenter/b/a;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v25, :cond_14

    const-string/jumbo v28, "auto_num"

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Lcom/miui/powercenter/b/a;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_14
    if-lez v24, :cond_15

    const-string/jumbo v25, "auto_num_on"

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/miui/powercenter/b/a;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_15
    if-lez v23, :cond_16

    const-string/jumbo v24, "auto_num_on_timing"

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/miui/powercenter/b/a;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_16
    if-lez v22, :cond_17

    const-string/jumbo v23, "auto_num_on_low_power"

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v23 .. v25}, Lcom/miui/powercenter/b/a;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_17
    if-lez v21, :cond_18

    const-string/jumbo v22, "auto_num_on_timing_to_timing"

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/miui/powercenter/b/a;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_18
    if-lez v20, :cond_19

    const-string/jumbo v21, "auto_num_on_single"

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v21 .. v23}, Lcom/miui/powercenter/b/a;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_19
    if-lez v19, :cond_1a

    const-string/jumbo v20, "auto_num_on_multi"

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/miui/powercenter/b/a;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_1a
    if-lez v18, :cond_1b

    const-string/jumbo v19, "auto_on_action_num"

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Lcom/miui/powercenter/b/a;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_1b
    if-lez v17, :cond_1c

    const-string/jumbo v18, "auto_on_action_flight_mode"

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/miui/powercenter/b/a;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_1c
    if-lez v16, :cond_1d

    const-string/jumbo v17, "auto_on_action_mute"

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Lcom/miui/powercenter/b/a;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_1d
    if-lez v15, :cond_1e

    const-string/jumbo v16, "auto_on_action_gps"

    int-to-long v0, v15

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/miui/powercenter/b/a;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_1e
    if-lez v14, :cond_1f

    const-string/jumbo v15, "auto_on_action_data"

    int-to-long v0, v14

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Lcom/miui/powercenter/b/a;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_1f
    if-lez v13, :cond_20

    const-string/jumbo v14, "auto_on_action_wlan"

    int-to-long v0, v13

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lcom/miui/powercenter/b/a;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_20
    if-lez v12, :cond_21

    const-string/jumbo v13, "auto_on_action_sync"

    int-to-long v14, v12

    invoke-static {v13, v14, v15}, Lcom/miui/powercenter/b/a;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_21
    if-lez v11, :cond_22

    const-string/jumbo v12, "auto_on_action_vibrate"

    int-to-long v14, v11

    invoke-static {v12, v14, v15}, Lcom/miui/powercenter/b/a;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_22
    if-lez v10, :cond_23

    const-string/jumbo v11, "auto_on_action_bluetooth"

    int-to-long v12, v10

    invoke-static {v11, v12, v13}, Lcom/miui/powercenter/b/a;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_23
    if-lez v9, :cond_24

    const-string/jumbo v10, "auto_on_action_abrightness"

    int-to-long v12, v9

    invoke-static {v10, v12, v13}, Lcom/miui/powercenter/b/a;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_24
    if-lez v8, :cond_25

    const-string/jumbo v9, "auto_on_action_brightness"

    int-to-long v10, v8

    invoke-static {v9, v10, v11}, Lcom/miui/powercenter/b/a;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_25
    if-lez v7, :cond_26

    const-string/jumbo v8, "auto_on_action_ls_cleanram"

    int-to-long v10, v7

    invoke-static {v8, v10, v11}, Lcom/miui/powercenter/b/a;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_26
    const-string/jumbo v7, "auto_toggle_task1"

    move-object/from16 v0, v27

    invoke-static {v7, v0}, Lcom/miui/powercenter/b/a;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "auto_toggle_task2"

    move-object/from16 v0, v26

    invoke-static {v7, v0}, Lcom/miui/powercenter/b/a;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "auto_toggle_custom"

    int-to-long v8, v6

    invoke-static {v7, v8, v9}, Lcom/miui/powercenter/b/a;->recordNumericEvent(Ljava/lang/String;J)V

    if-lez v5, :cond_27

    const-string/jumbo v6, "auto_custom_num"

    int-to-long v8, v5

    invoke-static {v6, v8, v9}, Lcom/miui/powercenter/b/a;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_27
    const-string/jumbo v5, "auto_custom_on_num"

    int-to-long v6, v4

    invoke-static {v5, v6, v7}, Lcom/miui/powercenter/b/a;->recordNumericEvent(Ljava/lang/String;J)V

    return-void

    :catchall_0
    move-exception v4

    invoke-static/range {v36 .. v36}, Lmiui/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    :cond_28
    const-string/jumbo v4, "none"

    move v5, v11

    move v6, v12

    move v7, v13

    move v8, v14

    move v9, v15

    move/from16 v11, v17

    move/from16 v12, v18

    move/from16 v13, v19

    move/from16 v14, v20

    move/from16 v15, v21

    move/from16 v17, v23

    move/from16 v18, v24

    move/from16 v19, v25

    move/from16 v20, v26

    move/from16 v21, v27

    move/from16 v23, v29

    move/from16 v24, v30

    move/from16 v25, v31

    move-object/from16 v26, v32

    move-object/from16 v27, v33

    move/from16 v40, v16

    move/from16 v16, v22

    move/from16 v22, v28

    move-object/from16 v28, v4

    move v4, v10

    move/from16 v10, v40

    goto/16 :goto_8

    :cond_29
    move v4, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    goto/16 :goto_6

    :cond_2a
    move v4, v8

    move v8, v12

    move/from16 v12, v16

    move/from16 v16, v23

    move/from16 v23, v7

    move v7, v11

    move v11, v15

    move/from16 v15, v22

    move/from16 v22, v6

    move v6, v10

    move v10, v14

    move/from16 v14, v18

    move/from16 v18, v5

    move v5, v9

    move v9, v13

    move/from16 v13, v17

    move/from16 v17, v24

    move/from16 v24, v28

    move-object/from16 v28, v29

    goto/16 :goto_1

    :cond_2b
    move v4, v5

    move v5, v6

    move v6, v7

    goto/16 :goto_3

    :cond_2c
    move v4, v10

    move v5, v11

    move v6, v12

    move v7, v13

    move v8, v14

    move v9, v15

    move/from16 v10, v16

    move/from16 v11, v17

    move/from16 v12, v18

    move/from16 v13, v19

    move/from16 v14, v20

    move/from16 v15, v21

    move/from16 v16, v22

    move/from16 v17, v23

    move/from16 v18, v24

    move/from16 v19, v25

    move/from16 v20, v26

    move/from16 v21, v27

    move/from16 v22, v28

    move/from16 v23, v29

    move/from16 v24, v30

    move/from16 v25, v31

    move-object/from16 v26, v32

    move-object/from16 v27, v33

    move-object/from16 v28, v34

    goto/16 :goto_7
.end method

.method private static recordCalculateEvent(Ljava/lang/String;J)V
    .locals 3

    const-string/jumbo v0, "com.miui.powercenter.autotask"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method private static recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    const-string/jumbo v0, "com.miui.powercenter.autotask"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static recordNumericEvent(Ljava/lang/String;J)V
    .locals 1

    const-string/jumbo v0, "com.miui.powercenter.autotask"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "com.miui.powercenter.autotask"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
