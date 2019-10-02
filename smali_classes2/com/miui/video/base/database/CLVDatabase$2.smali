.class Lcom/miui/video/base/database/CLVDatabase$2;
.super Ljava/lang/Object;
.source "CLVDatabase.java"

# interfaces
.implements Lcom/miui/video/base/database/DBUtils$ITransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/base/database/CLVDatabase;->insertVideoHideTable(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/video/base/database/DBUtils$ITransactionListener<",
        "Lcom/miui/video/base/database/LocalVideoEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/base/database/CLVDatabase;


# direct methods
.method constructor <init>(Lcom/miui/video/base/database/CLVDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/CLVDatabase$2;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransaction(Lcom/miui/video/base/database/TableEntity;Lcom/miui/video/base/database/LocalVideoEntity;I)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Lcom/miui/video/base/database/LocalVideoEntity;->getHideId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const-string v0, "_id"

    invoke-virtual {p2}, Lcom/miui/video/base/database/LocalVideoEntity;->getHideId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    const-string v0, "mediaId"

    invoke-virtual {p2}, Lcom/miui/video/base/database/LocalVideoEntity;->getMediaId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "md5_path"

    invoke-virtual {p2}, Lcom/miui/video/base/database/LocalVideoEntity;->getMd5Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-virtual {p2}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/video/base/database/CLVDatabase$2;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    invoke-virtual {p1, p3}, Lcom/miui/video/base/database/TableEntity;->setValues(Landroid/content/ContentValues;)Lcom/miui/video/base/database/TableEntity;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/video/base/database/CLVDatabase;->insertOrUpdate(Lcom/miui/video/base/database/TableEntity;)J

    return-void
.end method

.method public bridge synthetic onTransaction(Lcom/miui/video/base/database/TableEntity;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/video/base/database/CLVDatabase$2;->onTransaction(Lcom/miui/video/base/database/TableEntity;Lcom/miui/video/base/database/LocalVideoEntity;I)V

    return-void
.end method
