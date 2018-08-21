.class Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3$1;
.super Ljava/lang/Object;
.source "ShoppingSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3;

    iput-object p2, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3$1;->val$list:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3$1;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3;

    iget-object v0, v0, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;->access$500(Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3;

    iget-object v0, v0, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;->access$400(Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3;

    iget-object v0, v0, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;->access$700(Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;)Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3$1;->val$list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->setData(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3;

    iget-object v0, v0, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;->access$500(Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3;

    iget-object v0, v0, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;->access$400(Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
