.class public final synthetic Lcom/miui/video/localvideoplayer/-$$Lambda$27tJzNEhL0ell2THIeoPKKg_cJg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/video/localvideoplayer/-$$Lambda$27tJzNEhL0ell2THIeoPKKg_cJg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/localvideoplayer/-$$Lambda$27tJzNEhL0ell2THIeoPKKg_cJg;

    invoke-direct {v0}, Lcom/miui/video/localvideoplayer/-$$Lambda$27tJzNEhL0ell2THIeoPKKg_cJg;-><init>()V

    sput-object v0, Lcom/miui/video/localvideoplayer/-$$Lambda$27tJzNEhL0ell2THIeoPKKg_cJg;->INSTANCE:Lcom/miui/video/localvideoplayer/-$$Lambda$27tJzNEhL0ell2THIeoPKKg_cJg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->releaseRetriever()V

    return-void
.end method
