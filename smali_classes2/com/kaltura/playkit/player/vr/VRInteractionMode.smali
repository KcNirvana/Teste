.class public final enum Lcom/kaltura/playkit/player/vr/VRInteractionMode;
.super Ljava/lang/Enum;
.source "VRInteractionMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kaltura/playkit/player/vr/VRInteractionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaltura/playkit/player/vr/VRInteractionMode;

.field public static final enum CardboardMotion:Lcom/kaltura/playkit/player/vr/VRInteractionMode;

.field public static final enum CardboardMotionWithTouch:Lcom/kaltura/playkit/player/vr/VRInteractionMode;

.field public static final enum Motion:Lcom/kaltura/playkit/player/vr/VRInteractionMode;

.field public static final enum MotionWithTouch:Lcom/kaltura/playkit/player/vr/VRInteractionMode;

.field public static final enum Touch:Lcom/kaltura/playkit/player/vr/VRInteractionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    const-string v1, "Motion"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kaltura/playkit/player/vr/VRInteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/player/vr/VRInteractionMode;->Motion:Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    new-instance v0, Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    const-string v1, "Touch"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/kaltura/playkit/player/vr/VRInteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/player/vr/VRInteractionMode;->Touch:Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    new-instance v0, Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    const-string v1, "MotionWithTouch"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/kaltura/playkit/player/vr/VRInteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/player/vr/VRInteractionMode;->MotionWithTouch:Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    new-instance v0, Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    const-string v1, "CardboardMotion"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/kaltura/playkit/player/vr/VRInteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/player/vr/VRInteractionMode;->CardboardMotion:Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    new-instance v0, Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    const-string v1, "CardboardMotionWithTouch"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/kaltura/playkit/player/vr/VRInteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/player/vr/VRInteractionMode;->CardboardMotionWithTouch:Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    sget-object v1, Lcom/kaltura/playkit/player/vr/VRInteractionMode;->Motion:Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/player/vr/VRInteractionMode;->Touch:Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaltura/playkit/player/vr/VRInteractionMode;->MotionWithTouch:Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaltura/playkit/player/vr/VRInteractionMode;->CardboardMotion:Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaltura/playkit/player/vr/VRInteractionMode;->CardboardMotionWithTouch:Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/kaltura/playkit/player/vr/VRInteractionMode;->$VALUES:[Lcom/kaltura/playkit/player/vr/VRInteractionMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kaltura/playkit/player/vr/VRInteractionMode;
    .locals 1

    const-class v0, Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    return-object p0
.end method

.method public static values()[Lcom/kaltura/playkit/player/vr/VRInteractionMode;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/player/vr/VRInteractionMode;->$VALUES:[Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    invoke-virtual {v0}, [Lcom/kaltura/playkit/player/vr/VRInteractionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    return-object v0
.end method
