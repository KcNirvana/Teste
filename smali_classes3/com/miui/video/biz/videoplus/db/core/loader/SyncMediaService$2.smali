.class Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$2;
.super Ljava/lang/Object;
.source "SyncMediaService.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$OnMediaLoadListener;


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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$2;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadFinish(ZLjava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    invoke-static {p3}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->access$002(Z)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$2;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->access$100(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$2;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->access$200(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$2;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->access$300(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$2;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->access$400(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$2;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->access$500(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$2;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->access$600(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;->parseAllNotParsed()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$2;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->access$700(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
