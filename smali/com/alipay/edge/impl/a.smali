.class Lcom/alipay/edge/impl/a;
.super Ljava/lang/Object;
.source "EdgeRiskServiceImpl.java"

# interfaces
.implements Lcom/alipay/edge/impl/EdgeNativeBridge$a;


# instance fields
.field final synthetic a:Lcom/alipay/edge/impl/EdgeRiskServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/edge/impl/EdgeRiskServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/edge/impl/a;->a:Lcom/alipay/edge/impl/EdgeRiskServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/edge/impl/a;->a:Lcom/alipay/edge/impl/EdgeRiskServiceImpl;

    invoke-static {v0}, Lcom/alipay/edge/impl/EdgeRiskServiceImpl;->access$200(Lcom/alipay/edge/impl/EdgeRiskServiceImpl;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/alipay/edge/impl/b;

    invoke-direct {v1, p0, p1}, Lcom/alipay/edge/impl/b;-><init>(Lcom/alipay/edge/impl/a;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
