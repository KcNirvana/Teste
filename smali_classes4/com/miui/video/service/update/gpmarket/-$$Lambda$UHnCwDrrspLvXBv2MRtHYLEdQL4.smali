.class public final synthetic Lcom/miui/video/service/update/gpmarket/-$$Lambda$UHnCwDrrspLvXBv2MRtHYLEdQL4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/video/service/update/gpmarket/-$$Lambda$UHnCwDrrspLvXBv2MRtHYLEdQL4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/service/update/gpmarket/-$$Lambda$UHnCwDrrspLvXBv2MRtHYLEdQL4;

    invoke-direct {v0}, Lcom/miui/video/service/update/gpmarket/-$$Lambda$UHnCwDrrspLvXBv2MRtHYLEdQL4;-><init>()V

    sput-object v0, Lcom/miui/video/service/update/gpmarket/-$$Lambda$UHnCwDrrspLvXBv2MRtHYLEdQL4;->INSTANCE:Lcom/miui/video/service/update/gpmarket/-$$Lambda$UHnCwDrrspLvXBv2MRtHYLEdQL4;

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

    check-cast p1, Lcom/miui/video/service/update/entity/UpdateEntity;

    return-object p1
.end method
