.class public final enum Lcom/kaltura/playkit/player/PlayerEngineType;
.super Ljava/lang/Enum;
.source "PlayerEngineType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kaltura/playkit/player/PlayerEngineType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaltura/playkit/player/PlayerEngineType;

.field public static final enum Exoplayer:Lcom/kaltura/playkit/player/PlayerEngineType;

.field public static final enum MediaPlayer:Lcom/kaltura/playkit/player/PlayerEngineType;

.field public static final enum Unknown:Lcom/kaltura/playkit/player/PlayerEngineType;

.field public static final enum VRPlayer:Lcom/kaltura/playkit/player/PlayerEngineType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/kaltura/playkit/player/PlayerEngineType;

    const-string v1, "Exoplayer"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kaltura/playkit/player/PlayerEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/player/PlayerEngineType;->Exoplayer:Lcom/kaltura/playkit/player/PlayerEngineType;

    new-instance v0, Lcom/kaltura/playkit/player/PlayerEngineType;

    const-string v1, "MediaPlayer"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/kaltura/playkit/player/PlayerEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/player/PlayerEngineType;->MediaPlayer:Lcom/kaltura/playkit/player/PlayerEngineType;

    new-instance v0, Lcom/kaltura/playkit/player/PlayerEngineType;

    const-string v1, "VRPlayer"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/kaltura/playkit/player/PlayerEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/player/PlayerEngineType;->VRPlayer:Lcom/kaltura/playkit/player/PlayerEngineType;

    new-instance v0, Lcom/kaltura/playkit/player/PlayerEngineType;

    const-string v1, "Unknown"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/kaltura/playkit/player/PlayerEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/player/PlayerEngineType;->Unknown:Lcom/kaltura/playkit/player/PlayerEngineType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kaltura/playkit/player/PlayerEngineType;

    sget-object v1, Lcom/kaltura/playkit/player/PlayerEngineType;->Exoplayer:Lcom/kaltura/playkit/player/PlayerEngineType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/player/PlayerEngineType;->MediaPlayer:Lcom/kaltura/playkit/player/PlayerEngineType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaltura/playkit/player/PlayerEngineType;->VRPlayer:Lcom/kaltura/playkit/player/PlayerEngineType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaltura/playkit/player/PlayerEngineType;->Unknown:Lcom/kaltura/playkit/player/PlayerEngineType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kaltura/playkit/player/PlayerEngineType;->$VALUES:[Lcom/kaltura/playkit/player/PlayerEngineType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kaltura/playkit/player/PlayerEngineType;
    .locals 1

    const-class v0, Lcom/kaltura/playkit/player/PlayerEngineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/player/PlayerEngineType;

    return-object p0
.end method

.method public static values()[Lcom/kaltura/playkit/player/PlayerEngineType;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/player/PlayerEngineType;->$VALUES:[Lcom/kaltura/playkit/player/PlayerEngineType;

    invoke-virtual {v0}, [Lcom/kaltura/playkit/player/PlayerEngineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaltura/playkit/player/PlayerEngineType;

    return-object v0
.end method
