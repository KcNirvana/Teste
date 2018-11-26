.class public final enum Lcom/miui/common/network/NetworkUtils$NetworkState;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic aBK:[Lcom/miui/common/network/NetworkUtils$NetworkState;

.field public static final enum aBL:Lcom/miui/common/network/NetworkUtils$NetworkState;

.field public static final enum aBM:Lcom/miui/common/network/NetworkUtils$NetworkState;

.field public static final enum aBN:Lcom/miui/common/network/NetworkUtils$NetworkState;

.field public static final enum aBO:Lcom/miui/common/network/NetworkUtils$NetworkState;

.field public static final enum aBP:Lcom/miui/common/network/NetworkUtils$NetworkState;

.field public static final enum aBQ:Lcom/miui/common/network/NetworkUtils$NetworkState;

.field public static final enum aBR:Lcom/miui/common/network/NetworkUtils$NetworkState;

.field public static final enum aBS:Lcom/miui/common/network/NetworkUtils$NetworkState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/miui/common/network/NetworkUtils$NetworkState;

    const-string/jumbo v1, "Inited"

    invoke-direct {v0, v1, v3}, Lcom/miui/common/network/NetworkUtils$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBO:Lcom/miui/common/network/NetworkUtils$NetworkState;

    new-instance v0, Lcom/miui/common/network/NetworkUtils$NetworkState;

    const-string/jumbo v1, "Diconnected"

    invoke-direct {v0, v1, v4}, Lcom/miui/common/network/NetworkUtils$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBM:Lcom/miui/common/network/NetworkUtils$NetworkState;

    new-instance v0, Lcom/miui/common/network/NetworkUtils$NetworkState;

    const-string/jumbo v1, "WifiConnected"

    invoke-direct {v0, v1, v5}, Lcom/miui/common/network/NetworkUtils$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBS:Lcom/miui/common/network/NetworkUtils$NetworkState;

    new-instance v0, Lcom/miui/common/network/NetworkUtils$NetworkState;

    const-string/jumbo v1, "MobileConnected"

    invoke-direct {v0, v1, v6}, Lcom/miui/common/network/NetworkUtils$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBP:Lcom/miui/common/network/NetworkUtils$NetworkState;

    new-instance v0, Lcom/miui/common/network/NetworkUtils$NetworkState;

    const-string/jumbo v1, "EthernetConnected"

    invoke-direct {v0, v1, v7}, Lcom/miui/common/network/NetworkUtils$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBN:Lcom/miui/common/network/NetworkUtils$NetworkState;

    new-instance v0, Lcom/miui/common/network/NetworkUtils$NetworkState;

    const-string/jumbo v1, "BluetoothConnected"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/common/network/NetworkUtils$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBL:Lcom/miui/common/network/NetworkUtils$NetworkState;

    new-instance v0, Lcom/miui/common/network/NetworkUtils$NetworkState;

    const-string/jumbo v1, "OtherConnected"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/miui/common/network/NetworkUtils$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBQ:Lcom/miui/common/network/NetworkUtils$NetworkState;

    new-instance v0, Lcom/miui/common/network/NetworkUtils$NetworkState;

    const-string/jumbo v1, "WifiApConnected"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/miui/common/network/NetworkUtils$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBR:Lcom/miui/common/network/NetworkUtils$NetworkState;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/miui/common/network/NetworkUtils$NetworkState;

    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBO:Lcom/miui/common/network/NetworkUtils$NetworkState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBM:Lcom/miui/common/network/NetworkUtils$NetworkState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBS:Lcom/miui/common/network/NetworkUtils$NetworkState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBP:Lcom/miui/common/network/NetworkUtils$NetworkState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBN:Lcom/miui/common/network/NetworkUtils$NetworkState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBL:Lcom/miui/common/network/NetworkUtils$NetworkState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBQ:Lcom/miui/common/network/NetworkUtils$NetworkState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBR:Lcom/miui/common/network/NetworkUtils$NetworkState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBK:[Lcom/miui/common/network/NetworkUtils$NetworkState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/common/network/NetworkUtils$NetworkState;
    .locals 1

    const-class v0, Lcom/miui/common/network/NetworkUtils$NetworkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/common/network/NetworkUtils$NetworkState;

    return-object v0
.end method

.method public static values()[Lcom/miui/common/network/NetworkUtils$NetworkState;
    .locals 1

    sget-object v0, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBK:[Lcom/miui/common/network/NetworkUtils$NetworkState;

    return-object v0
.end method
