.class Lcom/miui/video/player/service/localvideo/utils/DownloadUtils$1;
.super Ljava/lang/Object;
.source "DownloadUtils.java"

# interfaces
.implements Lcom/miui/video/base/common/task/IDownloadTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils$1;->this$0:Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadBegin(Lcom/miui/video/base/common/task/TaskEntity;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getTaskListener()Lcom/miui/video/base/common/task/ITaskListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getTaskListener()Lcom/miui/video/base/common/task/ITaskListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getInEntity()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/miui/video/base/common/task/ITaskListener;->onTaskBegin(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onDownloadError(Lcom/miui/video/base/common/task/TaskEntity;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getTaskListener()Lcom/miui/video/base/common/task/ITaskListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getState()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils$1;->this$0:Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getKeepKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->access$000(Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;Ljava/lang/String;)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils$1;->this$0:Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->access$100(Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;)Z

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getTaskListener()Lcom/miui/video/base/common/task/ITaskListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getInEntity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getState()I

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/miui/video/base/common/task/ITaskListener;->onTaskError(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onDownloadFinished(Lcom/miui/video/base/common/task/TaskEntity;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils$1;->this$0:Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getKeepKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->access$000(Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils$1;->this$0:Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->access$100(Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;)Z

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getTaskListener()Lcom/miui/video/base/common/task/ITaskListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getTaskListener()Lcom/miui/video/base/common/task/ITaskListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getInEntity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getOutEntity()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/miui/video/base/common/task/ITaskListener;->onTaskFinished(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onDownloadProgress(Lcom/miui/video/base/common/task/TaskEntity;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getTaskListener()Lcom/miui/video/base/common/task/ITaskListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getTaskListener()Lcom/miui/video/base/common/task/ITaskListener;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4}, Lcom/miui/video/base/common/task/ITaskListener;->onTaskProgress(Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
