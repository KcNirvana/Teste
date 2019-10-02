.class public final enum Lcom/kaltura/playkit/PlayerState;
.super Ljava/lang/Enum;
.source "PlayerState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kaltura/playkit/PlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaltura/playkit/PlayerState;

.field public static final enum BUFFERING:Lcom/kaltura/playkit/PlayerState;

.field public static final enum IDLE:Lcom/kaltura/playkit/PlayerState;

.field public static final enum LOADING:Lcom/kaltura/playkit/PlayerState;

.field public static final enum READY:Lcom/kaltura/playkit/PlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/kaltura/playkit/PlayerState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kaltura/playkit/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerState;->IDLE:Lcom/kaltura/playkit/PlayerState;

    new-instance v0, Lcom/kaltura/playkit/PlayerState;

    const-string v1, "LOADING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/kaltura/playkit/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerState;->LOADING:Lcom/kaltura/playkit/PlayerState;

    new-instance v0, Lcom/kaltura/playkit/PlayerState;

    const-string v1, "READY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/kaltura/playkit/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerState;->READY:Lcom/kaltura/playkit/PlayerState;

    new-instance v0, Lcom/kaltura/playkit/PlayerState;

    const-string v1, "BUFFERING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/kaltura/playkit/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerState;->BUFFERING:Lcom/kaltura/playkit/PlayerState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kaltura/playkit/PlayerState;

    sget-object v1, Lcom/kaltura/playkit/PlayerState;->IDLE:Lcom/kaltura/playkit/PlayerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/PlayerState;->LOADING:Lcom/kaltura/playkit/PlayerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaltura/playkit/PlayerState;->READY:Lcom/kaltura/playkit/PlayerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaltura/playkit/PlayerState;->BUFFERING:Lcom/kaltura/playkit/PlayerState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kaltura/playkit/PlayerState;->$VALUES:[Lcom/kaltura/playkit/PlayerState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kaltura/playkit/PlayerState;
    .locals 1

    const-class v0, Lcom/kaltura/playkit/PlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/PlayerState;

    return-object p0
.end method

.method public static values()[Lcom/kaltura/playkit/PlayerState;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/PlayerState;->$VALUES:[Lcom/kaltura/playkit/PlayerState;

    invoke-virtual {v0}, [Lcom/kaltura/playkit/PlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaltura/playkit/PlayerState;

    return-object v0
.end method
