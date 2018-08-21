.class Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;
.super Ljava/lang/Object;
.source "FlybirdWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

.field final synthetic val$frameData:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

.field final synthetic val$onLoadAction:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic val$trade:Lcom/alipay/android/app/b/d/a;

.field final synthetic val$type:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;Lcom/alipay/android/app/b/d/a;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->val$frameData:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->val$trade:Lcom/alipay/android/app/b/d/a;

    iput-object p4, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->val$onLoadAction:Lcom/alipay/android/app/json/JSONObject;

    iput-object p5, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->val$type:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->access$1700(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Lcom/alipay/android/app/birdnest/a;->a()Lcom/alipay/android/app/birdnest/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->access$1800(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->val$frameData:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v2}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmTpId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->val$frameData:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmTplString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->val$frameData:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v4}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmTemplateContentData()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v6}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->access$1900(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getShowerActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v7}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->access$2000(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->val$trade:Lcom/alipay/android/app/b/d/a;

    invoke-virtual {v9}, Lcom/alipay/android/app/b/d/a;->l()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Lcom/alipay/android/app/birdnest/a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Landroid/app/Activity;Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-static {v2, v3}, Lcom/alipay/android/app/statistic/h;->e(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->access$2100(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->val$frameData:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v1, v0, v4, v5}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->showContentView(Landroid/view/View;ILcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const/4 v1, 0x4

    const-string/jumbo v4, "phonecashiermsp#flybird"

    const-string/jumbo v5, "FlybirdWindowManger.mHandler.post.run"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "show view time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "msms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v4, v5, v6}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/alipay/android/app/statistic/h;->c(J)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->val$frameData:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->setmContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->val$onLoadAction:Lcom/alipay/android/app/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->val$type:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->isDelayEventType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->val$type:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->setDelayTime(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->val$type:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->executeOnloadAction(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    :cond_0
    const-string/jumbo v0, "tpl"

    const-string/jumbo v1, "render-success"

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->val$frameData:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v2}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmTpId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "tpl"

    const-string/jumbo v2, "render-fail"

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->val$frameData:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmTpId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->access$2200(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I

    move-result v1

    invoke-static {v1, v0}, Lcom/alipay/android/app/g/b;->a(ILjava/lang/Throwable;)V

    goto :goto_0
.end method
