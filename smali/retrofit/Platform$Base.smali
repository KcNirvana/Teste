.class Lretrofit/Platform$Base;
.super Lretrofit/Platform;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Base"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lretrofit/Platform;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lretrofit/Platform$1;)V
    .locals 0

    invoke-direct {p0}, Lretrofit/Platform$Base;-><init>()V

    return-void
.end method


# virtual methods
.method defaultCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    new-instance v0, Lretrofit/Utils$SynchronousExecutor;

    invoke-direct {v0}, Lretrofit/Utils$SynchronousExecutor;-><init>()V

    return-object v0
.end method

.method defaultClient()Lretrofit/client/Client$Provider;
    .locals 2

    invoke-static {}, Lretrofit/Platform;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lretrofit/Platform$OkClientInstantiator;->instantiate()Lretrofit/client/Client;

    move-result-object v0

    :goto_0
    new-instance v1, Lretrofit/Platform$Base$1;

    invoke-direct {v1, p0, v0}, Lretrofit/Platform$Base$1;-><init>(Lretrofit/Platform$Base;Lretrofit/client/Client;)V

    return-object v1

    :cond_0
    new-instance v0, Lretrofit/client/UrlConnectionClient;

    invoke-direct {v0}, Lretrofit/client/UrlConnectionClient;-><init>()V

    goto :goto_0
.end method

.method defaultConverter()Lretrofit/converter/Converter;
    .locals 2

    new-instance v0, Lretrofit/converter/GsonConverter;

    new-instance v1, Lcom/a/a/k;

    invoke-direct {v1}, Lcom/a/a/k;-><init>()V

    invoke-direct {v0, v1}, Lretrofit/converter/GsonConverter;-><init>(Lcom/a/a/k;)V

    return-object v0
.end method

.method defaultHttpExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    new-instance v0, Lretrofit/Platform$Base$2;

    invoke-direct {v0, p0}, Lretrofit/Platform$Base$2;-><init>(Lretrofit/Platform$Base;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method defaultLog()Lretrofit/RestAdapter$Log;
    .locals 1

    new-instance v0, Lretrofit/Platform$Base$3;

    invoke-direct {v0, p0}, Lretrofit/Platform$Base$3;-><init>(Lretrofit/Platform$Base;)V

    return-object v0
.end method
