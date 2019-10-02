.class public final synthetic Lcom/miui/video/biz/favor/repository/-$$Lambda$PMcQipigtANKXr_LQnPxZn2-Bmc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/video/biz/favor/repository/-$$Lambda$PMcQipigtANKXr_LQnPxZn2-Bmc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/favor/repository/-$$Lambda$PMcQipigtANKXr_LQnPxZn2-Bmc;

    invoke-direct {v0}, Lcom/miui/video/biz/favor/repository/-$$Lambda$PMcQipigtANKXr_LQnPxZn2-Bmc;-><init>()V

    sput-object v0, Lcom/miui/video/biz/favor/repository/-$$Lambda$PMcQipigtANKXr_LQnPxZn2-Bmc;->INSTANCE:Lcom/miui/video/biz/favor/repository/-$$Lambda$PMcQipigtANKXr_LQnPxZn2-Bmc;

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

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    check-cast p1, Lio/reactivex/ObservableSource;

    return-object p1
.end method
