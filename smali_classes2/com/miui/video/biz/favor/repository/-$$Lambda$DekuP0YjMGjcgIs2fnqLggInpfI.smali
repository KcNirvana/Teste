.class public final synthetic Lcom/miui/video/biz/favor/repository/-$$Lambda$DekuP0YjMGjcgIs2fnqLggInpfI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/video/biz/favor/repository/-$$Lambda$DekuP0YjMGjcgIs2fnqLggInpfI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/favor/repository/-$$Lambda$DekuP0YjMGjcgIs2fnqLggInpfI;

    invoke-direct {v0}, Lcom/miui/video/biz/favor/repository/-$$Lambda$DekuP0YjMGjcgIs2fnqLggInpfI;-><init>()V

    sput-object v0, Lcom/miui/video/biz/favor/repository/-$$Lambda$DekuP0YjMGjcgIs2fnqLggInpfI;->INSTANCE:Lcom/miui/video/biz/favor/repository/-$$Lambda$DekuP0YjMGjcgIs2fnqLggInpfI;

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

    check-cast p1, Lcom/miui/video/base/common/net/model/CardListEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardListEntity;->getRow_list()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
