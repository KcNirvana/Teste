.class Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3$1;
.super Ljava/lang/Object;
.source "ShoppingTabFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "ShoppingTabFragment"

    const-string/jumbo v1, "end request,price update"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;

    iget-object v0, v0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    iget-object v0, v0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mAdapter:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;

    iget-object v1, v1, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$000(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;

    iget-object v0, v0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$402(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;Z)Z

    return-void
.end method
