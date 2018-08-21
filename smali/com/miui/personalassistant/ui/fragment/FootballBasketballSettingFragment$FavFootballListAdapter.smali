.class Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FootballBasketballSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavFootballListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mData:Ljava/util/ArrayList;

.field private mIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;Ljava/util/ArrayList;)V
    .locals 4

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-virtual {p1}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->mData:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->mIdMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->mIdMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->mData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/miui/personalassistant/model/BaseBallTeam;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->mData:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/model/BaseBallTeam;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->getItem(I)Lcom/miui/personalassistant/model/BaseBallTeam;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->mIdMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const-string/jumbo v1, "FootballBasketballSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getView position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tgetCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1b0400fa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter$ViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter$ViewHolder;-><init>(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter$ViewHolder;->bindEntry(I)V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0202ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter$ViewHolder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0202ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/miui/personalassistant/model/BaseBallTeam;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->mData:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->mIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->mIdMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->notifyDataSetChanged()V

    return-void
.end method
