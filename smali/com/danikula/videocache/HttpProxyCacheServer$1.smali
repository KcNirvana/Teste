.class Lcom/danikula/videocache/HttpProxyCacheServer$1;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danikula/videocache/HttpProxyCacheServer;->preCache(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danikula/videocache/HttpProxyCacheServer;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/danikula/videocache/HttpProxyCacheServer;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCacheServer$1;->this$0:Lcom/danikula/videocache/HttpProxyCacheServer;

    iput-object p2, p0, Lcom/danikula/videocache/HttpProxyCacheServer$1;->val$uri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer$1;->this$0:Lcom/danikula/videocache/HttpProxyCacheServer;

    invoke-static {v0}, Lcom/danikula/videocache/HttpProxyCacheServer;->access$100(Lcom/danikula/videocache/HttpProxyCacheServer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer$1;->val$uri:Ljava/lang/String;

    invoke-static {v1}, Lcom/danikula/videocache/ProxyCacheUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer$1;->this$0:Lcom/danikula/videocache/HttpProxyCacheServer;

    invoke-static {v2, v1}, Lcom/danikula/videocache/HttpProxyCacheServer;->access$200(Lcom/danikula/videocache/HttpProxyCacheServer;Ljava/lang/String;)Lcom/danikula/videocache/HttpProxyCacheServerClients;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danikula/videocache/HttpProxyCacheServerClients;->processFirstCache()V
    :try_end_0
    .catch Lcom/danikula/videocache/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {}, Lcom/danikula/videocache/HttpProxyCacheServer;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error process pre-caching"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
