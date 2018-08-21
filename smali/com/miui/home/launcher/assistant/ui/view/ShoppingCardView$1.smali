.class Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$1;
.super Ljava/lang/Object;
.source "ShoppingCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->reqCurrPrice(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

.field final synthetic val$splist:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$1;->val$splist:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$000()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$000()J

    move-result-wide v10

    sub-long v10, v2, v10

    const-wide/32 v12, 0xea60

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$002(J)J

    const-string/jumbo v10, "ShoppingCardView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "start request count="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    invoke-static {v12}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$1;->val$splist:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/assistant/module/model/Shopping;

    invoke-virtual {v6}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getPrice()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Lcom/miui/home/launcher/assistant/request/ShoppingRequest;

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    invoke-static {v11}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)Landroid/content/Context;

    move-result-object v11

    invoke-direct {v7, v11}, Lcom/miui/home/launcher/assistant/request/ShoppingRequest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getComponentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getUrl()Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    invoke-static {v11, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$300(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    invoke-static {v11, v9}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$400(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/miui/home/launcher/assistant/request/ShoppingRequest;->reqMiShoppPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    const/4 v12, 0x1

    invoke-static {v11, v12, v8, v5}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$500(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v6, v4}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->setPrice(Ljava/lang/String;)V

    :cond_3
    iget-object v11, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    invoke-static {v11}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$110(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)I

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    invoke-static {v11}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)I

    move-result v11

    if-gtz v11, :cond_4

    const-string/jumbo v11, "ShoppingCardView"

    const-string/jumbo v12, "end request, start update"

    invoke-static {v11, v12}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v11

    new-instance v12, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$1$1;

    invoke-direct {v12, p0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$1$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$1;)V

    invoke-virtual {v11, v12}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V

    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, "ShoppingCardView"

    const-string/jumbo v12, "update db data"

    invoke-static {v11, v12}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    invoke-virtual {v6}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$700(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v6}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getComponentName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Lcom/miui/home/launcher/assistant/request/ShoppingRequest;->reqPrice(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v8, v13}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$500(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
