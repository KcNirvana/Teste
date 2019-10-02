.class Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$3;
.super Ljava/lang/Object;
.source "SyncMediaService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->notifyData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$3;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$3;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;->LOAD_COMPLETED:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->notifyMediaChange(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    return-void
.end method
