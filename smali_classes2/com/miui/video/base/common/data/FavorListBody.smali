.class public Lcom/miui/video/base/common/data/FavorListBody;
.super Ljava/lang/Object;
.source "FavorListBody.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public idList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/data/ContentHeartDelIdParam;",
            ">;"
        }
    .end annotation
.end field

.field public isAll:I

.field public type:I


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/data/ContentHeartDelIdParam;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/base/common/data/FavorListBody;->isAll:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/video/base/common/data/FavorListBody;->type:I

    iput p1, p0, Lcom/miui/video/base/common/data/FavorListBody;->isAll:I

    iput p2, p0, Lcom/miui/video/base/common/data/FavorListBody;->type:I

    iput-object p3, p0, Lcom/miui/video/base/common/data/FavorListBody;->idList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/data/ContentHeartDelIdParam;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/common/data/FavorListBody;->idList:Ljava/util/List;

    return-object v0
.end method

.method public setList(Ljava/util/List;)Lcom/miui/video/base/common/data/FavorListBody;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/data/ContentHeartDelIdParam;",
            ">;)",
            "Lcom/miui/video/base/common/data/FavorListBody;"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/base/common/data/FavorListBody;->idList:Ljava/util/List;

    return-object p0
.end method
