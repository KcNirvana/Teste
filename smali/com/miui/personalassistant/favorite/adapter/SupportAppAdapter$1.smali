.class Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$1;
.super Ljava/lang/Object;
.source "SupportAppAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;

.field final synthetic val$sa:Lcom/miui/personalassistant/favorite/module/SupportApp;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;Lcom/miui/personalassistant/favorite/module/SupportApp;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$1;->this$0:Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;

    iput-object p2, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$1;->val$sa:Lcom/miui/personalassistant/favorite/module/SupportApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$1;->this$0:Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->access$100(Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;)Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$1;->val$sa:Lcom/miui/personalassistant/favorite/module/SupportApp;

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$1;->this$0:Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->access$000(Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$OnClickListener;->onGridItemClick(Lcom/miui/personalassistant/favorite/module/SupportApp;Z)V

    return-void
.end method
