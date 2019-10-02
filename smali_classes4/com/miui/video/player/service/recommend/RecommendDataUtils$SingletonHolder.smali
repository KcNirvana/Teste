.class Lcom/miui/video/player/service/recommend/RecommendDataUtils$SingletonHolder;
.super Ljava/lang/Object;
.source "RecommendDataUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/recommend/RecommendDataUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final sInstance:Lcom/miui/video/player/service/recommend/RecommendDataUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/player/service/recommend/RecommendDataUtils;

    invoke-direct {v0}, Lcom/miui/video/player/service/recommend/RecommendDataUtils;-><init>()V

    sput-object v0, Lcom/miui/video/player/service/recommend/RecommendDataUtils$SingletonHolder;->sInstance:Lcom/miui/video/player/service/recommend/RecommendDataUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
