.class public abstract Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;
.super Lcom/xiaomi/accountsdk/futureservice/ClientFuture;
.source "MiAccountManagerFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/accountsdk/futureservice/ClientFuture<",
        "TV;TV;>;"
    }
.end annotation


# static fields
.field private static executor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture;-><init>(Lcom/xiaomi/accountsdk/futureservice/ClientFuture$ClientCallback;)V

    return-void
.end method


# virtual methods
.method protected convertServerDataToClientData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-object p1
.end method

.method public abstract doWork()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public interpretExecutionException(Ljava/util/concurrent/ExecutionException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not going here"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture<",
            "TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture$1;-><init>(Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method
