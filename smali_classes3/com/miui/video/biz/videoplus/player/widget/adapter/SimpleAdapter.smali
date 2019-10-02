.class public Lcom/miui/video/biz/videoplus/player/widget/adapter/SimpleAdapter;
.super Ljava/lang/Object;
.source "SimpleAdapter.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/widget/adapter/IBaseAdapter;


# static fields
.field public static final LAYOUT_LINE:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/entity/BaseEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/entity/BaseEntity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/widget/adapter/SimpleAdapter;->mEntities:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/adapter/SimpleAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/adapter/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private setLineData(Landroid/view/View;Lcom/miui/video/biz/videoplus/player/entities/LineEntity;)V
    .locals 4

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_line_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->tv_line_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/miui/video/biz/videoplus/R$id;->tv_line_detail:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/miui/video/biz/videoplus/R$id;->tv_line_extra:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->getDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->getIcon()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-lez v1, :cond_0

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->getIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->getExtras()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->getExtras()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->getExtras()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    if-eqz v1, :cond_3

    rem-int/lit8 v2, v1, 0x3

    if-nez v2, :cond_2

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->getExtras()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    return-void
.end method


# virtual methods
.method public getItemType(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/adapter/SimpleAdapter;->mEntities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/common/entity/BaseEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/BaseEntity;->getLayoutType()I

    move-result p1

    return p1
.end method

.method public getItemsSize()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/adapter/SimpleAdapter;->mEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/adapter/SimpleAdapter;->mEntities:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/base/common/entity/BaseEntity;

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/player/widget/adapter/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_card_line:I

    invoke-virtual {p3, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p2, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/videoplus/player/widget/adapter/SimpleAdapter;->setLineData(Landroid/view/View;Lcom/miui/video/biz/videoplus/player/entities/LineEntity;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/miui/video/biz/videoplus/player/widget/adapter/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_card_line:I

    invoke-virtual {p3, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p2, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/videoplus/player/widget/adapter/SimpleAdapter;->setLineData(Landroid/view/View;Lcom/miui/video/biz/videoplus/player/entities/LineEntity;)V

    :goto_0
    return-object p1
.end method
