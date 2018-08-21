.class Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$1;
.super Ljava/lang/Object;
.source "ShoppingMainListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$1;->this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    iput p2, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$1;->this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    iget v1, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$1;->val$position:I

    invoke-virtual {v0, p1, v1}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->onCheckBoxClick(Landroid/view/View;I)V

    return-void
.end method
