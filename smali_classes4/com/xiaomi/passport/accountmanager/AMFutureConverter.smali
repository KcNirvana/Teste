.class public final Lcom/xiaomi/passport/accountmanager/AMFutureConverter;
.super Ljava/lang/Object;
.source "AMFutureConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/accountmanager/AMFutureConverter$MyAccountManagerFuture;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromServiceTokenFuture(Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)Landroid/accounts/AccountManagerFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/passport/accountmanager/AMFutureConverter$MyAccountManagerFuture;

    invoke-direct {v0}, Lcom/xiaomi/passport/accountmanager/AMFutureConverter$MyAccountManagerFuture;-><init>()V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/xiaomi/passport/accountmanager/AMFutureConverter$1;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/passport/accountmanager/AMFutureConverter$1;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;Lcom/xiaomi/passport/accountmanager/AMFutureConverter$MyAccountManagerFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
