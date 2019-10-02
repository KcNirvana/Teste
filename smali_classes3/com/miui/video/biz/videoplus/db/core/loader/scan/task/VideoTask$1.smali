.class Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask$1;
.super Ljava/lang/Object;
.source "VideoTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;->getRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask$1;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;->start()V

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask$1;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;->access$000(Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask$1;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;->access$100(Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;)Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;->queryAllVideosFromMediaStore(Landroid/content/Context;Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;)V

    return-void
.end method
