.class Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceCallback;
.super Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback$Stub;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;


# direct methods
.method private constructor <init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceCallback;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceCallback;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V

    return-void
.end method


# virtual methods
.method public isVpnConnected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onQueryCouponsResult(ILjava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceCallback;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1, p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap16(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;ILjava/util/List;)V

    return-void
.end method

.method public onVpnStateChanged(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceCallback;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1, p2, p3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap17(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;IILjava/lang/String;)V

    return-void
.end method
