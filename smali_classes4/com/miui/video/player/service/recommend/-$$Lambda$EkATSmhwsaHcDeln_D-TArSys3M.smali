.class public final synthetic Lcom/miui/video/player/service/recommend/-$$Lambda$EkATSmhwsaHcDeln_D-TArSys3M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/video/player/service/recommend/-$$Lambda$EkATSmhwsaHcDeln_D-TArSys3M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/player/service/recommend/-$$Lambda$EkATSmhwsaHcDeln_D-TArSys3M;

    invoke-direct {v0}, Lcom/miui/video/player/service/recommend/-$$Lambda$EkATSmhwsaHcDeln_D-TArSys3M;-><init>()V

    sput-object v0, Lcom/miui/video/player/service/recommend/-$$Lambda$EkATSmhwsaHcDeln_D-TArSys3M;->INSTANCE:Lcom/miui/video/player/service/recommend/-$$Lambda$EkATSmhwsaHcDeln_D-TArSys3M;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelBase;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelData;

    return-object p1
.end method
