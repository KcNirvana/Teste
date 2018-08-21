.class Lcom/miui/personalassistant/express/fragment/QueryFragment$2;
.super Ljava/lang/Object;
.source "QueryFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/fragment/QueryFragment;->setupOrderNumber()V
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

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/QueryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/QueryFragment;

    iget-object v1, v1, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/QueryFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->access$200(Lcom/miui/personalassistant/express/fragment/QueryFragment;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
