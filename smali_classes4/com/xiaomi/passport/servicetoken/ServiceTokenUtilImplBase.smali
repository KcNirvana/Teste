.class abstract Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;
.super Ljava/lang/Object;
.source "ServiceTokenUtilImplBase.java"

# interfaces
.implements Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker;
    }
.end annotation


# static fields
.field private static executor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public canAccessAccount(Landroid/content/Context;)Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture<",
            "Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$3;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$3;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$3;->start()Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method protected abstract canAccessAccountImpl(Landroid/content/Context;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
.end method

.method public final getServiceToken(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$1;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$1;->work()Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getServiceTokenImpl(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end method

.method public final invalidateServiceToken(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$2;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)V

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$2;->work()Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object p1

    return-object p1
.end method

.method protected abstract invalidateServiceTokenImpl(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end method
