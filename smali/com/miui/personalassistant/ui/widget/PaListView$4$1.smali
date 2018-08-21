.class Lcom/miui/personalassistant/ui/widget/PaListView$4$1;
.super Ljava/lang/Object;
.source "PaListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/widget/PaListView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/ui/widget/PaListView$4;

.field final synthetic val$alpha:F

.field final synthetic val$isInstalled:Z


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/widget/PaListView$4;FZ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$4$1;->this$1:Lcom/miui/personalassistant/ui/widget/PaListView$4;

    iput p2, p0, Lcom/miui/personalassistant/ui/widget/PaListView$4$1;->val$alpha:F

    iput-boolean p3, p0, Lcom/miui/personalassistant/ui/widget/PaListView$4$1;->val$isInstalled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView$4$1;->this$1:Lcom/miui/personalassistant/ui/widget/PaListView$4;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/PaListView$4;->val$holder:Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;->mRoot:Landroid/view/View;

    iget v1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$4$1;->val$alpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView$4$1;->val$isInstalled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView$4$1;->this$1:Lcom/miui/personalassistant/ui/widget/PaListView$4;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/PaListView$4;->val$holder:Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;->mRoot:Landroid/view/View;

    new-instance v1, Lcom/miui/personalassistant/ui/widget/PaListView$4$1$1;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/ui/widget/PaListView$4$1$1;-><init>(Lcom/miui/personalassistant/ui/widget/PaListView$4$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView$4$1;->this$1:Lcom/miui/personalassistant/ui/widget/PaListView$4;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/PaListView$4;->val$holder:Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;->mRoot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
