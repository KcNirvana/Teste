.class Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$PingIpAddrTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field mAddress:Ljava/net/InetAddress;

.field mCount:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$PingIpAddrTask;->mAddress:Ljava/net/InetAddress;

    iput p2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$PingIpAddrTask;->mCount:I

    iget v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$PingIpAddrTask;->mCount:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$PingIpAddrTask;->mCount:I

    :cond_0
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$PingIpAddrTask;->mAddress:Ljava/net/InetAddress;

    iget v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$PingIpAddrTask;->mCount:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->pingIpAddr(Ljava/net/InetAddress;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$PingIpAddrTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
