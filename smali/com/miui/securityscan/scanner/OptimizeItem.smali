.class public final enum Lcom/miui/securityscan/scanner/OptimizeItem;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic CC:[Lcom/miui/securityscan/scanner/OptimizeItem;

.field public static final enum CD:Lcom/miui/securityscan/scanner/OptimizeItem;

.field public static final enum CE:Lcom/miui/securityscan/scanner/OptimizeItem;

.field public static final enum CF:Lcom/miui/securityscan/scanner/OptimizeItem;


# instance fields
.field private content:Ljava/lang/String;

.field private titleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/miui/securityscan/scanner/OptimizeItem;

    const-string/jumbo v1, "SYSTEM_CONFIG"

    const v2, 0x7f070836

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/securityscan/scanner/OptimizeItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/securityscan/scanner/OptimizeItem;->CF:Lcom/miui/securityscan/scanner/OptimizeItem;

    new-instance v0, Lcom/miui/securityscan/scanner/OptimizeItem;

    const-string/jumbo v1, "CLEAR_ACCELERATION"

    const v2, 0x7f070837

    invoke-direct {v0, v1, v4, v2}, Lcom/miui/securityscan/scanner/OptimizeItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/securityscan/scanner/OptimizeItem;->CD:Lcom/miui/securityscan/scanner/OptimizeItem;

    new-instance v0, Lcom/miui/securityscan/scanner/OptimizeItem;

    const-string/jumbo v1, "SYSTEM_APP"

    const v2, 0x7f070838

    invoke-direct {v0, v1, v5, v2}, Lcom/miui/securityscan/scanner/OptimizeItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/securityscan/scanner/OptimizeItem;->CE:Lcom/miui/securityscan/scanner/OptimizeItem;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/securityscan/scanner/OptimizeItem;

    sget-object v1, Lcom/miui/securityscan/scanner/OptimizeItem;->CF:Lcom/miui/securityscan/scanner/OptimizeItem;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/securityscan/scanner/OptimizeItem;->CD:Lcom/miui/securityscan/scanner/OptimizeItem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/securityscan/scanner/OptimizeItem;->CE:Lcom/miui/securityscan/scanner/OptimizeItem;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/securityscan/scanner/OptimizeItem;->CC:[Lcom/miui/securityscan/scanner/OptimizeItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/securityscan/scanner/OptimizeItem;->titleId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/securityscan/scanner/OptimizeItem;
    .locals 1

    const-class v0, Lcom/miui/securityscan/scanner/OptimizeItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/scanner/OptimizeItem;

    return-object v0
.end method

.method public static values()[Lcom/miui/securityscan/scanner/OptimizeItem;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/scanner/OptimizeItem;->CC:[Lcom/miui/securityscan/scanner/OptimizeItem;

    return-object v0
.end method


# virtual methods
.method public DN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/OptimizeItem;->content:Ljava/lang/String;

    return-void
.end method

.method public DO()I
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/scanner/OptimizeItem;->titleId:I

    return v0
.end method
