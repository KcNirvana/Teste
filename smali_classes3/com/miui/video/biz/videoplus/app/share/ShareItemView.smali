.class public Lcom/miui/video/biz/videoplus/app/share/ShareItemView;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "ShareItemView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareItemView"


# instance fields
.field private mFruit:Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

.field private vFruitImage:Landroid/widget/ImageView;

.field private vFruitName:Landroid/widget/TextView;


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

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_plus_share_item:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/share/ShareItemView;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_image:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/share/ShareItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/share/ShareItemView;->vFruitImage:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_name:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/share/ShareItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/share/ShareItemView;->vFruitName:Landroid/widget/TextView;

    return-void
.end method

.method public initViewsEvent()V
    .locals 0

    return-void
.end method

.method public setData(Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/share/ShareItemView;->mFruit:Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/share/ShareItemView;->vFruitImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/share/ShareItemView;->vFruitImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/share/ShareItemView;->mFruit:Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/share/ShareItemView;->vFruitName:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/share/ShareItemView;->vFruitName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/share/ShareItemView;->mFruit:Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
