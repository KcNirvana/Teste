.class Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$5;
.super Ljava/lang/Object;
.source "MiniWebActivityAdapter.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$5;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$5;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$5;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$100(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "webonGoback"

    invoke-static {v1, v0}, Lcom/alipay/android/app/statistic/h;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$5;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$100(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$5;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$500(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Lcom/alipay/android/app/ui/quickpay/window/web/b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$5;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$500(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Lcom/alipay/android/app/ui/quickpay/window/web/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/web/b;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$5;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$600(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "webonExit"

    invoke-static {v1, v0}, Lcom/alipay/android/app/statistic/h;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$5;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$700(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;Z)V

    goto :goto_0
.end method
