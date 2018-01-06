.class Lcom/squareup/okhttp/internal/DiskLruCache$Editor$FaultHidingSink;
.super La/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingSink"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;La/z;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor$FaultHidingSink;->this$1:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    invoke-direct {p0, p2}, La/l;-><init>(La/z;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, La/l;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor$FaultHidingSink;->this$1:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    iget-object v1, v0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor$FaultHidingSink;->this$1:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->access$1802(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Z)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, La/l;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor$FaultHidingSink;->this$1:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    iget-object v1, v0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor$FaultHidingSink;->this$1:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->access$1802(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Z)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public write(La/e;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3}, La/l;->write(La/e;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor$FaultHidingSink;->this$1:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    iget-object v1, v0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor$FaultHidingSink;->this$1:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->access$1802(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Z)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
