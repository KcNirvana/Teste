.class public final enum Lcom/miui/antivirus/AntiVirusManager$ScanResultType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum awn:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

.field public static final enum awo:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

.field public static final enum awp:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

.field private static final synthetic awq:[Lcom/miui/antivirus/AntiVirusManager$ScanResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    const-string/jumbo v1, "SAFE"

    invoke-direct {v0, v1, v2}, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awo:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    new-instance v0, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    const-string/jumbo v1, "RISK"

    invoke-direct {v0, v1, v3}, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awn:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    new-instance v0, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    const-string/jumbo v1, "VIRUS"

    invoke-direct {v0, v1, v4}, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awp:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    sget-object v1, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awo:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awn:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awp:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awq:[Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/antivirus/AntiVirusManager$ScanResultType;
    .locals 1

    const-class v0, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    return-object v0
.end method

.method public static values()[Lcom/miui/antivirus/AntiVirusManager$ScanResultType;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awq:[Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    return-object v0
.end method
