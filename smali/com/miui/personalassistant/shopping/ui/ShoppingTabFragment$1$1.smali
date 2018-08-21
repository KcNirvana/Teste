.class Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1$1;
.super Ljava/lang/Object;
.source "ShoppingTabFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;

    iget-object v0, v0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$000(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;

    iget-object v0, v0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$000(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;

    iget-object v0, v0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->updateUIToTip(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;

    iget-object v0, v0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->updateUIToTip(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;

    iget-object v0, v0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    iget-object v0, v0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mAdapter:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;

    iget-object v1, v1, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$000(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->setData(Ljava/util/List;)V

    goto :goto_0
.end method
