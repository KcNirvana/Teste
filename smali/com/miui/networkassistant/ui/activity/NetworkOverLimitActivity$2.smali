.class final Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;

.field final synthetic val$slotNum:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;

    iput p2, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$2;->val$slotNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;

    const-string/jumbo v1, "100006"

    iget v2, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$2;->val$slotNum:I

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/traffic/purchase/PurchaseUtil;->launchUrl(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->-get0(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
