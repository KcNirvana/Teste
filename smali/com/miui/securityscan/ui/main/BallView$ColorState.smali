.class public final enum Lcom/miui/securityscan/ui/main/BallView$ColorState;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum GV:Lcom/miui/securityscan/ui/main/BallView$ColorState;

.field public static final enum GW:Lcom/miui/securityscan/ui/main/BallView$ColorState;

.field private static final synthetic GX:[Lcom/miui/securityscan/ui/main/BallView$ColorState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/securityscan/ui/main/BallView$ColorState;

    const-string/jumbo v1, "BLUE"

    invoke-direct {v0, v1, v2}, Lcom/miui/securityscan/ui/main/BallView$ColorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/securityscan/ui/main/BallView$ColorState;->GV:Lcom/miui/securityscan/ui/main/BallView$ColorState;

    new-instance v0, Lcom/miui/securityscan/ui/main/BallView$ColorState;

    const-string/jumbo v1, "YELLOW"

    invoke-direct {v0, v1, v3}, Lcom/miui/securityscan/ui/main/BallView$ColorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/securityscan/ui/main/BallView$ColorState;->GW:Lcom/miui/securityscan/ui/main/BallView$ColorState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/securityscan/ui/main/BallView$ColorState;

    sget-object v1, Lcom/miui/securityscan/ui/main/BallView$ColorState;->GV:Lcom/miui/securityscan/ui/main/BallView$ColorState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/securityscan/ui/main/BallView$ColorState;->GW:Lcom/miui/securityscan/ui/main/BallView$ColorState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/securityscan/ui/main/BallView$ColorState;->GX:[Lcom/miui/securityscan/ui/main/BallView$ColorState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/securityscan/ui/main/BallView$ColorState;
    .locals 1

    const-class v0, Lcom/miui/securityscan/ui/main/BallView$ColorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/BallView$ColorState;

    return-object v0
.end method

.method public static values()[Lcom/miui/securityscan/ui/main/BallView$ColorState;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/ui/main/BallView$ColorState;->GX:[Lcom/miui/securityscan/ui/main/BallView$ColorState;

    return-object v0
.end method
