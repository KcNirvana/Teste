.class public Lcom/miui/payment/ui/edit/CategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/ui/edit/CategoryAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/miui/payment/ui/edit/CategoryAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    invoke-static {}, Lcom/miui/payment/utils/CategoryHelper;->getCategoryCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .locals 1

    invoke-static {p1}, Lcom/miui/payment/utils/CategoryHelper;->getCategoryByIndex(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/payment/ui/edit/CategoryAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    if-nez p2, :cond_0

    new-instance v1, Lcom/miui/payment/ui/edit/CategoryAdapter$ViewHolder;

    invoke-direct {v1, v4}, Lcom/miui/payment/ui/edit/CategoryAdapter$ViewHolder;-><init>(Lcom/miui/payment/ui/edit/CategoryAdapter$1;)V

    iget-object v2, p0, Lcom/miui/payment/ui/edit/CategoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1b0400d6

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v2, 0x1b09006c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/miui/payment/ui/edit/CategoryAdapter$ViewHolder;->access$102(Lcom/miui/payment/ui/edit/CategoryAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v2, 0x1b0900d6

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/miui/payment/ui/edit/CategoryAdapter$ViewHolder;->access$202(Lcom/miui/payment/ui/edit/CategoryAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/payment/ui/edit/CategoryAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1}, Lcom/miui/payment/ui/edit/CategoryAdapter$ViewHolder;->access$100(Lcom/miui/payment/ui/edit/CategoryAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0}, Lcom/miui/payment/utils/CategoryHelper;->getCategoryIconResId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v1}, Lcom/miui/payment/ui/edit/CategoryAdapter$ViewHolder;->access$200(Lcom/miui/payment/ui/edit/CategoryAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/payment/ui/edit/CategoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/miui/payment/utils/CategoryHelper;->getCategoryString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/payment/ui/edit/CategoryAdapter$ViewHolder;

    goto :goto_0
.end method
