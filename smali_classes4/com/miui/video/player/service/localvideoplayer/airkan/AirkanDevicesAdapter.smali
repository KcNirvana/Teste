.class public Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;
.super Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;
.source "AirkanDevicesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter$ViewHolder;
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
.field private playingDeviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter$ViewHolder;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter$ViewHolder;-><init>(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter$1;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/miui/video/player/service/R$layout;->vp_popup_airkan_device_item:I

    invoke-static {v0, v1, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    sget v0, Lcom/miui/video/player/service/R$id;->vp_popup_device_name:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter$ViewHolder;->access$102(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter$ViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-static {p2}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter$ViewHolder;->access$100(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;->playingDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter$ViewHolder;->access$100(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/player/service/R$color;->vp_select_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter$ViewHolder;->access$100(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/player/service/R$color;->vp_white_90:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/miui/video/player/service/R$string;->lv_device_list_seaching:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p2}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter$ViewHolder;->access$100(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/miui/video/player/service/R$color;->vp_font_gray:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-object p3
.end method

.method public setPlayingDeviceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;->playingDeviceName:Ljava/lang/String;

    return-void
.end method
