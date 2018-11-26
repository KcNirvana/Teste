.class public final enum Lcom/miui/gamebooster/top/GameModel$GameState;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic rh:[Lcom/miui/gamebooster/top/GameModel$GameState;

.field public static final enum ri:Lcom/miui/gamebooster/top/GameModel$GameState;

.field public static final enum rj:Lcom/miui/gamebooster/top/GameModel$GameState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/gamebooster/top/GameModel$GameState;

    const-string/jumbo v1, "EXPERIENCE"

    invoke-direct {v0, v1, v2}, Lcom/miui/gamebooster/top/GameModel$GameState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/top/GameModel$GameState;->ri:Lcom/miui/gamebooster/top/GameModel$GameState;

    new-instance v0, Lcom/miui/gamebooster/top/GameModel$GameState;

    const-string/jumbo v1, "OPEN"

    invoke-direct {v0, v1, v3}, Lcom/miui/gamebooster/top/GameModel$GameState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/top/GameModel$GameState;->rj:Lcom/miui/gamebooster/top/GameModel$GameState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gamebooster/top/GameModel$GameState;

    sget-object v1, Lcom/miui/gamebooster/top/GameModel$GameState;->ri:Lcom/miui/gamebooster/top/GameModel$GameState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gamebooster/top/GameModel$GameState;->rj:Lcom/miui/gamebooster/top/GameModel$GameState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gamebooster/top/GameModel$GameState;->rh:[Lcom/miui/gamebooster/top/GameModel$GameState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gamebooster/top/GameModel$GameState;
    .locals 1

    const-class v0, Lcom/miui/gamebooster/top/GameModel$GameState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/top/GameModel$GameState;

    return-object v0
.end method

.method public static values()[Lcom/miui/gamebooster/top/GameModel$GameState;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/top/GameModel$GameState;->rh:[Lcom/miui/gamebooster/top/GameModel$GameState;

    return-object v0
.end method
