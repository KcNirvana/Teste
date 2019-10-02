.class Lcom/miui/video/base/cache/VideoPlayInfoCacheManager$VideoPlayInfoCacheHolder;
.super Ljava/lang/Object;
.source "VideoPlayInfoCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoPlayInfoCacheHolder"
.end annotation


# static fields
.field private static instance:Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;-><init>(Lcom/miui/video/base/cache/VideoPlayInfoCacheManager$1;)V

    sput-object v0, Lcom/miui/video/base/cache/VideoPlayInfoCacheManager$VideoPlayInfoCacheHolder;->instance:Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;
    .locals 1

    sget-object v0, Lcom/miui/video/base/cache/VideoPlayInfoCacheManager$VideoPlayInfoCacheHolder;->instance:Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;

    return-object v0
.end method
