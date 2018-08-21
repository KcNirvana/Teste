.class Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$MyOnClickLisener;
.super Ljava/lang/Object;
.source "ShoppingMainListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnClickLisener"
.end annotation


# instance fields
.field private item:Lcom/miui/personalassistant/shopping/bean/Shopping;

.field private position:I

.field final synthetic this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;ILcom/miui/personalassistant/shopping/bean/Shopping;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$MyOnClickLisener;->this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$MyOnClickLisener;->position:I

    iput-object p3, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$MyOnClickLisener;->item:Lcom/miui/personalassistant/shopping/bean/Shopping;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;ILcom/miui/personalassistant/shopping/bean/Shopping;Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$MyOnClickLisener;-><init>(Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;ILcom/miui/personalassistant/shopping/bean/Shopping;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$MyOnClickLisener;->this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    iget-boolean v0, v0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->isEditing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$MyOnClickLisener;->this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    iget v1, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$MyOnClickLisener;->position:I

    invoke-virtual {v0, p1, v1}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->onCheckBoxClick(Landroid/view/View;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$MyOnClickLisener;->this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->access$600(Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$MyOnClickLisener;->item:Lcom/miui/personalassistant/shopping/bean/Shopping;

    iget-object v2, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$MyOnClickLisener;->this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    invoke-static {v2}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->access$700(Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/shopping/util/ShoppingUtil;->jumpIntent(Landroid/content/Context;Lcom/miui/personalassistant/shopping/bean/Shopping;Ljava/lang/String;)V

    goto :goto_0
.end method
