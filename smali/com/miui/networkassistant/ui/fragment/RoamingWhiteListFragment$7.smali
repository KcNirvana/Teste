.class final Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionUpdated(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->-get4(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)Lcom/miui/networkassistant/model/WhiteListItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->-wrap2(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;Lcom/miui/networkassistant/model/WhiteListItem;Z)V

    :cond_0
    return-void
.end method
