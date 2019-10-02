.class Lcom/miui/video/base/database/CLVDatabase$1;
.super Ljava/lang/Object;
.source "CLVDatabase.java"

# interfaces
.implements Lcom/miui/video/base/database/DBUtils$IQueryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/database/CLVDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/video/base/database/DBUtils$IQueryListener<",
        "Ljava/util/List<",
        "Lcom/miui/video/base/database/LocalVideoEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/base/database/CLVDatabase;


# direct methods
.method constructor <init>(Lcom/miui/video/base/database/CLVDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/CLVDatabase$1;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onQueryFinished(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/base/database/CLVDatabase$1;->onQueryFinished(Landroid/database/Cursor;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onQueryFinished(Landroid/database/Cursor;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/LocalVideoEntity;",
            ">;"
        }
    .end annotation

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-direct {v0}, Lcom/miui/video/base/database/LocalVideoEntity;-><init>()V

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$1;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "_id"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/LocalVideoEntity;->setMediaId(J)V

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getMediaId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setUri(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$1;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "_data"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setPath(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setTitle(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$1;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "title"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setTitle(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setBaseLabel(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$1;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "_size"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/LocalVideoEntity;->setSize(J)V

    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/LocalVideoEntity;->setUpdateTime(J)V

    :cond_2
    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getUpdateTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$1;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "date_added"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/LocalVideoEntity;->setUpdateTime(J)V

    :cond_3
    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/CipherUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setMd5Path(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setImgUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$1;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "duration"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/LocalVideoEntity;->setDuration(J)V

    const-string v1, "VideoPlayer"

    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/base/utils/CLVEntitys;->createLinkHostUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setTarget(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "DBUtils"

    const-string v2, "moveToNext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    return-object p2
.end method
