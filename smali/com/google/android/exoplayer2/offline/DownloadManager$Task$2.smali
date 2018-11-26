.class Lcom/google/android/exoplayer2/offline/DownloadManager$Task$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

.field final synthetic val$finalError:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task$2;->this$0:Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task$2;->val$finalError:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task$2;->this$0:Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task$2;->val$finalError:Ljava/lang/Throwable;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task$2;->val$finalError:Ljava/lang/Throwable;

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$2500(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;IILjava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task$2;->this$0:Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    const/4 v1, 0x6

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$2100(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task$2;->this$0:Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    const/4 v1, 0x7

    invoke-static {v0, v1, v4}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$2100(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;II)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
