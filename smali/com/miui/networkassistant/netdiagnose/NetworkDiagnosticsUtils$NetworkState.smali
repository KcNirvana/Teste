.class public final enum Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

.field public static final enum BLOCKED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

.field public static final enum CANCELLED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

.field public static final enum CAPTIVEPORTAL:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

.field public static final enum CONNECTED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

.field public static final enum UNKNOWN:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->UNKNOWN:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    new-instance v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    const-string/jumbo v1, "CANCELLED"

    invoke-direct {v0, v1, v3}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CANCELLED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    new-instance v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CONNECTED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    new-instance v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    const-string/jumbo v1, "BLOCKED"

    invoke-direct {v0, v1, v5}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->BLOCKED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    new-instance v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    const-string/jumbo v1, "CAPTIVEPORTAL"

    invoke-direct {v0, v1, v6}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CAPTIVEPORTAL:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->UNKNOWN:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CANCELLED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CONNECTED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->BLOCKED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CAPTIVEPORTAL:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->$VALUES:[Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;
    .locals 1

    const-class v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    return-object v0
.end method

.method public static values()[Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->$VALUES:[Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    return-object v0
.end method
