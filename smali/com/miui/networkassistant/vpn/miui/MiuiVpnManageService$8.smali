.class final Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

.field final synthetic val$vpnEnabled:Z

.field final synthetic val$vpnType:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    iput-boolean p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->val$vpnEnabled:Z

    iput p3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->val$vpnType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->val$vpnEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get14(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap6(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->val$vpnEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get14(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get14(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v0

    iget v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->val$vpnType:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap6(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get14(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    iget v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->val$vpnType:I

    invoke-static {v0, v2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap3(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get3(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/common/b/k;->aIw(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    iget v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->val$vpnType:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap4(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)I

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method
