.class final Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionUpdated(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->-wrap1(Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;)V

    :cond_0
    return-void
.end method
