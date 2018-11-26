.class public final enum Lcom/miui/antivirus/AntiVirusManager$ScanItemType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic awr:[Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

.field public static final enum aws:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

.field public static final enum awt:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    const-string/jumbo v1, "INSTALLED_APP"

    invoke-direct {v0, v1, v2}, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->aws:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    new-instance v0, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    const-string/jumbo v1, "UNINSTALLED_APK"

    invoke-direct {v0, v1, v3}, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->awt:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    sget-object v1, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->aws:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->awt:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->awr:[Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/antivirus/AntiVirusManager$ScanItemType;
    .locals 1

    const-class v0, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    return-object v0
.end method

.method public static values()[Lcom/miui/antivirus/AntiVirusManager$ScanItemType;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->awr:[Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    return-object v0
.end method
