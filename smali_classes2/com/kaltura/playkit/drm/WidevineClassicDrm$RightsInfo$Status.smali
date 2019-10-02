.class public final enum Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;
.super Ljava/lang/Enum;
.source "WidevineClassicDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

.field public static final enum EXPIRED:Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

.field public static final enum INVALID:Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

.field public static final enum NOT_ACQUIRED:Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

.field public static final enum VALID:Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    const-string v1, "VALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;->VALID:Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    new-instance v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    const-string v1, "INVALID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;->INVALID:Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    new-instance v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    const-string v1, "EXPIRED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;->EXPIRED:Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    new-instance v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    const-string v1, "NOT_ACQUIRED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;->NOT_ACQUIRED:Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    sget-object v1, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;->VALID:Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;->INVALID:Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;->EXPIRED:Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;->NOT_ACQUIRED:Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;->$VALUES:[Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;
    .locals 1

    const-class v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    return-object p0
.end method

.method public static values()[Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;->$VALUES:[Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    invoke-virtual {v0}, [Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    return-object v0
.end method
