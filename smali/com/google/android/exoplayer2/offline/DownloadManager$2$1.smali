.class Lcom/google/android/exoplayer2/offline/DownloadManager$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/google/android/exoplayer2/offline/DownloadManager$2;

.field final synthetic val$actions:[Lcom/google/android/exoplayer2/offline/DownloadAction;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadManager$2;[Lcom/google/android/exoplayer2/offline/DownloadAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$2$1;->this$1:Lcom/google/android/exoplayer2/offline/DownloadManager$2;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$2$1;->val$actions:[Lcom/google/android/exoplayer2/offline/DownloadAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$2$1;->this$1:Lcom/google/android/exoplayer2/offline/DownloadManager$2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadManager$2;->this$0:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->access$1100(Lcom/google/android/exoplayer2/offline/DownloadManager;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$2$1;->this$1:Lcom/google/android/exoplayer2/offline/DownloadManager$2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadManager$2;->this$0:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->access$1200(Lcom/google/android/exoplayer2/offline/DownloadManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$2$1;->this$1:Lcom/google/android/exoplayer2/offline/DownloadManager$2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadManager$2;->this$0:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->access$1200(Lcom/google/android/exoplayer2/offline/DownloadManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$2$1;->val$actions:[Lcom/google/android/exoplayer2/offline/DownloadAction;

    array-length v4, v3

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_1

    const-string/jumbo v0, "Tasks are created."

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->access$1000(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$2$1;->this$1:Lcom/google/android/exoplayer2/offline/DownloadManager$2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadManager$2;->this$0:Lcom/google/android/exoplayer2/offline/DownloadManager;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/offline/DownloadManager;->access$1402(Lcom/google/android/exoplayer2/offline/DownloadManager;Z)Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$2$1;->this$1:Lcom/google/android/exoplayer2/offline/DownloadManager$2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadManager$2;->this$0:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->access$1500(Lcom/google/android/exoplayer2/offline/DownloadManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$2$1;->this$1:Lcom/google/android/exoplayer2/offline/DownloadManager$2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadManager$2;->this$0:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->access$1700(Lcom/google/android/exoplayer2/offline/DownloadManager;)V

    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$2$1;->this$1:Lcom/google/android/exoplayer2/offline/DownloadManager$2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadManager$2;->this$0:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->access$1200(Lcom/google/android/exoplayer2/offline/DownloadManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    return-void

    :cond_0
    return-void

    :cond_1
    aget-object v5, v3, v0

    iget-object v6, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$2$1;->this$1:Lcom/google/android/exoplayer2/offline/DownloadManager$2;

    iget-object v6, v6, Lcom/google/android/exoplayer2/offline/DownloadManager$2;->this$0:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/offline/DownloadManager;->access$1300(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/DownloadAction;)Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;

    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$2$1;->this$1:Lcom/google/android/exoplayer2/offline/DownloadManager$2;

    iget-object v4, v4, Lcom/google/android/exoplayer2/offline/DownloadManager$2;->this$0:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;->onInitialized(Lcom/google/android/exoplayer2/offline/DownloadManager;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$2$1;->this$1:Lcom/google/android/exoplayer2/offline/DownloadManager$2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadManager$2;->this$0:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->access$1200(Lcom/google/android/exoplayer2/offline/DownloadManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$2$1;->this$1:Lcom/google/android/exoplayer2/offline/DownloadManager$2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadManager$2;->this$0:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->access$1600(Lcom/google/android/exoplayer2/offline/DownloadManager;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$2$1;->this$1:Lcom/google/android/exoplayer2/offline/DownloadManager$2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadManager$2;->this$0:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->access$1200(Lcom/google/android/exoplayer2/offline/DownloadManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$100(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)I

    move-result v2

    if-eqz v2, :cond_5

    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$2$1;->this$1:Lcom/google/android/exoplayer2/offline/DownloadManager$2;

    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/DownloadManager$2;->this$0:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->access$1800(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    goto :goto_4
.end method
