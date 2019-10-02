.class public Lcom/miui/video/service/widget/ui/UILanguageItem;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UILanguageItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ITEM_SPACE:I = 0x1e

.field public static final TAG:Ljava/lang/String; = "UILanguageItem"


# instance fields
.field private backgroundNormal:Landroid/graphics/drawable/Drawable;

.field private backgroundSelected:Landroid/graphics/drawable/Drawable;

.field private colorNormal:I

.field private colorSelected:I

.field private mLanguageEntity:Lcom/miui/video/base/common/net/model/LanguageEntity;

.field private mRoot:Landroid/widget/RelativeLayout;

.field private vLanguageName:Landroid/widget/TextView;

.field private vSelect:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/service/R$layout;->ui_card_language_item:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 2

    sget v0, Lcom/miui/video/service/R$id;->root_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UILanguageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->mRoot:Landroid/widget/RelativeLayout;

    sget v0, Lcom/miui/video/service/R$id;->v_name:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UILanguageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->vLanguageName:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/service/R$id;->v_select:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UILanguageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->vSelect:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->vLanguageName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/service/R$color;->c_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->colorSelected:I

    sget v1, Lcom/miui/video/service/R$color;->c_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->colorNormal:I

    sget v1, Lcom/miui/video/service/R$drawable;->shape_grid_language_pressed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->backgroundSelected:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/miui/video/service/R$drawable;->shape_grid_language_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->backgroundNormal:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->mLanguageEntity:Lcom/miui/video/base/common/net/model/LanguageEntity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->mLanguageEntity:Lcom/miui/video/base/common/net/model/LanguageEntity;

    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->mLanguageEntity:Lcom/miui/video/base/common/net/model/LanguageEntity;

    iget-boolean v1, v1, Lcom/miui/video/base/common/net/model/LanguageEntity;->mIsSelected:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/miui/video/base/common/net/model/LanguageEntity;->mIsSelected:Z

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->mLanguageEntity:Lcom/miui/video/base/common/net/model/LanguageEntity;

    iget-boolean v0, v0, Lcom/miui/video/base/common/net/model/LanguageEntity;->mIsSelected:Z

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UILanguageItem;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->mUIClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->mUIClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "ACTION_SET_VALUE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    instance-of p1, p3, Lcom/miui/video/base/common/net/model/LanguageEntity;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p3, Lcom/miui/video/base/common/net/model/LanguageEntity;

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->vLanguageName:Landroid/widget/TextView;

    iget-object p2, p3, Lcom/miui/video/base/common/net/model/LanguageEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p3, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->mLanguageEntity:Lcom/miui/video/base/common/net/model/LanguageEntity;

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->mRoot:Landroid/widget/RelativeLayout;

    iget-boolean p2, p3, Lcom/miui/video/base/common/net/model/LanguageEntity;->mIsSelected:Z

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->vLanguageName:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->vLanguageName:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->mLanguageEntity:Lcom/miui/video/base/common/net/model/LanguageEntity;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->mLanguageEntity:Lcom/miui/video/base/common/net/model/LanguageEntity;

    iget-boolean p1, p1, Lcom/miui/video/base/common/net/model/LanguageEntity;->mIsSelected:Z

    invoke-virtual {p0, p1}, Lcom/miui/video/service/widget/ui/UILanguageItem;->setSelected(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 1

    if-eqz p2, :cond_1

    instance-of p1, p2, Lcom/miui/video/base/common/net/model/LanguageEntity;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/miui/video/base/common/net/model/LanguageEntity;

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->vLanguageName:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/miui/video/base/common/net/model/LanguageEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->mLanguageEntity:Lcom/miui/video/base/common/net/model/LanguageEntity;

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->mRoot:Landroid/widget/RelativeLayout;

    iget-boolean p2, p2, Lcom/miui/video/base/common/net/model/LanguageEntity;->mIsSelected:Z

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->vLanguageName:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->vLanguageName:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->mLanguageEntity:Lcom/miui/video/base/common/net/model/LanguageEntity;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->mLanguageEntity:Lcom/miui/video/base/common/net/model/LanguageEntity;

    iget-boolean p1, p1, Lcom/miui/video/base/common/net/model/LanguageEntity;->mIsSelected:Z

    invoke-virtual {p0, p1}, Lcom/miui/video/service/widget/ui/UILanguageItem;->setSelected(Z)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->mRoot:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->mRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->mLanguageEntity:Lcom/miui/video/base/common/net/model/LanguageEntity;

    iget-boolean v0, v0, Lcom/miui/video/base/common/net/model/LanguageEntity;->mIsSelected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->vLanguageName:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->colorSelected:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->mRoot:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->backgroundSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->vLanguageName:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->colorNormal:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->mRoot:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->backgroundNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->vSelect:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UILanguageItem;->vSelect:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method
