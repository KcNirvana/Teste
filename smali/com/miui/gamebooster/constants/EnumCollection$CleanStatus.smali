.class public final enum Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum qA:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

.field public static final enum qB:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

.field private static final synthetic qw:[Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

.field public static final enum qx:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

.field public static final enum qy:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

.field public static final enum qz:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    const-string/jumbo v1, "BEST"

    invoke-direct {v0, v1, v2}, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->qx:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    new-instance v0, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    const-string/jumbo v1, "CLEAN"

    invoke-direct {v0, v1, v3}, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->qy:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    new-instance v0, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    const-string/jumbo v1, "CLOSE"

    invoke-direct {v0, v1, v4}, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->qA:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    new-instance v0, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    const-string/jumbo v1, "CLEANLAST"

    invoke-direct {v0, v1, v5}, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->qz:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    new-instance v0, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    const-string/jumbo v1, "GAMEBOOSTERCLOSE"

    invoke-direct {v0, v1, v6}, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->qB:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->qx:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->qy:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->qA:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->qz:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->qB:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->qw:[Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;
    .locals 1

    const-class v0, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    return-object v0
.end method

.method public static values()[Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->qw:[Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    return-object v0
.end method
