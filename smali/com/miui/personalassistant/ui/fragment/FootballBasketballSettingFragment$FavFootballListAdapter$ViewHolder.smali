.class Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FootballBasketballSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public mDrag:Landroid/view/View;

.field public mIcon:Landroid/widget/ImageView;

.field public mName:Landroid/widget/TextView;

.field private mPosition:I

.field final synthetic this$1:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter$ViewHolder;->this$1:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1b09037c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const v0, 0x1b09037d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    const v0, 0x1b09037e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter$ViewHolder;->mDrag:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public bindEntry(I)V
    .locals 3

    iput p1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter$ViewHolder;->mPosition:I

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter$ViewHolder;->this$1:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->getItem(I)Lcom/miui/personalassistant/model/BaseBallTeam;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/BaseBallTeam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter$ViewHolder;->mDrag:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/BaseBallTeam;->getImageBigUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/miui/personalassistant/util/ImageUtil;->diplay(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter$ViewHolder;->this$1:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->access$200(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;)Lcom/miui/personalassistant/ui/widget/SettingListView;

    move-result-object v0

    iget v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter$ViewHolder;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/ui/widget/SettingListView;->startDragging(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
