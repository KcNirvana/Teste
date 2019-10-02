.class Lcom/miui/video/base/common/task/DownloadTask$1;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lcom/miui/video/base/common/impl/ICancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/common/task/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/base/common/task/DownloadTask;


# direct methods
.method constructor <init>(Lcom/miui/video/base/common/task/DownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask$1;->this$0:Lcom/miui/video/base/common/task/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancel()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask$1;->this$0:Lcom/miui/video/base/common/task/DownloadTask;

    invoke-virtual {v0}, Lcom/miui/video/base/common/task/DownloadTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask$1;->this$0:Lcom/miui/video/base/common/task/DownloadTask;

    invoke-static {v0}, Lcom/miui/video/base/common/task/DownloadTask;->access$000(Lcom/miui/video/base/common/task/DownloadTask;)Lcom/miui/video/base/common/task/TaskEntity;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
