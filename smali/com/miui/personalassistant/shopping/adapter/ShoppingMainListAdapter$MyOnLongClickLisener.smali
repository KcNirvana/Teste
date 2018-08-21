.class Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$MyOnLongClickLisener;
.super Ljava/lang/Object;
.source "ShoppingMainListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnLongClickLisener"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$MyOnLongClickLisener;->this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$MyOnLongClickLisener;->position:I

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$MyOnLongClickLisener;->this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    iget-boolean v1, v1, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->isEditing:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$MyOnLongClickLisener;->this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    iput-boolean v0, v1, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->isEditing:Z

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$MyOnLongClickLisener;->this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->access$800(Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$MyOnLongClickLisener;->this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    invoke-virtual {v0}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$MyOnLongClickLisener;->this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->access$900(Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;)Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$MyOnLongClickLisener;->this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->access$900(Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;)Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;

    move-result-object v0

    iget v1, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$MyOnLongClickLisener;->position:I

    invoke-interface {v0, v1}, Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;->onItemLongClick(I)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
