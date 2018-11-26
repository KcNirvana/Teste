.class final Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;

.field final synthetic val$slotNum:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;

    iput p2, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$3;->val$slotNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionUpdated(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$3;->val$slotNum:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->-wrap0(Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;I)V

    :cond_0
    return-void
.end method
