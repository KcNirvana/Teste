.class public Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;
.super Landroid/widget/BaseAdapter;
.source "FileBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter$OnItemClickListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->mList:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;)Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->mListener:Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->getItem(I)Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$dimen;->font_size_15:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$color;->c_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setLines(I)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$dimen;->dp_20:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p2, v0, v0, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$dimen;->dp_12:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/video/biz/videoplus/R$dimen;->player_more_row_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setGravity(I)V

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    move-object v5, v1

    move-object v1, p2

    move-object p2, v5

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->getItem(I)Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;->getType()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, p3, :cond_1

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_subtitle_local_dir:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {p3, v0, v0, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, p3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;->getType()I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter$1;-><init>(Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-object v1
.end method

.method public setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->mListener:Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter$OnItemClickListener;

    return-void
.end method
