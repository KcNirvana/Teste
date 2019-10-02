.class public Lcom/miui/video/common/feed/ui/UITinyTitleCircleImageItem;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UITinyTitleCircleImageItem.java"


# instance fields
.field private vAvatar:Landroid/widget/ImageView;

.field private vName:Landroid/widget/TextView;

.field private vRedPoint:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_item_circle_image_with_subtitle:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UITinyTitleCircleImageItem;->inflateView(I)V

    sget v0, Lcom/miui/video/common/feed/R$id;->iv_avatar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UITinyTitleCircleImageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UITinyTitleCircleImageItem;->vAvatar:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/common/feed/R$id;->iv_red_point:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UITinyTitleCircleImageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UITinyTitleCircleImageItem;->vRedPoint:Landroid/view/View;

    sget v0, Lcom/miui/video/common/feed/R$id;->tv_name:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UITinyTitleCircleImageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UITinyTitleCircleImageItem;->vName:Landroid/widget/TextView;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/framework/base/ui/UIBase;->onDestroyView()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UITinyTitleCircleImageItem;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    const-string p2, "ACTION_SET_VALUE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    instance-of p1, p3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz p1, :cond_2

    check-cast p3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UITinyTitleCircleImageItem;->vAvatar:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorProfile()Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/miui/video/common/feed/R$drawable;->ic_user_default:I

    invoke-static {p1, p2, v0}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;I)V

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UITinyTitleCircleImageItem;->vName:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UITinyTitleCircleImageItem;->vRedPoint:Landroid/view/View;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getRedPoint()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const/16 p2, 0x8

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p3}, Lcom/miui/video/common/feed/ui/UITinyTitleCircleImageItem;->setTag(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
