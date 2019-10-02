.class public final synthetic Lcom/miui/video/biz/favor/repository/-$$Lambda$FavorRepositoryImpl$4dI4HDGI8SAC9LxGyRknF8EueWk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/video/biz/favor/repository/-$$Lambda$FavorRepositoryImpl$4dI4HDGI8SAC9LxGyRknF8EueWk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/favor/repository/-$$Lambda$FavorRepositoryImpl$4dI4HDGI8SAC9LxGyRknF8EueWk;

    invoke-direct {v0}, Lcom/miui/video/biz/favor/repository/-$$Lambda$FavorRepositoryImpl$4dI4HDGI8SAC9LxGyRknF8EueWk;-><init>()V

    sput-object v0, Lcom/miui/video/biz/favor/repository/-$$Lambda$FavorRepositoryImpl$4dI4HDGI8SAC9LxGyRknF8EueWk;->INSTANCE:Lcom/miui/video/biz/favor/repository/-$$Lambda$FavorRepositoryImpl$4dI4HDGI8SAC9LxGyRknF8EueWk;

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

    invoke-static {p1}, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->lambda$getFavorVideoList$0(Lcom/miui/video/base/common/net/model/ModelBase;)Lcom/miui/video/base/common/net/model/ModelData;

    move-result-object p1

    return-object p1
.end method
