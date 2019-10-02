.class Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicDownloadToDo;
.super Ljava/lang/Object;
.source "GalleryMusicAdapter.java"

# interfaces
.implements Lcom/miui/video/base/common/impl/IDownloadToDo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MusicDownloadToDo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicDownloadToDo;->this$0:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runDownload(Ljava/lang/String;Lcom/miui/video/base/common/entity/FileEntity;Ljava/io/InputStream;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ICancelListener;Lcom/miui/video/base/common/impl/IUIListener;)Ljava/lang/Object;
    .locals 14

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v1, :cond_4

    if-nez v2, :cond_0

    goto/16 :goto_e

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/miui/video/base/common/entity/FileEntity;->setState(I)V

    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/video/base/common/entity/FileEntity;->getCachePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x1000

    :try_start_2
    new-array v0, v0, [B

    const-wide/16 v7, 0x0

    :cond_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    const/4 v10, 0x0

    invoke-virtual {v6, v0, v10, v9}, Ljava/io/BufferedOutputStream;->write([BII)V

    invoke-virtual/range {p2 .. p2}, Lcom/miui/video/base/common/entity/FileEntity;->getDownloadSize()J

    move-result-wide v10

    int-to-long v12, v9

    add-long/2addr v10, v12

    invoke-virtual {v1, v10, v11}, Lcom/miui/video/base/common/entity/FileEntity;->setDownloadSize(J)V

    invoke-virtual/range {p2 .. p2}, Lcom/miui/video/base/common/entity/FileEntity;->getSize()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/miui/video/base/common/entity/FileEntity;->getDownloadSize()J

    move-result-wide v9

    const-wide/16 v11, 0x64

    mul-long v9, v9, v11

    invoke-virtual/range {p2 .. p2}, Lcom/miui/video/base/common/entity/FileEntity;->getSize()I

    move-result v11

    int-to-long v11, v11

    div-long/2addr v9, v11

    cmp-long v11, v7, v9

    if-eqz v11, :cond_2

    long-to-int v7, v9

    move-object v11, p1

    move-object/from16 v12, p6

    invoke-interface {v12, p1, v7, v4}, Lcom/miui/video/base/common/impl/IUIListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    move-wide v7, v9

    goto :goto_0

    :cond_2
    move-object v11, p1

    move-object/from16 v12, p6

    :goto_0
    invoke-interface/range {p5 .. p5}, Lcom/miui/video/base/common/impl/ICancelListener;->isCancel()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/miui/video/base/common/entity/FileEntity;->setState(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object v3

    :cond_3
    :try_start_6
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v6, v4

    goto :goto_6

    :catch_5
    move-object v6, v4

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v5, v4

    move-object v6, v5

    :goto_6
    :try_start_9
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    throw v1

    :catch_9
    move-object v5, v4

    move-object v6, v5

    :catch_a
    :goto_a
    :try_start_c
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b
    :try_start_d
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_c

    :catch_c
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    goto :goto_d

    :catch_d
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d
    invoke-virtual/range {p2 .. p2}, Lcom/miui/video/base/common/entity/FileEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/miui/video/framework/utils/FileUtils;->moveFile(Ljava/io/File;Ljava/lang/String;)Z

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/miui/video/base/common/entity/FileEntity;->setState(I)V

    return-object v3

    :cond_4
    :goto_e
    return-object v1
.end method
