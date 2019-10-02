.class Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;
.super Landroid/widget/BaseAdapter;
.source "DialogSubtitleOnlineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Adapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$OnItemClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;->context:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;->dataList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;)Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;->listener:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;->getItem(I)Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/miui/video/biz/videoplus/R$layout;->ui_player_dialog_subtitle_online_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$ViewHolder;

    invoke-direct {p3, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$ViewHolder;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$1;)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$ViewHolder;->name:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_language:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$ViewHolder;->language:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_size:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$ViewHolder;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;->getItem(I)Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;

    move-result-object v0

    iget-object v1, p3, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->getSubFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p3, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$ViewHolder;->language:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/videoplus/R$string;->plus_player_subtitle_online_language:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->getLanguageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->getSubSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object p3, p3, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$ViewHolder;->size:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$plurals;->plus_player_subtitle_online_size:I

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p3, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter$1;

    invoke-direct {p3, p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter$1;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method setOnItemClickListener(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;->listener:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$OnItemClickListener;

    return-void
.end method
