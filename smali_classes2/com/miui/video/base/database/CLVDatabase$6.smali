.class Lcom/miui/video/base/database/CLVDatabase$6;
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

    iput-object p1, p0, Lcom/miui/video/base/database/CLVDatabase$6;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onQueryFinished(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/base/database/CLVDatabase$6;->onQueryFinished(Landroid/database/Cursor;I)Ljava/util/List;

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

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-direct {v0}, Lcom/miui/video/base/database/LocalVideoEntity;-><init>()V

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$6;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "_id"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/LocalVideoEntity;->setId(J)V

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$6;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "title"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$6;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "imgUrl"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setImgUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$6;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "path"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setPath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$6;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "md5_path"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setMd5Path(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$6;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "size"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/LocalVideoEntity;->setSize(J)V

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$6;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "duration"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/LocalVideoEntity;->setDuration(J)V

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$6;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "playProgress"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setPlayProgress(I)V

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$6;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "updateTime"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/LocalVideoEntity;->setUpdateTime(J)V

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$6;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "currentAudioTrack"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setCurrentAudioTrack(I)V

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$6;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "onlineSubLocalPath"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setOnlineSubtitlePath(Ljava/lang/String;)Lcom/miui/video/base/database/LocalVideoEntity;

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$6;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "onlineSubHash"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setOnlineSubtitleHash(Ljava/lang/String;)Lcom/miui/video/base/database/LocalVideoEntity;

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$6;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "currentSubtitlePath"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setCurrentSubtitlePath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$6;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "extraSubtitlePath"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setExtraSubtitlePath(Ljava/lang/String;)V

    const-string v1, "VideoPlayer"

    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/base/utils/CLVEntitys;->createLinkHostUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setTarget(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$6;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "extraSubtitleOffset"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/miui/video/base/database/CLVDatabase$6$1;

    invoke-direct {v3, p0}, Lcom/miui/video/base/database/CLVDatabase$6$1;-><init>(Lcom/miui/video/base/database/CLVDatabase$6;)V

    invoke-virtual {v3}, Lcom/miui/video/base/database/CLVDatabase$6$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setSubtitleOffsetEntities(Ljava/util/List;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$6;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "ref"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setRef(Ljava/lang/String;)V

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

    :cond_1
    return-object p2
.end method
