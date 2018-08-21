.class Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog$1;
.super Landroid/os/Handler;
.source "MiniProgressDialog.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;->access$000(Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;->access$000(Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x9c40

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v0}, Lcom/alipay/android/app/b/a/j;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;->access$100(Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;)I

    move-result v1

    iput v1, v0, Lcom/alipay/android/app/b/a/j;->a:I

    const/16 v1, 0xa

    iput v1, v0, Lcom/alipay/android/app/b/a/j;->b:I

    const/16 v1, 0x7d8

    iput v1, v0, Lcom/alipay/android/app/b/a/j;->c:I

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "\u8bf7\u6c42\u5904\u7406\u8d85\u65f6"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    invoke-virtual {p0, v4}, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog$1;->removeMessages(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    invoke-static {v0, v6, v7}, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;->access$002(Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;J)J

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v4, v0, v1}, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
