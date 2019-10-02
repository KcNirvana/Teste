.class public Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;
.super Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;
.source "FileBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter$MyOnItemClickListener;,
        Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter<",
        "Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;)Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;->mListener:Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;

    return-object p0
.end method

.method private setImageIcon(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter$ViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter$ViewHolder;->vTitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter$ViewHolder;

    invoke-direct {p2, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter$ViewHolder;-><init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$layout;->lp_subtitle_seek_items:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    sget v0, Lcom/miui/video/player/service/R$id;->item_title:I

    invoke-virtual {p0, p3, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter$ViewHolder;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter$ViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    :goto_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;->mGroup:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$drawable;->selector_subtitle_folder_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;->setImageIcon(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter$ViewHolder;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$drawable;->selector_subtitle_file_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;->setImageIcon(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter$ViewHolder;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    iget-object v0, p2, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter$ViewHolder;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p2, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter$ViewHolder;->vTitle:Landroid/widget/TextView;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-object p3
.end method
