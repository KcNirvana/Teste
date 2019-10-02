.class public Lcom/miui/video/service/common/architeture/entity/InfoStreamDataList;
.super Lcom/miui/video/framework/base/entity/PageEntity;
.source "InfoStreamDataList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/framework/base/entity/PageEntity<",
        "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
            ">;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/String;

.field private page:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/framework/base/entity/PageEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/entity/InfoStreamDataList;->list:Ljava/util/List;

    return-object v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/entity/InfoStreamDataList;->next:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    iget v0, p0, Lcom/miui/video/service/common/architeture/entity/InfoStreamDataList;->page:I

    return v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/entity/InfoStreamDataList;->list:Ljava/util/List;

    return-void
.end method

.method public setNext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/entity/InfoStreamDataList;->next:Ljava/lang/String;

    return-void
.end method

.method public setPage(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/service/common/architeture/entity/InfoStreamDataList;->page:I

    return-void
.end method
