.class public Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$DownloadSub;
.super Landroid/os/AsyncTask;
.source "AsyncSubtitles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadSub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/Map<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;


# direct methods
.method public constructor <init>(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$DownloadSub;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$DownloadSub;->doInBackground([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$DownloadSub;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {v4}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$100(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OpenSubtitlesAPI;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$DownloadSub;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {v5}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$000(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)Ljava/lang/String;

    move-result-object v5

    aget-object v6, p1, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OpenSubtitlesAPI;->downloadSubtitle(Ljava/lang/String;I)[B

    move-result-object v4

    new-instance v5, Ljava/io/File;

    aget-object v6, p1, v2

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OpenSubtitlesException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v6, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OpenSubtitlesException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0

    :catchall_0
    move-exception p1

    move-object v3, v6

    goto :goto_4

    :catch_1
    move-exception v4

    move-object v3, v6

    goto :goto_1

    :catch_2
    move-exception v4

    move-object v3, v6

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception v4

    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    :catch_4
    move-exception v4

    :goto_2
    :try_start_5
    invoke-virtual {v4}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OpenSubtitlesException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aget-object p1, p1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :goto_4
    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_5
    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$DownloadSub;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$DownloadSub;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$200(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$SubtitlesInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$SubtitlesInterface;->onSubtitleDownload(Ljava/util/Map;)V

    return-void
.end method
