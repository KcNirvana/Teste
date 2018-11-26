.class final Lcom/miui/common/card/models/AdvCardModel$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/common/card/models/AdvCardModel;

.field final synthetic val$context:Lcom/miui/securityscan/MainActivity;

.field final synthetic val$popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/AdvCardModel;Landroid/widget/PopupWindow;Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel$1;->this$0:Lcom/miui/common/card/models/AdvCardModel;

    iput-object p2, p0, Lcom/miui/common/card/models/AdvCardModel$1;->val$popupWindow:Landroid/widget/PopupWindow;

    iput-object p3, p0, Lcom/miui/common/card/models/AdvCardModel$1;->val$context:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$1;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$1;->val$context:Lcom/miui/securityscan/MainActivity;

    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel$1;->this$0:Lcom/miui/common/card/models/AdvCardModel;

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$1;->this$0:Lcom/miui/common/card/models/AdvCardModel;

    invoke-static {v2}, Lcom/miui/common/card/models/AdvCardModel;->-get2(Lcom/miui/common/card/models/AdvCardModel;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/MainActivity;->Nh(Lcom/miui/common/card/models/BaseCardModel;I)V

    return-void
.end method
