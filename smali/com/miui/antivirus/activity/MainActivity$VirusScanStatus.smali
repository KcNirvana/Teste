.class public final enum Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic arR:[Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

.field public static final enum arS:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

.field public static final enum arT:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

.field public static final enum arU:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

.field public static final enum arV:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

.field public static final enum arW:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arU:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    new-instance v0, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    const-string/jumbo v1, "SCANNING"

    invoke-direct {v0, v1, v3}, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arW:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    new-instance v0, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    const-string/jumbo v1, "SCANNED"

    invoke-direct {v0, v1, v4}, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arV:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    new-instance v0, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    const-string/jumbo v1, "CLEANING"

    invoke-direct {v0, v1, v5}, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arT:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    new-instance v0, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    const-string/jumbo v1, "CLEANED"

    invoke-direct {v0, v1, v6}, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arS:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    sget-object v1, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arU:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arW:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arV:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arT:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arS:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arR:[Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;
    .locals 1

    const-class v0, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    return-object v0
.end method

.method public static values()[Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arR:[Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    return-object v0
.end method
