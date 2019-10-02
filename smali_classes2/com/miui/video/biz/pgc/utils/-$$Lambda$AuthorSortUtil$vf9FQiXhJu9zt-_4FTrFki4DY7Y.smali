.class public final synthetic Lcom/miui/video/biz/pgc/utils/-$$Lambda$AuthorSortUtil$vf9FQiXhJu9zt-_4FTrFki4DY7Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/video/biz/pgc/utils/-$$Lambda$AuthorSortUtil$vf9FQiXhJu9zt-_4FTrFki4DY7Y;->f$0:I

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/pgc/utils/-$$Lambda$AuthorSortUtil$vf9FQiXhJu9zt-_4FTrFki4DY7Y;->f$0:I

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    check-cast p2, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-static {v0, p1, p2}, Lcom/miui/video/biz/pgc/utils/AuthorSortUtil;->lambda$sortTinyCardEntity$18(ILcom/miui/video/common/feed/entity/TinyCardEntity;Lcom/miui/video/common/feed/entity/TinyCardEntity;)I

    move-result p1

    return p1
.end method
