.class public final enum Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic qG:[Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

.field public static final enum qH:Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

.field public static final enum qI:Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

.field public static final enum qJ:Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    const-string/jumbo v1, "CLOSE"

    invoke-direct {v0, v1, v2}, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;->qH:Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    new-instance v0, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    const-string/jumbo v1, "OPEN"

    invoke-direct {v0, v1, v3}, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;->qI:Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    new-instance v0, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    const-string/jumbo v1, "OVERDUE"

    invoke-direct {v0, v1, v4}, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;->qJ:Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;->qH:Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;->qI:Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;->qJ:Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;->qG:[Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;
    .locals 1

    const-class v0, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    return-object v0
.end method

.method public static values()[Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;->qG:[Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    return-object v0
.end method
