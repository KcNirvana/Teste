.class public Lcom/miui/permcenter/e;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SE(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/permcenter/e;->SN(Landroid/content/Context;JZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static SF(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 31

    invoke-static/range {p0 .. p0}, Lcom/miui/common/h/b;->getInstance(Landroid/content/Context;)Lcom/miui/common/h/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/common/h/b;->aNk()Ljava/util/List;

    move-result-object v2

    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x2

    const/16 v22, 0x3

    const/16 v23, 0x4

    const/16 v24, 0x5

    const/16 v25, 0x6

    const/4 v2, 0x7

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "pkgName"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string/jumbo v2, "suggestAccept"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const-string/jumbo v2, "suggestPrompt"

    const/4 v3, 0x2

    aput-object v2, v4, v3

    const-string/jumbo v2, "suggestReject"

    const/4 v3, 0x3

    aput-object v2, v4, v3

    const-string/jumbo v2, "userAccept"

    const/4 v3, 0x4

    aput-object v2, v4, v3

    const-string/jumbo v2, "userPrompt"

    const/4 v3, 0x5

    aput-object v2, v4, v3

    const-string/jumbo v2, "userReject"

    const/4 v3, 0x6

    aput-object v2, v4, v3

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :try_start_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/permission/e;->URI:Landroid/net/Uri;

    const-string/jumbo v5, "permMask& ? != 0 and +present!= 0 and suggestBlock & ? == 0 "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v6, v9

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v17

    if-eqz v17, :cond_6

    :cond_2
    :goto_1
    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    and-long v2, v10, p1

    const-wide/16 v28, 0x0

    cmp-long v2, v2, v28

    if-nez v2, :cond_3

    and-long v2, v12, p1

    const-wide/16 v28, 0x0

    cmp-long v2, v2, v28

    if-eqz v2, :cond_4

    :cond_3
    :goto_2
    move-wide/from16 v2, p1

    invoke-static/range {v2 .. v15}, Lcom/miui/permission/a;->bBT(JJJJJJJ)I

    move-result v2

    new-instance v3, Lcom/miui/permcenter/c;

    invoke-direct {v3}, Lcom/miui/permcenter/c;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/miui/permcenter/c;->setPackageName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/miui/common/b/k;->aIp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/permcenter/c;->setLabel(Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/miui/permcenter/c;->SB(Ljava/util/HashMap;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    move-object/from16 v3, v17

    :goto_3
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    :cond_4
    and-long v2, v14, p1

    const-wide/16 v28, 0x0

    cmp-long v2, v2, v28

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_5
    :try_start_2
    new-instance v2, Lcom/miui/permcenter/d;

    invoke-direct {v2}, Lcom/miui/permcenter/d;-><init>()V

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    invoke-static/range {v17 .. v17}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v26

    :catchall_1
    move-exception v2

    move-object v3, v8

    goto :goto_3
.end method

.method public static SG(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/miui/permcenter/o;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/o;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public static SH()Z
    .locals 1

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    return v0
.end method

.method public static SI(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 21

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x4

    const/4 v14, 0x5

    const/16 v16, 0x6

    const/16 v18, 0x7

    const/16 v3, 0x8

    :try_start_0
    new-array v4, v3, [Ljava/lang/String;

    const-string/jumbo v3, "permMask"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string/jumbo v3, "suggestAccept"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string/jumbo v3, "suggestPrompt"

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const-string/jumbo v3, "suggestReject"

    const/4 v5, 0x3

    aput-object v3, v4, v5

    const-string/jumbo v3, "suggestBlock"

    const/4 v5, 0x4

    aput-object v3, v4, v5

    const-string/jumbo v3, "userAccept"

    const/4 v5, 0x5

    aput-object v3, v4, v5

    const-string/jumbo v3, "userPrompt"

    const/4 v5, 0x6

    aput-object v3, v4, v5

    const-string/jumbo v3, "userReject"

    const/4 v5, 0x7

    aput-object v3, v4, v5

    sget-object v3, Lcom/miui/permission/e;->URI:Landroid/net/Uri;

    const-string/jumbo v5, "pkgName =? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    if-eqz v20, :cond_0

    :try_start_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-gez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    invoke-static/range {v20 .. v20}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :cond_1
    :try_start_2
    invoke-static/range {p0 .. p0}, Lcom/miui/permission/a;->getInstance(Landroid/content/Context;)Lcom/miui/permission/a;

    move-result-object v3

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-virtual/range {v3 .. v19}, Lcom/miui/permission/a;->bBQ(JJJJJJJJ)Ljava/util/HashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    invoke-static/range {v20 .. v20}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :cond_2
    invoke-static/range {v20 .. v20}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v2, 0x0

    return-object v2

    :catchall_0
    move-exception v2

    move-object v3, v8

    :goto_0
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    :catchall_1
    move-exception v2

    move-object/from16 v3, v20

    goto :goto_0
.end method

.method public static SJ(Landroid/content/Context;JLjava/lang/String;)Lcom/miui/permcenter/c;
    .locals 27

    const/4 v8, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x2

    const/16 v21, 0x3

    const/16 v22, 0x4

    const/16 v23, 0x5

    const/16 v24, 0x6

    const/4 v2, 0x7

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "pkgName"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string/jumbo v2, "suggestAccept"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const-string/jumbo v2, "suggestPrompt"

    const/4 v3, 0x2

    aput-object v2, v4, v3

    const-string/jumbo v2, "suggestReject"

    const/4 v3, 0x3

    aput-object v2, v4, v3

    const-string/jumbo v2, "userAccept"

    const/4 v3, 0x4

    aput-object v2, v4, v3

    const-string/jumbo v2, "userPrompt"

    const/4 v3, 0x5

    aput-object v2, v4, v3

    const-string/jumbo v2, "userReject"

    const/4 v3, 0x6

    aput-object v2, v4, v3

    const/4 v9, 0x0

    :try_start_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/permission/e;->URI:Landroid/net/Uri;

    const-string/jumbo v5, "permMask& ? != 0 and +present!= 0 and suggestBlock & ? == 0 and pkgName == ?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    const/4 v10, 0x1

    aput-object v7, v6, v10

    const/4 v7, 0x2

    aput-object p3, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v16

    if-eqz v16, :cond_1

    move-object v2, v8

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p0 .. p0}, Lcom/miui/common/h/b;->getInstance(Landroid/content/Context;)Lcom/miui/common/h/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/miui/common/h/b;->aNl(Ljava/lang/String;)Lcom/miui/common/h/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    move-object/from16 v17, v3

    :goto_1
    if-eqz v17, :cond_0

    :try_start_3
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-wide/from16 v2, p1

    invoke-static/range {v2 .. v15}, Lcom/miui/permission/a;->bBT(JJJJJJJ)I

    move-result v3

    new-instance v2, Lcom/miui/permcenter/c;

    invoke-direct {v2}, Lcom/miui/permcenter/c;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/miui/permcenter/c;->setPackageName(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/miui/permcenter/c;->SC(Z)V

    invoke-virtual/range {v17 .. v17}, Lcom/miui/common/h/a;->aNj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/permcenter/c;->setLabel(Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcom/miui/permcenter/c;->SB(Ljava/util/HashMap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object/from16 v3, v16

    :goto_2
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    :catch_0
    move-exception v4

    :try_start_4
    const-string/jumbo v5, "PermissionUtils"

    const-string/jumbo v6, "fail getAppInfo"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v17, v3

    goto :goto_1

    :cond_1
    move-object v2, v8

    :cond_2
    invoke-static/range {v16 .. v16}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :catchall_1
    move-exception v2

    move-object v3, v9

    goto :goto_2
.end method

.method public static SK(Landroid/content/Context;)Z
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/miui/permission/a;->getInstance(Landroid/content/Context;)Lcom/miui/permission/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/permission/a;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PermissionUtils"

    const-string/jumbo v2, "isAppPermissionControlOpen Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static SL(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;ILcom/miui/permcenter/f;Z)V
    .locals 14

    const v2, 0x7f07066c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07066e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p7, :cond_0

    const v2, 0x7f07066d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    if-eqz p7, :cond_1

    packed-switch p5, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v11, v2

    :goto_1
    new-instance v12, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v12, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v3, Lcom/miui/permcenter/p;

    move/from16 v4, p5

    move/from16 v5, p7

    move-object v6, p0

    move-object v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Lcom/miui/permcenter/p;-><init>(IZLandroid/app/Activity;Ljava/lang/String;JLcom/miui/permcenter/f;)V

    invoke-virtual {v12, v2, v11, v3}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0705d6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void

    :pswitch_1
    const/4 v2, 0x0

    move v11, v2

    goto :goto_1

    :pswitch_2
    const/4 v2, 0x1

    move v11, v2

    goto :goto_1

    :cond_1
    packed-switch p5, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x2

    move v11, v2

    goto :goto_1

    :pswitch_4
    const/4 v2, 0x0

    move v11, v2

    goto :goto_1

    :pswitch_5
    const/4 v2, 0x1

    move v11, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static SM(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {p0}, Lcom/miui/permission/a;->getInstance(Landroid/content/Context;)Lcom/miui/permission/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/permission/a;->setEnabled(Z)V

    return-void
.end method

.method public static SN(Landroid/content/Context;JZ)Ljava/util/ArrayList;
    .locals 29

    invoke-static/range {p0 .. p0}, Lcom/miui/common/h/b;->getInstance(Landroid/content/Context;)Lcom/miui/common/h/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/common/h/b;->aNk()Ljava/util/List;

    move-result-object v2

    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/miui/enterprise/ApplicationHelper;->shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "Enterprise"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Permission edit for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " is restricted"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x2

    const/16 v23, 0x3

    const/16 v24, 0x4

    const/16 v25, 0x5

    const/16 v26, 0x6

    const/4 v2, 0x7

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "pkgName"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string/jumbo v2, "suggestAccept"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const-string/jumbo v2, "suggestPrompt"

    const/4 v3, 0x2

    aput-object v2, v4, v3

    const-string/jumbo v2, "suggestReject"

    const/4 v3, 0x3

    aput-object v2, v4, v3

    const-string/jumbo v2, "userAccept"

    const/4 v3, 0x4

    aput-object v2, v4, v3

    const-string/jumbo v2, "userPrompt"

    const/4 v3, 0x5

    aput-object v2, v4, v3

    const-string/jumbo v2, "userReject"

    const/4 v3, 0x6

    aput-object v2, v4, v3

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :try_start_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/permission/e;->URI:Landroid/net/Uri;

    const-string/jumbo v5, "permMask& ? != 0 and +present!= 0 and suggestBlock & ? == 0"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v6, v9

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v17

    if-eqz v17, :cond_6

    :cond_2
    :goto_1
    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move/from16 v18, v2

    :goto_2
    if-eqz v18, :cond_3

    xor-int/lit8 v2, p3, 0x1

    if-nez v2, :cond_2

    :cond_3
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-wide/from16 v2, p1

    invoke-static/range {v2 .. v15}, Lcom/miui/permission/a;->bBT(JJJJJJJ)I

    move-result v2

    new-instance v3, Lcom/miui/permcenter/c;

    invoke-direct {v3}, Lcom/miui/permcenter/c;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/miui/permcenter/c;->setPackageName(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/miui/permcenter/c;->SC(Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/miui/common/b/k;->aIp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/permcenter/c;->setLabel(Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/miui/permcenter/c;->SB(Ljava/util/HashMap;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    move-object/from16 v3, v17

    :goto_3
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    :cond_4
    const/4 v2, 0x0

    move/from16 v18, v2

    goto :goto_2

    :cond_5
    :try_start_2
    new-instance v2, Lcom/miui/permcenter/d;

    invoke-direct {v2}, Lcom/miui/permcenter/d;-><init>()V

    move-object/from16 v0, v27

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    invoke-static/range {v17 .. v17}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v27

    :catchall_1
    move-exception v2

    move-object v3, v8

    goto :goto_3
.end method

.method public static SO(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "com.lbe.security.miui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.permission.Action.SecurityService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.lbe.security.miui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :pswitch_0
    :try_start_2
    const-string/jumbo v1, "com.lbe.security.miui"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    const-string/jumbo v0, "PermissionUtils"

    const-string/jumbo v1, "enable lbe security"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.miui.permcenter"

    const-string/jumbo v1, "service_disabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PermissionUtils"

    const-string/jumbo v2, " ApplicationEnabledSetting error "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "PermissionUtils"

    const-string/jumbo v2, "startService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs SP(Landroid/content/Context;J[Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/miui/permission/a;->getInstance(Landroid/content/Context;)Lcom/miui/permission/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/miui/permission/a;->bBL(JI[Ljava/lang/String;)V

    return-void
.end method

.method public static SQ(Ljava/lang/Long;)Z
    .locals 1

    invoke-static {p0}, Lcom/miui/permission/a;->bBM(Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public static SR(Ljava/lang/Long;)Z
    .locals 1

    invoke-static {p0}, Lcom/miui/permission/a;->bBP(Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public static SS(J)Z
    .locals 2

    const-wide v0, 0x200000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x40

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-wide v0, 0x400000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide v0, 0x800000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x1000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x2000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method public static ST(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 18

    invoke-static/range {p0 .. p0}, Lcom/miui/common/h/b;->getInstance(Landroid/content/Context;)Lcom/miui/common/h/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/common/h/b;->aNk()Ljava/util/List;

    move-result-object v2

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/miui/enterprise/ApplicationHelper;->shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "Enterprise"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Permission edit for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " is restricted"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "pkgName"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string/jumbo v2, "permMask"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const-string/jumbo v2, "suggestBlock"

    const/4 v3, 0x2

    aput-object v2, v4, v3

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/miui/permission/a;->getInstance(Landroid/content/Context;)Lcom/miui/permission/a;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/permission/e;->URI:Landroid/net/Uri;

    const-string/jumbo v5, "present!= 0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    if-eqz v3, :cond_5

    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_3

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v6, v7, v0, v1}, Lcom/miui/permission/a;->bBR(JJ)I

    move-result v5

    if-lez v5, :cond_3

    new-instance v6, Lcom/miui/permcenter/c;

    invoke-direct {v6}, Lcom/miui/permcenter/c;-><init>()V

    invoke-virtual {v6, v4}, Lcom/miui/permcenter/c;->setPackageName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/miui/common/b/k;->aIp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/miui/permcenter/c;->setLabel(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/miui/permcenter/c;->Sy(I)V

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :goto_2
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    :cond_4
    :try_start_2
    new-instance v2, Lcom/miui/permcenter/d;

    invoke-direct {v2}, Lcom/miui/permcenter/d;-><init>()V

    invoke-static {v13, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v13

    :catchall_1
    move-exception v2

    move-object v3, v8

    goto :goto_2
.end method
