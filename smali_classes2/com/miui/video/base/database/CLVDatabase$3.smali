.class Lcom/miui/video/base/database/CLVDatabase$3;
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

    iput-object p1, p0, Lcom/miui/video/base/database/CLVDatabase$3;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onQueryFinished(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/base/database/CLVDatabase$3;->onQueryFinished(Landroid/database/Cursor;I)Ljava/util/List;

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

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-direct {v0}, Lcom/miui/video/base/database/LocalVideoEntity;-><init>()V

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$3;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "_id"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/LocalVideoEntity;->setHideId(J)V

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$3;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "mediaId"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/LocalVideoEntity;->setMediaId(J)V

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$3;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "md5_path"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setMd5Path(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase$3;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    const-string v2, "path"

    invoke-virtual {v1, p1, v2}, Lcom/miui/video/base/database/CLVDatabase;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setPath(Ljava/lang/String;)V

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

    goto :goto_0

    :cond_0
    return-object p2
.end method
