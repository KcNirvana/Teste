.class public final synthetic Lcom/miui/video/service/language/-$$Lambda$haHVlshLqaTryVq6S8CJVbjg-84;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/video/service/language/-$$Lambda$haHVlshLqaTryVq6S8CJVbjg-84;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/service/language/-$$Lambda$haHVlshLqaTryVq6S8CJVbjg-84;

    invoke-direct {v0}, Lcom/miui/video/service/language/-$$Lambda$haHVlshLqaTryVq6S8CJVbjg-84;-><init>()V

    sput-object v0, Lcom/miui/video/service/language/-$$Lambda$haHVlshLqaTryVq6S8CJVbjg-84;->INSTANCE:Lcom/miui/video/service/language/-$$Lambda$haHVlshLqaTryVq6S8CJVbjg-84;

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

    check-cast p1, Lcom/miui/video/base/common/net/model/LanguageListEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/LanguageListEntity;->getKvList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
