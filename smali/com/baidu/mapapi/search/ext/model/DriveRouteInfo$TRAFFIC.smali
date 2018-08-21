.class public final enum Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TRAFFIC"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

.field public static final enum BLOCKED:Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

.field public static final enum CONGESTION:Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

.field public static final enum NO_CONGESTION:Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

.field public static final enum SLOWLY:Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

.field public static final enum UNBLOCKED:Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    const-string/jumbo v1, "NO_CONGESTION"

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;->NO_CONGESTION:Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    new-instance v0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    const-string/jumbo v1, "UNBLOCKED"

    invoke-direct {v0, v1, v3, v3}, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;->UNBLOCKED:Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    new-instance v0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    const-string/jumbo v1, "SLOWLY"

    invoke-direct {v0, v1, v4, v4}, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;->SLOWLY:Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    new-instance v0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    const-string/jumbo v1, "CONGESTION"

    invoke-direct {v0, v1, v5, v5}, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;->CONGESTION:Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    new-instance v0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    const-string/jumbo v1, "BLOCKED"

    invoke-direct {v0, v1, v6, v6}, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;->BLOCKED:Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    sget-object v1, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;->NO_CONGESTION:Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;->UNBLOCKED:Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;->SLOWLY:Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;->CONGESTION:Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;->BLOCKED:Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    aput-object v1, v0, v6

    sput-object v0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;->$VALUES:[Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;->a:I

    iput p3, p0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;
    .locals 1

    const-class v0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;->$VALUES:[Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/ext/model/DriveRouteInfo$TRAFFIC;->a:I

    return v0
.end method
