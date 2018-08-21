.class Lcom/miui/personalassistant/express/fragment/QueryFragment$1;
.super Ljava/lang/Object;
.source "QueryFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/fragment/QueryFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/fragment/QueryFragment;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/express/fragment/QueryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment$1;->this$0:Lcom/miui/personalassistant/express/fragment/QueryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment$1;->this$0:Lcom/miui/personalassistant/express/fragment/QueryFragment;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment$1;->this$0:Lcom/miui/personalassistant/express/fragment/QueryFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->access$200(Lcom/miui/personalassistant/express/fragment/QueryFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->access$102(Lcom/miui/personalassistant/express/fragment/QueryFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment$1;->this$0:Lcom/miui/personalassistant/express/fragment/QueryFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->access$300(Lcom/miui/personalassistant/express/fragment/QueryFragment;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
