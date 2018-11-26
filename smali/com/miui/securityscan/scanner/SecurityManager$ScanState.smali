.class public final enum Lcom/miui/securityscan/scanner/SecurityManager$ScanState;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum Df:Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

.field public static final enum Dg:Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

.field private static final synthetic Dh:[Lcom/miui/securityscan/scanner/SecurityManager$ScanState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/miui/securityscan/scanner/SecurityManager$ScanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/securityscan/scanner/SecurityManager$ScanState;->Df:Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    new-instance v0, Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    const-string/jumbo v1, "FINISH"

    invoke-direct {v0, v1, v3}, Lcom/miui/securityscan/scanner/SecurityManager$ScanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/securityscan/scanner/SecurityManager$ScanState;->Dg:Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    sget-object v1, Lcom/miui/securityscan/scanner/SecurityManager$ScanState;->Df:Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/securityscan/scanner/SecurityManager$ScanState;->Dg:Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/securityscan/scanner/SecurityManager$ScanState;->Dh:[Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/securityscan/scanner/SecurityManager$ScanState;
    .locals 1

    const-class v0, Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    return-object v0
.end method

.method public static values()[Lcom/miui/securityscan/scanner/SecurityManager$ScanState;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/scanner/SecurityManager$ScanState;->Dh:[Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    return-object v0
.end method
