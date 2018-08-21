.class Lcom/alipay/mobile/common/http/d;
.super Ljava/lang/Object;
.source "HttpTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/common/http/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/http/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/http/d;->a:Lcom/alipay/mobile/common/http/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d;->a:Lcom/alipay/mobile/common/http/c;

    invoke-static {v0}, Lcom/alipay/mobile/common/http/c;->a(Lcom/alipay/mobile/common/http/c;)V

    return-void
.end method
