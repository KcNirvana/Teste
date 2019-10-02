.class public Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIBottomCenterText;
.super Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;
.source "UIBottomCenterText.java"


# instance fields
.field private vTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_videoplus_bottom_center_text:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIBottomCenterText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIBottomCenterText;->vTitle:Landroid/widget/TextView;

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "ACTION_SET_VALUE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    instance-of p1, p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIBottomCenterText;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    instance-of p1, p3, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    if-eqz p1, :cond_1

    check-cast p3, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIBottomCenterText;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getBaseLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
