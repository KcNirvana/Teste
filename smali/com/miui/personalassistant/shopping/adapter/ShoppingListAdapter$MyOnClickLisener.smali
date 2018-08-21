.class Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$MyOnClickLisener;
.super Ljava/lang/Object;
.source "ShoppingListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnClickLisener"
.end annotation


# instance fields
.field private item:Lcom/miui/personalassistant/shopping/bean/Shopping;

.field final synthetic this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;Lcom/miui/personalassistant/shopping/bean/Shopping;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$MyOnClickLisener;->this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$MyOnClickLisener;->item:Lcom/miui/personalassistant/shopping/bean/Shopping;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;Lcom/miui/personalassistant/shopping/bean/Shopping;Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$MyOnClickLisener;-><init>(Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;Lcom/miui/personalassistant/shopping/bean/Shopping;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$MyOnClickLisener;->this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->access$500(Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$MyOnClickLisener;->item:Lcom/miui/personalassistant/shopping/bean/Shopping;

    iget-object v2, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$MyOnClickLisener;->this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;

    invoke-static {v2}, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->access$600(Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/shopping/util/ShoppingUtil;->jumpIntent(Landroid/content/Context;Lcom/miui/personalassistant/shopping/bean/Shopping;Ljava/lang/String;)V

    return-void
.end method
