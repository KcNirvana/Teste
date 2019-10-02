.class public final synthetic Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$ScreenshotsFragment$MtppNCiwCWvx6Outgw5_G6nC0YE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$ScreenshotsFragment$MtppNCiwCWvx6Outgw5_G6nC0YE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$ScreenshotsFragment$MtppNCiwCWvx6Outgw5_G6nC0YE;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$ScreenshotsFragment$MtppNCiwCWvx6Outgw5_G6nC0YE;-><init>()V

    sput-object v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$ScreenshotsFragment$MtppNCiwCWvx6Outgw5_G6nC0YE;->INSTANCE:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$ScreenshotsFragment$MtppNCiwCWvx6Outgw5_G6nC0YE;

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

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;

    check-cast p2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->lambda$teamAndSortEntity$25(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;)I

    move-result p1

    return p1
.end method
