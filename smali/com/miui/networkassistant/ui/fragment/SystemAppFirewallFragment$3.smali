.class final Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$slotNum:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$3;->val$pkgName:Ljava/lang/String;

    iput p3, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$3;->val$slotNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionUpdated(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$3;->val$pkgName:Ljava/lang/String;

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$3;->val$slotNum:I

    invoke-static {v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->-wrap0(Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)V

    :cond_0
    return-void
.end method
