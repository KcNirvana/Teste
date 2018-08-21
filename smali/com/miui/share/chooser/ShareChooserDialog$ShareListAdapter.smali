.class final Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/share/chooser/ShareChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShareListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final EMPTY_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/share/chooser/ShareInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIconSize:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/share/chooser/ShareInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/share/chooser/ShareChooserDialog;


# direct methods
.method constructor <init>(Lcom/miui/share/chooser/ShareChooserDialog;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->this$0:Lcom/miui/share/chooser/ShareChooserDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->EMPTY_LIST:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->EMPTY_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->mList:Ljava/util/ArrayList;

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private bindView(Landroid/view/View;Lcom/miui/share/chooser/ShareInfo;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter$ViewHolder;

    iget-object v1, v0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/miui/share/chooser/ShareInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/miui/share/chooser/ShareInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/miui/share/R$layout;->share_list_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter$ViewHolder;

    invoke-direct {v0, p0, v2}, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter$ViewHolder;-><init>(Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v3, p0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->mIconSize:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object v3, p0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/share/chooser/ShareInfo;

    invoke-direct {p0, v2, v3}, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->bindView(Landroid/view/View;Lcom/miui/share/chooser/ShareInfo;)V

    return-object v2

    :cond_0
    move-object v2, p2

    goto :goto_0
.end method

.method handlePackagesChanged()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->this$0:Lcom/miui/share/chooser/ShareChooserDialog;

    invoke-static {v2}, Lcom/miui/share/chooser/ShareChooserDialog;->access$300(Lcom/miui/share/chooser/ShareChooserDialog;)V

    invoke-virtual {p0}, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->this$0:Lcom/miui/share/chooser/ShareChooserDialog;

    invoke-virtual {v2}, Lcom/miui/share/chooser/ShareChooserDialog;->dismissAllowingStateLoss()V

    :cond_0
    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->this$0:Lcom/miui/share/chooser/ShareChooserDialog;

    invoke-static {v2}, Lcom/miui/share/chooser/ShareChooserDialog;->access$400(Lcom/miui/share/chooser/ShareChooserDialog;)V

    :cond_1
    return-void
.end method

.method setIconSize(I)V
    .locals 0

    iput p1, p0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->mIconSize:I

    return-void
.end method

.method setShareList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/share/chooser/ShareInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->mList:Ljava/util/ArrayList;

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->EMPTY_LIST:Ljava/util/ArrayList;

    goto :goto_0
.end method
