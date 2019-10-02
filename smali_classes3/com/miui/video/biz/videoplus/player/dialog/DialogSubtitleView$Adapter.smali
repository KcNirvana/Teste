.class Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;
.super Landroid/widget/BaseAdapter;
.source "DialogSubtitleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Adapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dialogSubtitleView:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;

.field private playerFragment:Lcom/miui/video/biz/videoplus/player/IPlayerController;

.field private subtitleTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/player/IPlayerController;Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;->playerFragment:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {p2}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->getSubtitleTracks()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;->subtitleTracks:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;->dialogSubtitleView:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;)Lcom/miui/video/biz/videoplus/player/IPlayerController;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;->playerFragment:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;)Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;->dialogSubtitleView:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;->subtitleTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;->subtitleTracks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;->getItem(I)Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

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

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_player_dialog_subtitle_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$ViewHolder;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$1;)V

    sget v2, Lcom/miui/video/biz/videoplus/R$id;->text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {p3, v2}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$ViewHolder;->access$102(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;->context:Landroid/content/Context;

    sget v3, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_subtitle_item:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-static {p3}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$ViewHolder;->access$100(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$ViewHolder;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;->getItem(I)Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/videoplus/R$string;->plus_player_subtitle:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-static {p3}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$ViewHolder;->access$100(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$ViewHolder;->access$100(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/miui/video/biz/videoplus/R$color;->color_218BFF:I

    goto :goto_2

    :cond_3
    sget v1, Lcom/miui/video/biz/videoplus/R$color;->c_black:I

    :goto_2
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p1, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter$1;

    invoke-direct {p1, p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter$1;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;->dialogSubtitleView:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->access$400(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;)V

    :cond_4
    return-object p2
.end method
