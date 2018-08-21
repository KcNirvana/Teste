.class Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2$1;
.super Ljava/lang/Object;
.source "ShoppingTabFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6

    iget-object v3, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;

    iget-object v3, v3, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-static {v3}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$200(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    iget-object v3, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;

    iget-object v3, v3, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-static {v3}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$300(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    if-ne v1, v3, :cond_1

    const-string/jumbo v3, "ShoppingTabFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lastItemCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v1, 0xa

    iget-object v3, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;

    iget-object v3, v3, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-static {v3}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$308(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)I

    const-string/jumbo v3, "ShoppingTabFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "request page num = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;

    iget-object v5, v5, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-static {v5}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$300(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-le v0, p4, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;

    iget-object v3, v3, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-static {v3}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$000(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    const-string/jumbo v3, "ShoppingTabFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "endCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;

    iget-object v3, v3, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-static {v3}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$000(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;

    iget-object v3, v3, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-static {v3}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$400(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "ShoppingTabFragment"

    const-string/jumbo v4, "start request price"

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;

    iget-object v3, v3, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$402(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;Z)Z

    iget-object v3, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;

    iget-object v3, v3, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-static {v3, v2}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$500(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
