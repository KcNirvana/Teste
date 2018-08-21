.class Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;
.super Ljava/lang/Object;
.source "FavoriteListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryHolder"
.end annotation


# instance fields
.field private mDateTextView:Landroid/widget/TextView;

.field private mIconView:Landroid/widget/ImageView;

.field private mTitleTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1b0900ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;->mTitleTextView:Landroid/widget/TextView;

    const v0, 0x1b09012c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;->mDateTextView:Landroid/widget/TextView;

    const v0, 0x1b09006c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;->mIconView:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;->mDateTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method
