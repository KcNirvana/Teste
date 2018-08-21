.class Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$1;
.super Ljava/lang/Object;
.source "FavoriteListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->resetHeight(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;

.field final synthetic val$holder:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$1;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;

    iput-object p2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$1;->val$holder:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$1;->val$holder:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;->access$000(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$1;->val$holder:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;->access$200(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$1;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->access$400(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_0
    iget-object v1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$1;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->access$600(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$1;->val$holder:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;->access$000(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$1;->val$holder:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;->access$100(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$1;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->access$500(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method
