.class public final enum Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum GH:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

.field public static final enum GI:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

.field public static final enum GJ:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

.field public static final enum GK:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

.field private static final synthetic GL:[Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;->GH:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    new-instance v0, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    const-string/jumbo v1, "PREDICT_SCAN"

    invoke-direct {v0, v1, v3}, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;->GI:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    new-instance v0, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    const-string/jumbo v1, "SCANNING"

    invoke-direct {v0, v1, v4}, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;->GJ:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    new-instance v0, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    const-string/jumbo v1, "SCAN_RESULT"

    invoke-direct {v0, v1, v5}, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;->GK:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    sget-object v1, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;->GH:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;->GI:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;->GJ:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;->GK:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;->GL:[Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;
    .locals 1

    const-class v0, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    return-object v0
.end method

.method public static values()[Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;->GL:[Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    return-object v0
.end method
