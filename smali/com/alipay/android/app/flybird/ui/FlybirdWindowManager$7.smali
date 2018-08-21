.class Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$7;
.super Ljava/lang/Object;
.source "FlybirdWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

.field final synthetic val$frameData:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$7;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$7;->val$frameData:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/birdnest/a;->a()Lcom/alipay/android/app/birdnest/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$7;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->access$1400(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getShowerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/birdnest/a;->a(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$7;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->access$1500(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$7;->val$frameData:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmContentView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$7;->val$frameData:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v2, v3, v4, v5}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->showContentView(Landroid/view/View;ILcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/h;->c(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$7;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->access$1600(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I

    move-result v1

    invoke-static {v1, v0}, Lcom/alipay/android/app/g/b;->a(ILjava/lang/Throwable;)V

    goto :goto_0
.end method
