.class Lcom/squareup/okhttp/Cache$CacheResponseBody$1;
.super La/m;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/Cache$CacheResponseBody;

.field final synthetic val$snapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/Cache$CacheResponseBody;La/aa;Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/Cache$CacheResponseBody$1;->this$0:Lcom/squareup/okhttp/Cache$CacheResponseBody;

    iput-object p3, p0, Lcom/squareup/okhttp/Cache$CacheResponseBody$1;->val$snapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    invoke-direct {p0, p2}, La/m;-><init>(La/aa;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheResponseBody$1;->val$snapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->close()V

    invoke-super {p0}, La/m;->close()V

    return-void
.end method
