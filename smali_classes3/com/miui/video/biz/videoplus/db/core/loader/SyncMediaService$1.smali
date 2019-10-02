.class Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$1;
.super Landroid/os/Handler;
.source "SyncMediaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;
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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$1;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$1;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->syncMediaDatas()V

    return-void
.end method
