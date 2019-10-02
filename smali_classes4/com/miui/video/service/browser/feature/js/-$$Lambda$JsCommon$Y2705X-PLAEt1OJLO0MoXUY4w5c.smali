.class public final synthetic Lcom/miui/video/service/browser/feature/js/-$$Lambda$JsCommon$Y2705X-PLAEt1OJLO0MoXUY4w5c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/video/service/browser/feature/js/-$$Lambda$JsCommon$Y2705X-PLAEt1OJLO0MoXUY4w5c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/service/browser/feature/js/-$$Lambda$JsCommon$Y2705X-PLAEt1OJLO0MoXUY4w5c;

    invoke-direct {v0}, Lcom/miui/video/service/browser/feature/js/-$$Lambda$JsCommon$Y2705X-PLAEt1OJLO0MoXUY4w5c;-><init>()V

    sput-object v0, Lcom/miui/video/service/browser/feature/js/-$$Lambda$JsCommon$Y2705X-PLAEt1OJLO0MoXUY4w5c;->INSTANCE:Lcom/miui/video/service/browser/feature/js/-$$Lambda$JsCommon$Y2705X-PLAEt1OJLO0MoXUY4w5c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/miui/video/service/share/data/ShareInfo;

    invoke-static {p1}, Lcom/miui/video/service/browser/feature/js/JsCommon;->lambda$onClickToShare$12(Lcom/miui/video/service/share/data/ShareInfo;)Z

    move-result p1

    return p1
.end method
