.class public final synthetic Lcom/miui/video/biz/videoplus/app/business/gallery/-$$Lambda$GalleryData$BFUSgGwPkP6TxlZ2PE79oNHLOug;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/video/biz/videoplus/app/business/gallery/-$$Lambda$GalleryData$BFUSgGwPkP6TxlZ2PE79oNHLOug;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/-$$Lambda$GalleryData$BFUSgGwPkP6TxlZ2PE79oNHLOug;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/-$$Lambda$GalleryData$BFUSgGwPkP6TxlZ2PE79oNHLOug;-><init>()V

    sput-object v0, Lcom/miui/video/biz/videoplus/app/business/gallery/-$$Lambda$GalleryData$BFUSgGwPkP6TxlZ2PE79oNHLOug;->INSTANCE:Lcom/miui/video/biz/videoplus/app/business/gallery/-$$Lambda$GalleryData$BFUSgGwPkP6TxlZ2PE79oNHLOug;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    check-cast p2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->lambda$null$15(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;)I

    move-result p1

    return p1
.end method
