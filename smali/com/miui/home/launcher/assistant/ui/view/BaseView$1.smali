.class Lcom/miui/home/launcher/assistant/ui/view/BaseView$1;
.super Ljava/lang/Object;
.source "BaseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/BaseView;->initCardMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseView;

.field final synthetic val$menuDropX:I

.field final synthetic val$menuDropY:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/BaseView;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseView;

    iput p2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$1;->val$menuDropX:I

    iput p3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$1;->val$menuDropY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1b090186

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/BaseView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/BaseView;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/BaseView;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$1;->val$menuDropX:I

    neg-int v1, v1

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$1;->val$menuDropY:I

    neg-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/BaseView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onMenuClick()V

    goto :goto_0
.end method
