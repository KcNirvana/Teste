.class public Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;
.super Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;
.source "OnlineSubAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter<",
        "Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;",
        ">;"
    }
.end annotation


# instance fields
.field isAllItemEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->isAllItemEnable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;)Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->mListener:Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;)Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->mListener:Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public disableAllItemChoser()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->isAllItemEnable:Z

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public enableItemChoser()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->isAllItemEnable:Z

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getEnableItems()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->isAllItemEnable:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/miui/video/player/service/R$layout;->lp_subtitle_online_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;

    invoke-direct {p3}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;-><init>()V

    sget v0, Lcom/miui/video/player/service/R$id;->v_name:I

    invoke-virtual {p0, p2, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;->name:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/player/service/R$id;->v_language:I

    invoke-virtual {p0, p2, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;->language:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/player/service/R$id;->v_size:I

    invoke-virtual {p0, p2, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;

    iget-object v1, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;->getSubFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;->language:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/player/service/R$string;->lv_subtitle_onlinesub_language:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;->getLanguageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;->getSubSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;->size:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/miui/video/player/service/R$plurals;->lv_subtitle_onlinesub_size_float_kb:I

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v6

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v1, v8, v7

    invoke-virtual {v3, v5, v6, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v1, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;->size:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/player/service/R$string;->lv_subtitle_onlinesub_size_string_b:I

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;->getLanguageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;->language:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_2

    :cond_1
    iget-object v0, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;->language:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_2
    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->isAllItemEnable:Z

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;->language:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p3, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3

    :cond_2
    iget-object v0, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;->language:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p3, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {p3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_3
    new-instance p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    iget-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->isAllItemEnable:Z

    return p1
.end method
