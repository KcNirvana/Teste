.class public Lcom/miui/video/biz/videoplus/app/widget/UISearchResultTitle;
.super Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;
.source "UISearchResultTitle.java"


# instance fields
.field private vResultView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_videoplus_search_result_title:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_result_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISearchResultTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISearchResultTitle;->vResultView:Landroid/widget/TextView;

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 5

    const-string p2, "ACTION_SET_VALUE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    instance-of p1, p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getResult()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/widget/UISearchResultTitle;->vResultView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISearchResultTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$plurals;->plus_search_result_title:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
