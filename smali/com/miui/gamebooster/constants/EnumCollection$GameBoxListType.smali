.class public final enum Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic qU:[Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

.field public static final enum qV:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

.field public static final enum qW:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

.field public static final enum qX:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

.field public static final enum qY:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

.field public static final enum qZ:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    const-string/jumbo v1, "RENCENT"

    invoke-direct {v0, v1, v2}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qY:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    new-instance v0, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    const-string/jumbo v1, "FUNCTION"

    invoke-direct {v0, v1, v3}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qX:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    new-instance v0, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    const-string/jumbo v1, "ARROW"

    invoke-direct {v0, v1, v4}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qV:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    new-instance v0, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    const-string/jumbo v1, "DIVIDE"

    invoke-direct {v0, v1, v5}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qW:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    new-instance v0, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    const-string/jumbo v1, "SPECIAL"

    invoke-direct {v0, v1, v6}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qZ:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qY:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qX:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qV:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qW:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qZ:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qU:[Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;
    .locals 1

    const-class v0, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    return-object v0
.end method

.method public static values()[Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qU:[Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    return-object v0
.end method
