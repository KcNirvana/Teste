.class Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback$2;
.super Ljava/lang/Object;
.source "FavoriteMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback;

.field final synthetic val$actionMode:Landroid/view/ActionMode;

.field final synthetic val$deletedList:Ljava/util/List;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback;Ljava/util/List;ILandroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback$2;->this$1:Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback;

    iput-object p2, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback$2;->val$deletedList:Ljava/util/List;

    iput p3, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback$2;->val$size:I

    iput-object p4, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback$2;->val$actionMode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback$2;->this$1:Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback;

    iget-object v0, v0, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback$2;->val$deletedList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/personalassistant/favorite/util/ClipUtil;->clearClipboardCache(Landroid/content/Context;Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback$2;->this$1:Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback;

    iget-object v0, v0, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity;

    iget v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback$2;->val$size:I

    invoke-static {v0, v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity;->access$700(Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity;I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback$2;->this$1:Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback;

    iget-object v0, v0, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity;

    iget v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback$2;->val$size:I

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback$2;->val$deletedList:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity;->access$800(Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity;ILjava/util/List;)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback$2;->this$1:Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback;

    iget-object v0, v0, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback$2;->val$deletedList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity;->access$900(Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity;Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity$ActionModeCallback$2;->val$actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    return-void
.end method
