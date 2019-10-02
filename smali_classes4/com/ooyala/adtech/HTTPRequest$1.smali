.class final Lcom/ooyala/adtech/HTTPRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/adtech/HTTPRequest;-><init>(Ljava/net/URL;FLcom/ooyala/adtech/HTTPRequest$b;Lcom/ooyala/adtech/HTTPRequest$LogItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ooyala/adtech/HTTPRequest;


# direct methods
.method constructor <init>(Lcom/ooyala/adtech/HTTPRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/adtech/HTTPRequest$1;->a:Lcom/ooyala/adtech/HTTPRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    sget-object v0, Lcom/ooyala/adtech/HTTPRequest;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const v4, 0x7fffffff

    const-wide/16 v5, 0x10

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/ooyala/adtech/HTTPRequest;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    iget-object v0, p0, Lcom/ooyala/adtech/HTTPRequest$1;->a:Lcom/ooyala/adtech/HTTPRequest;

    iget-object v0, v0, Lcom/ooyala/adtech/HTTPRequest;->c:Lcom/ooyala/adtech/HTTPRequest$a;

    sget-object v2, Lcom/ooyala/adtech/HTTPRequest;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Lcom/ooyala/adtech/HTTPRequest$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ooyala/adtech/HTTPRequest$1;->a:Lcom/ooyala/adtech/HTTPRequest;

    iget-object v0, v0, Lcom/ooyala/adtech/HTTPRequest;->c:Lcom/ooyala/adtech/HTTPRequest$a;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/HTTPRequest$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
