.class Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher$1;
.super Ljava/lang/Object;
.source "MediaChangeWatcher.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher$OnMediaAddedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher$1;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdded(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDirectoryPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher$1;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;->access$000(Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDirectoryPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher;->addFileWatcher(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
