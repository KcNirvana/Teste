.class public final enum Lcom/miui/gamebooster/top/BaseModel$CardType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum rd:Lcom/miui/gamebooster/top/BaseModel$CardType;

.field public static final enum re:Lcom/miui/gamebooster/top/BaseModel$CardType;

.field private static final synthetic rf:[Lcom/miui/gamebooster/top/BaseModel$CardType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/gamebooster/top/BaseModel$CardType;

    const-string/jumbo v1, "GAME"

    invoke-direct {v0, v1, v2}, Lcom/miui/gamebooster/top/BaseModel$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/top/BaseModel$CardType;->re:Lcom/miui/gamebooster/top/BaseModel$CardType;

    new-instance v0, Lcom/miui/gamebooster/top/BaseModel$CardType;

    const-string/jumbo v1, "BOTTOM"

    invoke-direct {v0, v1, v3}, Lcom/miui/gamebooster/top/BaseModel$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/top/BaseModel$CardType;->rd:Lcom/miui/gamebooster/top/BaseModel$CardType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gamebooster/top/BaseModel$CardType;

    sget-object v1, Lcom/miui/gamebooster/top/BaseModel$CardType;->re:Lcom/miui/gamebooster/top/BaseModel$CardType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gamebooster/top/BaseModel$CardType;->rd:Lcom/miui/gamebooster/top/BaseModel$CardType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gamebooster/top/BaseModel$CardType;->rf:[Lcom/miui/gamebooster/top/BaseModel$CardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gamebooster/top/BaseModel$CardType;
    .locals 1

    const-class v0, Lcom/miui/gamebooster/top/BaseModel$CardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/top/BaseModel$CardType;

    return-object v0
.end method

.method public static values()[Lcom/miui/gamebooster/top/BaseModel$CardType;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/top/BaseModel$CardType;->rf:[Lcom/miui/gamebooster/top/BaseModel$CardType;

    return-object v0
.end method
