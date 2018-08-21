.class public Lcom/alipay/android/app/ui/quickpay/window/web/b;
.super Ljava/lang/Object;
.source "JsWebViewWindowStack.java"


# instance fields
.field private a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/web/b;->a:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public a()Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/web/b;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    return-object v0
.end method

.method public a(Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/web/b;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/web/b;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/web/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/web/b;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;->destroy()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/web/b;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_0
.end method
