.class public Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;
.super Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;
.source "SubtitleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter<",
        "Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;)Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;->mListener:Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/miui/video/player/service/R$layout;->lp_adapter_audio_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter$ViewHolder;-><init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter$1;)V

    sget v1, Lcom/miui/video/player/service/R$id;->tv_audio_trace:I

    invoke-virtual {p0, p2, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter$ViewHolder;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter$ViewHolder;->content:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    :cond_1
    iget-object v2, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_1
    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->isSubtitle()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/player/service/R$string;->lv_subtitle_track:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v2, "Subtitle Track"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    iget-object v1, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object p3, p3, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter$ViewHolder;->content:Landroid/widget/TextView;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;I)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
