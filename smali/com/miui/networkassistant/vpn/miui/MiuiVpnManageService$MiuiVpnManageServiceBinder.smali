.class Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;
.super Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService$Stub;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;


# direct methods
.method private constructor <init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V

    return-void
.end method


# virtual methods
.method public connectVpn(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap5(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCoupons()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap15(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V

    return-void
.end method

.method public getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1, p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap11(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettingEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1, p2, p3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap10(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportApps(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getSupportApps"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap13(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportVpn()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getSupportVpn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap12(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVpnEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getVpnEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1, p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap0(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap8(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public refreshUserState()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->refreshUserState()I

    move-result v0

    return v0
.end method

.method public registerCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap20(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V

    return-void
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1, p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap2(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSettingEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1, p2, p3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap1(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setVpnEnabled(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setVpnEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1, p2, p3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap9(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public unregisterCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap23(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V

    return-void
.end method
