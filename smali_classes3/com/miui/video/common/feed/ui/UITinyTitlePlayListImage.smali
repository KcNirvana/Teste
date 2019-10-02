.class public Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UITinyTitlePlayListImage.java"


# static fields
.field public static final ACTION_SET_IMAGE_NULL_BG:Ljava/lang/String; = "ACTION_SET_IMAGE_NULL_BG"

.field public static final TAG:Ljava/lang/String; = "com.miui.video.common.feed.ui.UITinyTitlePlayListImage"


# instance fields
.field private eClick:Landroid/view/View$OnClickListener;

.field private vPlayImg:Landroid/widget/ImageView;

.field private vTitle:Landroid/widget/TextView;

.field private vTopRightLogo:Landroid/widget/ImageView;

.field private vUIImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage$1;-><init>(Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->eClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage$1;-><init>(Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->eClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage$1;-><init>(Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->eClick:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_tiny_title_playlist_image:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->inflateView(I)V

    sget v0, Lcom/miui/video/common/feed/R$id;->play_icon_iv:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->vPlayImg:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/common/feed/R$id;->ui_img:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->vUIImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_topright_logo:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->vTopRightLogo:Landroid/widget/ImageView;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->vTopRightLogo:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->ImgClear(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->vTopRightLogo:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->vUIImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->vUIImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->onDestroyView()V

    :cond_0
    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->vUIImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    if-eqz p2, :cond_2

    check-cast p2, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->isChecked()Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/common/feed/R$color;->c_blue_mediation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->vPlayImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/common/feed/R$color;->c_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->vPlayImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTopRightLogo()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->vTopRightLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->vTopRightLogo:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTopRightLogo()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->vTopRightLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0, p2}, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->vTitle:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method
