.class Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;
.super Ljava/lang/Object;
.source "ShoppingTabFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->updateDataPrice(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

.field final synthetic val$record:Lcom/miui/personalassistant/shopping/bean/Shopping;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;Lcom/miui/personalassistant/shopping/bean/Shopping;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    iput-object p2, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;->val$record:Lcom/miui/personalassistant/shopping/bean/Shopping;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v7, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;->val$record:Lcom/miui/personalassistant/shopping/bean/Shopping;

    invoke-virtual {v7}, Lcom/miui/personalassistant/shopping/bean/Shopping;->getPrice()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/miui/personalassistant/favorite/request/HttpRequest;

    iget-object v7, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-static {v7}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$600(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/miui/personalassistant/favorite/request/HttpRequest;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;->val$record:Lcom/miui/personalassistant/shopping/bean/Shopping;

    invoke-virtual {v7}, Lcom/miui/personalassistant/shopping/bean/Shopping;->getComponentName()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;->val$record:Lcom/miui/personalassistant/shopping/bean/Shopping;

    invoke-virtual {v7}, Lcom/miui/personalassistant/shopping/bean/Shopping;->getUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-static {v7, v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$700(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-static {v7, v6}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$800(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/miui/personalassistant/favorite/request/HttpRequest;->reqMiShoppPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    const/4 v8, 0x1

    invoke-static {v7, v8, v5, v3}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$900(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;->val$record:Lcom/miui/personalassistant/shopping/bean/Shopping;

    invoke-virtual {v7, v2}, Lcom/miui/personalassistant/shopping/bean/Shopping;->setPrice(Ljava/lang/String;)V

    :cond_0
    iget-object v7, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-static {v7}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$1010(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)I

    iget-object v7, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-static {v7}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$1000(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)I

    move-result v7

    if-gtz v7, :cond_1

    new-instance v7, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3$1;

    invoke-direct {v7, p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3$1;-><init>(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;)V

    invoke-static {v7}, Lcom/miui/personalassistant/util/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-static {v7}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$100(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)Lcom/miui/personalassistant/shopping/provider/ShoppingDao;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;->val$record:Lcom/miui/personalassistant/shopping/bean/Shopping;

    invoke-virtual {v8}, Lcom/miui/personalassistant/shopping/bean/Shopping;->getUrl()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "price"

    invoke-virtual {v7, v8, v9, v2}, Lcom/miui/personalassistant/shopping/provider/ShoppingDao;->updateFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v7, "1"

    invoke-virtual {v4, v6, v0, v7}, Lcom/miui/personalassistant/favorite/request/HttpRequest;->reqShoppingParseServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v5, v9}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$900(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
