.class public final enum Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic ra:[Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

.field public static final enum rb:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

.field public static final enum rc:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    const-string/jumbo v1, "GAME"

    invoke-direct {v0, v1, v2}, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->rb:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    new-instance v0, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    const-string/jumbo v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->rc:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->rb:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->rc:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->ra:[Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;
    .locals 1

    const-class v0, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    return-object v0
.end method

.method public static values()[Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->ra:[Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    return-object v0
.end method
