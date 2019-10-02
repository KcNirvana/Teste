.class Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;
.super Landroid/widget/BaseAdapter;
.source "DialogAudioView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Adapter"
.end annotation


# instance fields
.field private audioTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private playerFragment:Lcom/miui/video/biz/videoplus/player/IPlayerController;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/player/IPlayerController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;->playerFragment:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {p2}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->getAudioTracks()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;->audioTracks:Ljava/util/List;

    return-void
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;)Lcom/miui/video/biz/videoplus/player/IPlayerController;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;->playerFragment:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;->audioTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;->audioTracks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;->getItem(I)Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_player_dialog_audio_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$1;)V

    sget v2, Lcom/miui/video/biz/videoplus/R$id;->text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {p3, v2}, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;->access$102(Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;->context:Landroid/content/Context;

    sget v3, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_audio_track_item:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-static {p3}, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;->access$100(Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget v1, Lcom/miui/video/biz/videoplus/R$id;->select:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {p3, v1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;->access$202(Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;->getItem(I)Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/video/biz/videoplus/R$string;->plus_player_audio_track:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-static {p3}, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;->access$100(Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p3}, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;->access$200(Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;->access$200(Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    new-instance p1, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter$1;

    invoke-direct {p1, p0, v1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter$1;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
