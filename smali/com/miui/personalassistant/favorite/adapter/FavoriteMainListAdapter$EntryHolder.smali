.class Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;
.super Ljava/lang/Object;
.source "FavoriteMainListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryHolder"
.end annotation


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mDateTextView:Landroid/widget/TextView;

.field private mDateTextViewNoImage:Landroid/widget/TextView;

.field private mIconView:Landroid/widget/ImageView;

.field private mTitleTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1b0900ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->mTitleTextView:Landroid/widget/TextView;

    const v0, 0x1b09012c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->mDateTextView:Landroid/widget/TextView;

    const v0, 0x1b090243

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->mDateTextViewNoImage:Landroid/widget/TextView;

    const v0, 0x1b09006c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->mIconView:Landroid/widget/ImageView;

    const v0, 0x1b090242

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->mCheckbox:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->mDateTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->mDateTextViewNoImage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->mCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method
