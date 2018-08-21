.class Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$1;
.super Ljava/lang/Object;
.source "FavoriteMainListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$1;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    iput p2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$1;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    iget v1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$1;->val$position:I

    invoke-virtual {v0, p1, v1}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->onCheckBoxClick(Landroid/view/View;I)V

    return-void
.end method
