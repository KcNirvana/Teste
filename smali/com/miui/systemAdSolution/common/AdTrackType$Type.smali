.class public final enum Lcom/miui/systemAdSolution/common/AdTrackType$Type;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/systemAdSolution/common/AdTrackType$Type;

.field public static final enum TRACK_CLICK:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

.field public static final enum TRACK_COMPATIBLE:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

.field public static final enum TRACK_DISLIKE_AD:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

.field public static final enum TRACK_FAIL:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

.field public static final enum TRACK_UNKOWN:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

.field public static final enum TRACK_VIEW:Lcom/miui/systemAdSolution/common/AdTrackType$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    const-string/jumbo v1, "TRACK_UNKOWN"

    invoke-direct {v0, v1, v3}, Lcom/miui/systemAdSolution/common/AdTrackType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->TRACK_UNKOWN:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    new-instance v0, Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    const-string/jumbo v1, "TRACK_VIEW"

    invoke-direct {v0, v1, v4}, Lcom/miui/systemAdSolution/common/AdTrackType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->TRACK_VIEW:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    new-instance v0, Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    const-string/jumbo v1, "TRACK_CLICK"

    invoke-direct {v0, v1, v5}, Lcom/miui/systemAdSolution/common/AdTrackType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->TRACK_CLICK:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    new-instance v0, Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    const-string/jumbo v1, "TRACK_FAIL"

    invoke-direct {v0, v1, v6}, Lcom/miui/systemAdSolution/common/AdTrackType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->TRACK_FAIL:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    new-instance v0, Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    const-string/jumbo v1, "TRACK_COMPATIBLE"

    invoke-direct {v0, v1, v7}, Lcom/miui/systemAdSolution/common/AdTrackType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->TRACK_COMPATIBLE:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    new-instance v0, Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    const-string/jumbo v1, "TRACK_DISLIKE_AD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/systemAdSolution/common/AdTrackType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->TRACK_DISLIKE_AD:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    sget-object v1, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->TRACK_UNKOWN:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->TRACK_VIEW:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->TRACK_CLICK:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->TRACK_FAIL:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->TRACK_COMPATIBLE:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->TRACK_DISLIKE_AD:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->$VALUES:[Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/systemAdSolution/common/AdTrackType$Type;
    .locals 1

    const-class v0, Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    return-object v0
.end method

.method public static values()[Lcom/miui/systemAdSolution/common/AdTrackType$Type;
    .locals 1

    sget-object v0, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->$VALUES:[Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    return-object v0
.end method
