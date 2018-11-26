.class public final enum Lcom/miui/securityscan/scanner/PredictScanItem;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic CI:[Lcom/miui/securityscan/scanner/PredictScanItem;

.field public static final enum CJ:Lcom/miui/securityscan/scanner/PredictScanItem;

.field public static final enum CK:Lcom/miui/securityscan/scanner/PredictScanItem;

.field public static final enum CL:Lcom/miui/securityscan/scanner/PredictScanItem;

.field public static final enum CM:Lcom/miui/securityscan/scanner/PredictScanItem;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/securityscan/scanner/PredictScanItem;

    const-string/jumbo v1, "PREDICT_MANUAL_ITEM"

    invoke-direct {v0, v1, v2}, Lcom/miui/securityscan/scanner/PredictScanItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/securityscan/scanner/PredictScanItem;->CK:Lcom/miui/securityscan/scanner/PredictScanItem;

    new-instance v0, Lcom/miui/securityscan/scanner/PredictScanItem;

    const-string/jumbo v1, "PREDICT_AUTO_ITEM"

    invoke-direct {v0, v1, v3}, Lcom/miui/securityscan/scanner/PredictScanItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/securityscan/scanner/PredictScanItem;->CJ:Lcom/miui/securityscan/scanner/PredictScanItem;

    new-instance v0, Lcom/miui/securityscan/scanner/PredictScanItem;

    const-string/jumbo v1, "PREDICT_SYSTEM_APP"

    invoke-direct {v0, v1, v4}, Lcom/miui/securityscan/scanner/PredictScanItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/securityscan/scanner/PredictScanItem;->CM:Lcom/miui/securityscan/scanner/PredictScanItem;

    new-instance v0, Lcom/miui/securityscan/scanner/PredictScanItem;

    const-string/jumbo v1, "PREDICT_MEMORY"

    invoke-direct {v0, v1, v5}, Lcom/miui/securityscan/scanner/PredictScanItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/securityscan/scanner/PredictScanItem;->CL:Lcom/miui/securityscan/scanner/PredictScanItem;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/securityscan/scanner/PredictScanItem;

    sget-object v1, Lcom/miui/securityscan/scanner/PredictScanItem;->CK:Lcom/miui/securityscan/scanner/PredictScanItem;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/securityscan/scanner/PredictScanItem;->CJ:Lcom/miui/securityscan/scanner/PredictScanItem;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/securityscan/scanner/PredictScanItem;->CM:Lcom/miui/securityscan/scanner/PredictScanItem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/securityscan/scanner/PredictScanItem;->CL:Lcom/miui/securityscan/scanner/PredictScanItem;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/securityscan/scanner/PredictScanItem;->CI:[Lcom/miui/securityscan/scanner/PredictScanItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/securityscan/scanner/PredictScanItem;
    .locals 1

    const-class v0, Lcom/miui/securityscan/scanner/PredictScanItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/scanner/PredictScanItem;

    return-object v0
.end method

.method public static values()[Lcom/miui/securityscan/scanner/PredictScanItem;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/scanner/PredictScanItem;->CI:[Lcom/miui/securityscan/scanner/PredictScanItem;

    return-object v0
.end method
