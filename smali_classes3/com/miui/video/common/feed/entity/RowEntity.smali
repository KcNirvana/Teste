.class public Lcom/miui/video/common/feed/entity/RowEntity;
.super Lcom/miui/video/framework/base/ui/BaseUIEntity;
.source "RowEntity.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/miui/video/common/feed/entity/RowEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private isChecked:Z

.field private isExpanded:Z

.field private isNew:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/video/common/feed/entity/RowEntity;)I
    .locals 7

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/RowEntity;->getUpdateTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/RowEntity;->getUpdateTime()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/miui/video/common/feed/entity/RowEntity;->updateTime:J

    sub-long/2addr v1, v5

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    return v0

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/video/common/feed/entity/RowEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/entity/RowEntity;->compareTo(Lcom/miui/video/common/feed/entity/RowEntity;)I

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/RowEntity;->list:Ljava/util/List;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/common/feed/entity/RowEntity;->updateTime:J

    return-wide v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/feed/entity/RowEntity;->isChecked:Z

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/feed/entity/RowEntity;->isExpanded:Z

    return v0
.end method

.method public isNew()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/feed/entity/RowEntity;->isNew:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/common/feed/entity/RowEntity;->isChecked:Z

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/common/feed/entity/RowEntity;->isExpanded:Z

    return-void
.end method

.method public setIsNew(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/common/feed/entity/RowEntity;->isNew:Z

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/RowEntity;->list:Ljava/util/List;

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/common/feed/entity/RowEntity;->updateTime:J

    return-void
.end method
