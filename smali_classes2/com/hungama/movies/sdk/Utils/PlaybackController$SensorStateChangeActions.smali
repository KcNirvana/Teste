.class final enum Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;
.super Ljava/lang/Enum;
.source "PlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hungama/movies/sdk/Utils/PlaybackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SensorStateChangeActions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

.field public static final enum SWITCH_FROM_LANDSCAPE_TO_STANDARD:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

.field public static final enum SWITCH_FROM_POTRAIT_TO_STANDARD:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

.field public static final enum WATCH_FOR_LANDSCAPE_CHANGES:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

.field public static final enum WATCH_FOR_POTRAIT_CHANGES:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    const-string v1, "WATCH_FOR_LANDSCAPE_CHANGES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;->WATCH_FOR_LANDSCAPE_CHANGES:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    new-instance v0, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    const-string v1, "SWITCH_FROM_LANDSCAPE_TO_STANDARD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;->SWITCH_FROM_LANDSCAPE_TO_STANDARD:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    new-instance v0, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    const-string v1, "WATCH_FOR_POTRAIT_CHANGES"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;->WATCH_FOR_POTRAIT_CHANGES:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    new-instance v0, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    const-string v1, "SWITCH_FROM_POTRAIT_TO_STANDARD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;->SWITCH_FROM_POTRAIT_TO_STANDARD:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    sget-object v1, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;->WATCH_FOR_LANDSCAPE_CHANGES:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;->SWITCH_FROM_LANDSCAPE_TO_STANDARD:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;->WATCH_FOR_POTRAIT_CHANGES:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;->SWITCH_FROM_POTRAIT_TO_STANDARD:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    aput-object v1, v0, v5

    sput-object v0, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;->$VALUES:[Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;
    .locals 1

    const-class v0, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    return-object p0
.end method

.method public static values()[Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;
    .locals 1

    sget-object v0, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;->$VALUES:[Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    invoke-virtual {v0}, [Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    return-object v0
.end method
