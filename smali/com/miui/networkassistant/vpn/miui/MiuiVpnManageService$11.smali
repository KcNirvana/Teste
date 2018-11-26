.class final Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$11;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$11;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get14(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$11;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get13(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$11;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    iget-object v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$11;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get14(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap3(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$11;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get3(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/common/b/k;->aIw(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$11;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$11;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get14(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap7(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$11;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$11;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get14(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap4(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)I

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0
.end method
