.class public final synthetic Lcom/miui/video/common/library/utils/-$$Lambda$RxSchedulerUtils$38IZ42twAjDLCd6SFn7jLh-e1Bo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/video/common/library/utils/-$$Lambda$RxSchedulerUtils$38IZ42twAjDLCd6SFn7jLh-e1Bo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/common/library/utils/-$$Lambda$RxSchedulerUtils$38IZ42twAjDLCd6SFn7jLh-e1Bo;

    invoke-direct {v0}, Lcom/miui/video/common/library/utils/-$$Lambda$RxSchedulerUtils$38IZ42twAjDLCd6SFn7jLh-e1Bo;-><init>()V

    sput-object v0, Lcom/miui/video/common/library/utils/-$$Lambda$RxSchedulerUtils$38IZ42twAjDLCd6SFn7jLh-e1Bo;->INSTANCE:Lcom/miui/video/common/library/utils/-$$Lambda$RxSchedulerUtils$38IZ42twAjDLCd6SFn7jLh-e1Bo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p1}, Lcom/miui/video/common/library/utils/RxSchedulerUtils;->lambda$applySchedulersIoToMain$4(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
