.class Lcom/alipay/edge/impl/b;
.super Ljava/lang/Object;
.source "EdgeRiskServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/alipay/edge/impl/a;


# direct methods
.method constructor <init>(Lcom/alipay/edge/impl/a;[B)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/edge/impl/b;->b:Lcom/alipay/edge/impl/a;

    iput-object p2, p0, Lcom/alipay/edge/impl/b;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/edge/impl/b;->a:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/alipay/edge/impl/EdgeRiskServiceImpl;->access$000()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "t0dbg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncWithServer reveived data, data length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/edge/impl/b;->b:Lcom/alipay/edge/impl/a;

    iget-object v0, v0, Lcom/alipay/edge/impl/a;->a:Lcom/alipay/edge/impl/EdgeRiskServiceImpl;

    iget-object v1, p0, Lcom/alipay/edge/impl/b;->a:[B

    invoke-static {v0, v1}, Lcom/alipay/edge/impl/EdgeRiskServiceImpl;->access$100(Lcom/alipay/edge/impl/EdgeRiskServiceImpl;[B)Z

    invoke-static {}, Lcom/alipay/edge/impl/EdgeRiskServiceImpl;->access$000()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "t0dbg"

    const-string/jumbo v2, "syncWithServer finished."

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/edge/impl/b;->a:[B

    array-length v0, v0

    goto :goto_0
.end method
