.class Lcom/miui/personalassistant/ui/widget/PaListView$4$1$1;
.super Ljava/lang/Object;
.source "PaListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/widget/PaListView$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/personalassistant/ui/widget/PaListView$4$1;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/widget/PaListView$4$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$4$1$1;->this$2:Lcom/miui/personalassistant/ui/widget/PaListView$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView$4$1$1;->this$2:Lcom/miui/personalassistant/ui/widget/PaListView$4$1;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/PaListView$4$1;->this$1:Lcom/miui/personalassistant/ui/widget/PaListView$4;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/PaListView$4;->this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/widget/PaListView;->access$200(Lcom/miui/personalassistant/ui/widget/PaListView;)Lcom/miui/personalassistant/ui/widget/PaListView$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView$4$1$1;->this$2:Lcom/miui/personalassistant/ui/widget/PaListView$4$1;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/PaListView$4$1;->this$1:Lcom/miui/personalassistant/ui/widget/PaListView$4;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/PaListView$4;->this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/widget/PaListView;->access$200(Lcom/miui/personalassistant/ui/widget/PaListView;)Lcom/miui/personalassistant/ui/widget/PaListView$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$4$1$1;->this$2:Lcom/miui/personalassistant/ui/widget/PaListView$4$1;

    iget-object v1, v1, Lcom/miui/personalassistant/ui/widget/PaListView$4$1;->this$1:Lcom/miui/personalassistant/ui/widget/PaListView$4;

    iget-object v1, v1, Lcom/miui/personalassistant/ui/widget/PaListView$4;->val$item:Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-interface {v0, v1}, Lcom/miui/personalassistant/ui/widget/PaListView$OnClickListener;->onListFunctionItemClick(Lcom/miui/personalassistant/model/FunctionLaunch;)V

    :cond_0
    return-void
.end method
