.class Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$2;
.super Ljava/lang/Object;
.source "ImageChangeWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;->batchAdd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;

.field final synthetic val$entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$2;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$2;->val$entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getSyncMediaService()Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;->ADD:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$2;->val$entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->notifyMediaChange(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    return-void
.end method
