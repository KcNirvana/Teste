.class Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnLongClickLisener;
.super Ljava/lang/Object;
.source "FavoriteMainListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnLongClickLisener"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnLongClickLisener;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnLongClickLisener;->position:I

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnLongClickLisener;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    iget-boolean v1, v1, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->isEditing:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnLongClickLisener;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    iput-boolean v0, v1, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->isEditing:Z

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnLongClickLisener;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->access$800(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnLongClickLisener;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnLongClickLisener;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->access$900(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;)Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnLongClickLisener;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->access$900(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;)Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;

    move-result-object v0

    iget v1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnLongClickLisener;->position:I

    invoke-interface {v0, v1}, Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;->onItemLongClick(I)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
