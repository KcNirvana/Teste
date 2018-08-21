.class public Lcom/alipay/android/app/flybird/ui/window/widget/NoPwdAppGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "NoPwdAppGridAdapter.java"


# instance fields
.field private mContext:Landroid/app/Activity;

.field private noPwdAppUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/NoPwdAppGridAdapter;->noPwdAppUrlList:Ljava/util/List;

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/a;->p()Lcom/alipay/android/app/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/window/widget/NoPwdAppGridAdapter;->noPwdAppUrlList:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/widget/NoPwdAppGridAdapter;->mContext:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/NoPwdAppGridAdapter;->noPwdAppUrlList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/NoPwdAppGridAdapter;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/NoPwdAppGridAdapter;->noPwdAppUrlList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/NoPwdAppGridAdapter;->noPwdAppUrlList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x42200000    # 40.0f

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/window/widget/NoPwdAppGridAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/alipay/android/app/ui/quickpay/util/i;->b(Landroid/app/Activity;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v5

    const/4 v4, 0x1

    aput v2, v3, v4

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;

    invoke-direct {v2}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;-><init>()V

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;->a([I)V

    const-string/jumbo v3, ""

    invoke-static {v1, v0, v5, v2, v3}, Lcom/alipay/android/app/ui/quickpay/util/i;->a(Landroid/view/View;Ljava/lang/String;ZLcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method
