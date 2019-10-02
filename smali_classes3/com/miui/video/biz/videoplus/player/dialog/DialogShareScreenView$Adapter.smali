.class Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;
.super Landroid/widget/BaseAdapter;
.source "DialogShareScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Adapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private devices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;",
            ">;"
        }
    .end annotation
.end field

.field private playerFragment:Lcom/miui/video/biz/videoplus/player/IPlayerController;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/player/IPlayerController;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;->devices:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;->playerFragment:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;)Lcom/miui/video/biz/videoplus/player/IPlayerController;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;->playerFragment:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;->devices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;->devices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;->getItem(I)Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

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

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_player_dialog_audio_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$1;)V

    sget v2, Lcom/miui/video/biz/videoplus/R$id;->text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {p3, v2}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;->access$202(Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;->context:Landroid/content/Context;

    sget v3, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_share_screen_item:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-static {p3}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;->access$200(Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget v1, Lcom/miui/video/biz/videoplus/R$id;->select:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {p3, v1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;->access$302(Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;->getItem(I)Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    move-result-object p1

    invoke-static {p3}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;->access$200(Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p3}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;->access$300(Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;->access$300(Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p3

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    new-instance p3, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter$1;

    invoke-direct {p3, p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter$1;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;->devices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;->devices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
