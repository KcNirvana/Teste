.class public Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;
.super Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;
.source "ResolutionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mSelectedResolution:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;-><init>(Landroid/content/Context;)V

    const-string p1, "0"

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;->mSelectedResolution:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;)Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;->mListener:Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;->mSelectedResolution:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;)Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;->mListener:Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter$ViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter$ViewHolder;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/player/online/R$layout;->vp_resolution_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter$ViewHolder;

    invoke-direct {p3}, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter$ViewHolder;-><init>()V

    sget v0, Lcom/miui/video/biz/player/online/R$id;->vp_resolution_item_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter$ViewHolder;->vResolutionName:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p3, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter$ViewHolder;->vResolutionName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v1, p3, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter$ViewHolder;->vResolutionName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/miui/video/biz/player/online/R$string;->ovp_resolution_auto:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;->mSelectedResolution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p3, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter$ViewHolder;->vResolutionName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/miui/video/biz/player/online/R$drawable;->shape_corner_solid_c5_blue:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_3
    iget-object v1, p3, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter$ViewHolder;->vResolutionName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/miui/video/biz/player/online/R$color;->transparent:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iget-object p3, p3, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter$ViewHolder;->vResolutionName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/player/online/R$color;->c_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p3, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter$1;

    invoke-direct {p3, p0, v0, p1}, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter$1;-><init>(Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;Ljava/lang/String;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public setSelectedResolution(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;->mSelectedResolution:Ljava/lang/String;

    return-void
.end method
