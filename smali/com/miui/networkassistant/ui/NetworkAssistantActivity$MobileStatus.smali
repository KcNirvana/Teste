.class final enum Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum Init:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum MiSimPending:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum NoOperatorSet:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum NoSimCardInfo:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum NoTotalPackage:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum Normal:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum NormalRoaming:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum Oversea:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum OverseaRoaming:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum TrafficCtrlClosed:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum UnLimitedCard:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum VirtualCard:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string/jumbo v1, "Init"

    invoke-direct {v0, v1, v3}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->Init:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string/jumbo v1, "NoSimCardInfo"

    invoke-direct {v0, v1, v4}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NoSimCardInfo:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string/jumbo v1, "Oversea"

    invoke-direct {v0, v1, v5}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->Oversea:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string/jumbo v1, "OverseaRoaming"

    invoke-direct {v0, v1, v6}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->OverseaRoaming:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string/jumbo v1, "NormalRoaming"

    invoke-direct {v0, v1, v7}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NormalRoaming:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string/jumbo v1, "NoTotalPackage"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NoTotalPackage:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string/jumbo v1, "NoOperatorSet"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NoOperatorSet:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string/jumbo v1, "Normal"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->Normal:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string/jumbo v1, "TrafficCtrlClosed"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->TrafficCtrlClosed:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string/jumbo v1, "MiSimPending"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->MiSimPending:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string/jumbo v1, "VirtualCard"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->VirtualCard:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string/jumbo v1, "UnLimitedCard"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->UnLimitedCard:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->Init:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NoSimCardInfo:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->Oversea:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->OverseaRoaming:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NormalRoaming:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NoTotalPackage:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NoOperatorSet:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->Normal:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->TrafficCtrlClosed:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->MiSimPending:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->VirtualCard:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->UnLimitedCard:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->$VALUES:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;
    .locals 1

    const-class v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    return-object v0
.end method

.method public static values()[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->$VALUES:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    return-object v0
.end method
