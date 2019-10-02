.class public Lcom/miui/video/common/feed/entity/FeedRowEntity;
.super Lcom/miui/video/framework/base/ui/BaseUIEntity;
.source "FeedRowEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SHOW_0:I = 0x0

.field public static final SHOW_1:I = 0x1

.field public static final SHOW_2:I = 0x2

.field public static final SHOW_3:I = 0x3

.field public static final SHOW_4:I = 0x4


# instance fields
.field private image_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private lastItemOffsetPosition:I

.field private lastItemPosition:I

.field private layoutName:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            ">;"
        }
    .end annotation
.end field

.field private transient localExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private rowBg:Ljava/lang/String;

.field private row_id:Ljava/lang/String;

.field private transient tag:Ljava/lang/Object;

.field private title:Ljava/lang/String;

.field private titleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TitleEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->index:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->list:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->lastItemPosition:I

    iput v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->lastItemOffsetPosition:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->localExtras:Ljava/util/Map;

    return-void
.end method

.method private destroyAd()V
    .locals 0

    return-void
.end method


# virtual methods
.method public add(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->destroy()V

    invoke-direct {p0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->destroyAd()V

    return-void
.end method

.method public get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->localExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->image_list:Ljava/util/List;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->index:I

    return v0
.end method

.method public getLastItemOffsetPosition()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->lastItemOffsetPosition:I

    return v0
.end method

.method public getLastItemPosition()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->lastItemPosition:I

    return v0
.end method

.method public getLayoutName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->layoutName:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->list:Ljava/util/List;

    return-object v0
.end method

.method public getRowBg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->rowBg:Ljava/lang/String;

    return-object v0
.end method

.method public getRow_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->row_id:Ljava/lang/String;

    return-object v0
.end method

.method public getShowEntity()Lcom/miui/video/common/feed/entity/TinyCardEntity;
    .locals 3

    iget v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->index:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->list:Ljava/util/List;

    iget v1, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->index:I

    iget-object v2, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TitleEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->titleList:Ljava/util/List;

    return-object v0
.end method

.method public nextIndex()V
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->index:I

    return-void
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->localExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setImageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->image_list:Ljava/util/List;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->index:I

    return-void
.end method

.method public setLastItemOffsetPosition(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->lastItemOffsetPosition:I

    return-void
.end method

.method public setLastItemPosition(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->lastItemPosition:I

    return-void
.end method

.method public setLayoutName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->layoutName:Ljava/lang/String;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->list:Ljava/util/List;

    return-void
.end method

.method public setRowBg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->rowBg:Ljava/lang/String;

    return-void
.end method

.method public setRow_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->row_id:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->tag:Ljava/lang/Object;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitleList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TitleEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->titleList:Ljava/util/List;

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/FeedRowEntity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
