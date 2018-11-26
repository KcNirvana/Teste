.class public final enum Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic qK:[Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;

.field public static final enum qL:Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;

.field public static final enum qM:Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;

    const-string/jumbo v1, "have_get"

    invoke-direct {v0, v1, v2}, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;->qL:Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;

    new-instance v0, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;

    const-string/jumbo v1, "have_not_get"

    invoke-direct {v0, v1, v3}, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;->qM:Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;->qL:Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;->qM:Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;->qK:[Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;
    .locals 1

    const-class v0, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;

    return-object v0
.end method

.method public static values()[Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;->qK:[Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;

    return-object v0
.end method
