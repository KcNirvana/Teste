.class Lcom/miui/video/base/common/task/DownloadTask$2;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lcom/miui/video/base/common/impl/IUIListener;


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

    iput-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask$2;->this$0:Lcom/miui/video/base/common/task/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask$2;->this$0:Lcom/miui/video/base/common/task/DownloadTask;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-static {v0, v1}, Lcom/miui/video/base/common/task/DownloadTask;->access$100(Lcom/miui/video/base/common/task/DownloadTask;[Ljava/lang/Object;)V

    return-void
.end method
