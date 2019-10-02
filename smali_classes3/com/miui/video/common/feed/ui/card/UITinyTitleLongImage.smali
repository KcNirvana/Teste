.class public Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UITinyTitleLongImage.java"


# static fields
.field public static final ACTION_SET_IMAGE_NULL_BG:Ljava/lang/String; = "ACTION_SET_IMAGE_NULL_BG"

.field public static final TAG:Ljava/lang/String; = "UITinyTitleImage"


# instance fields
.field private eClick:Landroid/view/View$OnClickListener;

.field private vSubTitle:Landroid/widget/TextView;

.field private vTitle:Landroid/widget/TextView;

.field private vUIImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage$1;-><init>(Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage;->eClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage$1;-><init>(Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage;->eClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage$1;-><init>(Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage;->eClick:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_tiny_title_long_image:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage;->inflateView(I)V

    sget v0, Lcom/miui/video/common/feed/R$id;->ui_img:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage;->vUIImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_subtitle:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage;->vSubTitle:Landroid/widget/TextView;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage;->vUIImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage;->vUIImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->onDestroyView()V

    :cond_0
    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage;->vUIImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    return-void
.end method
