.class abstract Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker;
.super Ljava/lang/Object;
.source "ServiceTokenUtilImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MyWorker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract realWork()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end method

.method work()Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;-><init>(Lcom/xiaomi/accountsdk/futureservice/ClientFuture$ClientCallback;)V

    invoke-static {}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;->access$100()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker$1;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker$1;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker;Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
