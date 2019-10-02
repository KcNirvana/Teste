.class public Lcom/miui/video/biz/videoplus/db/core/utils/MediaQueryTransfer;
.super Ljava/lang/Object;
.source "MediaQueryTransfer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaQueryTransfer"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static querFileFromMediaStore(Landroid/database/Cursor;)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    :cond_0
    new-instance v3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-direct {v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;-><init>()V

    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x0

    const/16 v7, 0x2f

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mime_type"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "_display_name"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "_size"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v11, "date_added"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-string v13, "date_modified"

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const-string v15, "width"

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v1, "height"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-wide/16 v16, 0x3e8

    mul-long v16, v16, v13

    invoke-static/range {v16 .. v17}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToDate(J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v1

    invoke-static/range {v16 .. v17}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToMonthWithYear(J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    invoke-static/range {v16 .. v17}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v5}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setMapId(J)V

    invoke-virtual {v3, v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setFilePath(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDirectoryPath(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setMimeType(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v8}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setFileName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/miui/video/framework/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setFileName(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3, v9, v10}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setSize(J)V

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDuration(J)V

    invoke-virtual {v3, v11, v12}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDateAdded(J)V

    invoke-virtual {v3, v13, v14}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDateModified(J)V

    if-eqz v15, :cond_2

    invoke-virtual {v3, v15}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setWidth(I)V

    invoke-virtual {v3, v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setHeight(I)V

    :cond_2
    const-string v0, "/DCIM/Camera"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ai_music"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsSupportAiMusic(Z)V

    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDate(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setMonth(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setYear(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static queryImageFromMediaStore(Landroid/database/Cursor;)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    :cond_0
    new-instance v3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-direct {v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;-><init>()V

    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/16 v6, 0x2f

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v8, "mime_type"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "_display_name"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "_size"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string v12, "date_added"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-string v14, "date_modified"

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-string v7, "bucket_display_name"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "width"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v16, v7

    const-string v7, "height"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-wide/16 v17, 0x3e8

    mul-long v17, v17, v14

    invoke-static/range {v17 .. v18}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToDate(J)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v19, v7

    invoke-static/range {v17 .. v18}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToMonthWithYear(J)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v20, v7

    invoke-static/range {v17 .. v18}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v21, v7

    const/4 v7, 0x1

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :cond_2
    invoke-virtual {v3, v4, v5}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setMapId(J)V

    invoke-virtual {v3, v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setFilePath(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDirectoryPath(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setMimeType(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "video"

    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getFlagsExceptCover()I

    move-result v0

    invoke-static {v2, v0}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->parse(Ljava/lang/String;I)Lcom/miui/video/biz/videoplus/player/VideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getRotation()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setRotation(I)V

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getWidth()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setWidth(I)V

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getHeight()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setHeight(I)V

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDuration(J)V

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getType()I

    move-result v1

    if-ne v1, v7, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsFastSlowVideo(Z)V

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v3, v7}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsSupportAiMusic(Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setWidth(I)V

    invoke-virtual {v3, v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setHeight(I)V

    :cond_6
    :goto_2
    invoke-static {v9}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v3, v9}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setFileName(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-static {v2}, Lcom/miui/video/framework/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setFileName(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v3, v10, v11}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setSize(J)V

    invoke-virtual {v3, v12, v13}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDateAdded(J)V

    invoke-virtual {v3, v14, v15}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDateModified(J)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setBucketDisplayName(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDate(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setMonth(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setYear(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static queryImageListFromMediaStore(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/miui/video/biz/videoplus/db/core/utils/MediaQueryTransfer;->queryImageFromMediaStore(Landroid/database/Cursor;)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "MediaQueryTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public static queryMediaEntity(Landroid/database/Cursor;)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;
    .locals 32

    move-object/from16 v0, p0

    if-eqz v0, :cond_5

    :try_start_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sget-object v4, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->MapId:Lorg/greenrobot/greendao/Property;

    iget-object v4, v4, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    sget-object v6, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->FileName:Lorg/greenrobot/greendao/Property;

    iget-object v6, v6, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->FilePath:Lorg/greenrobot/greendao/Property;

    iget-object v7, v7, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    iget-object v8, v8, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Size:Lorg/greenrobot/greendao/Property;

    iget-object v9, v9, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    sget-object v11, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->MimeType:Lorg/greenrobot/greendao/Property;

    iget-object v11, v11, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DateAdded:Lorg/greenrobot/greendao/Property;

    iget-object v12, v12, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    sget-object v14, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DateModified:Lorg/greenrobot/greendao/Property;

    iget-object v14, v14, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->BucketDisplayName:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Width:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move/from16 v17, v1

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Height:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move/from16 v18, v1

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->IsHidded:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move/from16 v19, v1

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Duration:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-wide/from16 v20, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->CurrPlayTime:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-wide/from16 v22, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->IsFastSlowVideo:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move/from16 v24, v1

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->IsSupportAiMusic:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move/from16 v25, v1

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Rotation:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move/from16 v26, v1

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Address:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v27, v1

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Location:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v28, v1

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v29, v1

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v30, v1

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v31, v1

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->IsParsed:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    new-instance v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-direct {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setId(Ljava/lang/Long;)V

    invoke-virtual {v1, v4, v5}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setMapId(J)V

    invoke-virtual {v1, v8}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDirectoryPath(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setFileName(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setFilePath(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setSize(J)V

    invoke-virtual {v1, v11}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setMimeType(Ljava/lang/String;)V

    invoke-virtual {v1, v12, v13}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDateAdded(J)V

    move-wide/from16 v2, v20

    invoke-virtual {v1, v2, v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDateModified(J)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setBucketDisplayName(Ljava/lang/String;)V

    move/from16 v2, v17

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setWidth(I)V

    move/from16 v2, v18

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setHeight(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    move/from16 v4, v19

    if-ne v4, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsHidded(Z)V

    move-wide/from16 v4, v22

    invoke-virtual {v1, v4, v5}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDuration(J)V

    invoke-virtual {v1, v14, v15}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setCurrPlayTime(J)V

    move/from16 v4, v24

    if-ne v4, v3, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1, v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsFastSlowVideo(Z)V

    move/from16 v4, v25

    if-ne v4, v3, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v1, v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsSupportAiMusic(Z)V

    move/from16 v4, v26

    invoke-virtual {v1, v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setRotation(I)V

    move-object/from16 v4, v28

    invoke-virtual {v1, v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setLocation(Ljava/lang/String;)V

    move-object/from16 v4, v27

    invoke-virtual {v1, v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setAddress(Ljava/lang/String;)V

    move-object/from16 v4, v29

    invoke-virtual {v1, v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDate(Ljava/lang/String;)V

    move-object/from16 v4, v30

    invoke-virtual {v1, v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setMonth(Ljava/lang/String;)V

    move-object/from16 v4, v31

    invoke-virtual {v1, v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setYear(Ljava/lang/String;)V

    if-ne v0, v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsParsed(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1

    :cond_5
    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public static queryVideoFromMediaStore(Landroid/database/Cursor;)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    :cond_0
    new-instance v3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-direct {v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;-><init>()V

    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x0

    const/16 v7, 0x2f

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mime_type"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "_display_name"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "_size"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v11, "date_added"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-string v13, "date_modified"

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const-string v15, "width"

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v1, "height"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move/from16 v16, v1

    const-string v1, "bucket_display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v17, v15

    const-string v15, "duration"

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v18, v1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v19, 0x3e8

    mul-long v19, v19, v13

    invoke-static/range {v19 .. v20}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToDate(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v15

    invoke-static/range {v19 .. v20}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToMonthWithYear(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v22, v15

    invoke-static/range {v19 .. v20}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v4, v5}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setMapId(J)V

    invoke-virtual {v3, v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setFilePath(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDirectoryPath(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v8}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setFileName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/miui/video/framework/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setFileName(Ljava/lang/String;)V

    :goto_0
    invoke-static {v7}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v7, "video/unknow"

    goto :goto_1

    :cond_2
    const-string v4, "video"

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/video/framework/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v7, "video/unknow"

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-virtual {v3, v7}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setMimeType(Ljava/lang/String;)V

    invoke-virtual {v3, v9, v10}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setSize(J)V

    invoke-virtual {v3, v0, v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDuration(J)V

    invoke-virtual {v3, v11, v12}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDateAdded(J)V

    invoke-virtual {v3, v13, v14}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDateModified(J)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setBucketDisplayName(Ljava/lang/String;)V

    if-eqz v17, :cond_5

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setWidth(I)V

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setHeight(I)V

    :cond_5
    const-string v0, "/DCIM/Camera"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "ai_music"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsSupportAiMusic(Z)V

    :cond_6
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDate(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setMonth(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setYear(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static queryVideoListFromMediaStore(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/miui/video/biz/videoplus/db/core/utils/MediaQueryTransfer;->queryVideoFromMediaStore(Landroid/database/Cursor;)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;->shouldContinueLoop(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-object v0
.end method
