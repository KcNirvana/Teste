.class public final enum Lcom/kaltura/playkit/plugins/ads/AdPositionType;
.super Ljava/lang/Enum;
.source "AdPositionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kaltura/playkit/plugins/ads/AdPositionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaltura/playkit/plugins/ads/AdPositionType;

.field public static final enum MID_ROLL:Lcom/kaltura/playkit/plugins/ads/AdPositionType;

.field public static final enum POST_ROLL:Lcom/kaltura/playkit/plugins/ads/AdPositionType;

.field public static final enum PRE_ROLL:Lcom/kaltura/playkit/plugins/ads/AdPositionType;

.field public static final enum UNKNOWN:Lcom/kaltura/playkit/plugins/ads/AdPositionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kaltura/playkit/plugins/ads/AdPositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdPositionType;->UNKNOWN:Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    const-string v1, "PRE_ROLL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/kaltura/playkit/plugins/ads/AdPositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdPositionType;->PRE_ROLL:Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    const-string v1, "MID_ROLL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/kaltura/playkit/plugins/ads/AdPositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdPositionType;->MID_ROLL:Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    const-string v1, "POST_ROLL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/kaltura/playkit/plugins/ads/AdPositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdPositionType;->POST_ROLL:Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdPositionType;->UNKNOWN:Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdPositionType;->PRE_ROLL:Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdPositionType;->MID_ROLL:Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdPositionType;->POST_ROLL:Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdPositionType;->$VALUES:[Lcom/kaltura/playkit/plugins/ads/AdPositionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/ads/AdPositionType;
    .locals 1

    const-class v0, Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    return-object p0
.end method

.method public static values()[Lcom/kaltura/playkit/plugins/ads/AdPositionType;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/plugins/ads/AdPositionType;->$VALUES:[Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    invoke-virtual {v0}, [Lcom/kaltura/playkit/plugins/ads/AdPositionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    return-object v0
.end method
