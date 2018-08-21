.class Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$EntryHolder;
.super Ljava/lang/Object;
.source "ShoppingMainListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryHolder"
.end annotation


# instance fields
.field private mAppName:Landroid/widget/TextView;

.field private mCheckbox:Landroid/widget/CheckBox;

.field private mIconView:Landroid/widget/ImageView;

.field private mPrice:Landroid/widget/TextView;

.field private mTitleTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$EntryHolder;->this$0:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1b0900ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$EntryHolder;->mTitleTextView:Landroid/widget/TextView;

    const v0, 0x1b0901df

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$EntryHolder;->mPrice:Landroid/widget/TextView;

    const v0, 0x1b090392

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$EntryHolder;->mAppName:Landroid/widget/TextView;

    const v0, 0x1b09006c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$EntryHolder;->mIconView:Landroid/widget/ImageView;

    const v0, 0x1b090242

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$EntryHolder;->mCheckbox:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$EntryHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$EntryHolder;->mAppName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$EntryHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$EntryHolder;->mPrice:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$EntryHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$EntryHolder;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$EntryHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$EntryHolder;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$EntryHolder;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter$EntryHolder;->mCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method
