.class Lcom/alipay/mobile/common/a/g;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/common/a/e;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/a/g;->a:Lcom/alipay/mobile/common/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/a/g;->a:Lcom/alipay/mobile/common/a/e;

    invoke-static {v0}, Lcom/alipay/mobile/common/a/e;->a(Lcom/alipay/mobile/common/a/e;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/common/a/g;->a:Lcom/alipay/mobile/common/a/e;

    invoke-static {v1}, Lcom/alipay/mobile/common/a/e;->b(Lcom/alipay/mobile/common/a/e;)Lcom/alipay/mobile/common/a/k;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobile/common/a/k;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/a/g;->a:Lcom/alipay/mobile/common/a/e;

    invoke-static {v2}, Lcom/alipay/mobile/common/a/e;->c(Lcom/alipay/mobile/common/a/e;)Lcom/alipay/mobile/common/a/j;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/a/g;->a:Lcom/alipay/mobile/common/a/e;

    invoke-static {v3}, Lcom/alipay/mobile/common/a/e;->d(Lcom/alipay/mobile/common/a/e;)Lcom/alipay/mobile/common/common/Callback$c;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/a/e;->a(Landroid/widget/ImageView;Ljava/lang/String;Lcom/alipay/mobile/common/a/j;Lcom/alipay/mobile/common/common/Callback$c;)Lcom/alipay/mobile/common/common/Callback$b;

    return-void
.end method
