.class public Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;
.super Landroid/os/AsyncTask;
.source "AsyncSubtitles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetSubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;


# direct methods
.method public constructor <init>(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$300(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)J

    move-result-wide v2

    const/4 p1, 0x0

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdbba0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$100(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OpenSubtitlesAPI;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OpenSubtitlesAPI;->login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$002(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$302(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;J)J

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$400(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/ORequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/ORequest;->getFilePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$100(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OpenSubtitlesAPI;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$500(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OpenSubtitlesAPI;->getSearchByHash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$600(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/video/common/library/utils/UriPathUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$100(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OpenSubtitlesAPI;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$500(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OpenSubtitlesAPI;->getSearchByHash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AsyncSubtitles"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$400(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/ORequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/ORequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$100(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OpenSubtitlesAPI;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$500(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v2, v3, v3}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OpenSubtitlesAPI;->getSearchByQuery(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$400(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/ORequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/ORequest;->getImdbid()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$100(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OpenSubtitlesAPI;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$500(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OpenSubtitlesAPI;->getSearchByImdbId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$100(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OpenSubtitlesAPI;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$000(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OpenSubtitlesAPI;->executeSearch(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->mResultList:Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->mResultList:Ljava/util/ArrayList;

    return-object p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->mResultList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$200(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$SubtitlesInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    iget-object v0, v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->mResultList:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$SubtitlesInterface;->onSubtitlesListFound(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->access$200(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$SubtitlesInterface;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$SubtitlesInterface;->onError(I)V

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->mResultList:Ljava/util/ArrayList;

    return-void
.end method
