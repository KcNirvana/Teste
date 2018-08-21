.class public Lcom/ali/user/mobile/register/region/a;
.super Landroid/widget/BaseAdapter;
.source "RegionAdapter.java"

# interfaces
.implements Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/mobile/register/region/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/register/region/RegionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/register/region/RegionInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/ali/user/mobile/register/region/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/ali/user/mobile/register/region/a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/register/region/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/register/region/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    const/16 v5, 0x8

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/region/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_region:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/ali/user/mobile/register/region/a$a;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/region/a$a;-><init>(Lcom/ali/user/mobile/register/region/a;)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->contact_item_head:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/ali/user/mobile/register/region/a$a;->a:Landroid/widget/LinearLayout;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->contact_item_header_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ali/user/mobile/register/region/a$a;->b:Landroid/widget/TextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->region_divider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/register/region/a$a;->c:Landroid/view/View;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->region_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ali/user/mobile/register/region/a$a;->d:Landroid/widget/TextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->region_number:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ali/user/mobile/register/region/a$a;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/region/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/register/region/RegionInfo;

    iget-boolean v2, v0, Lcom/ali/user/mobile/register/region/RegionInfo;->isDisplayLetter:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/ali/user/mobile/register/region/a$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v1, Lcom/ali/user/mobile/register/region/a$a;->c:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/ali/user/mobile/register/region/a$a;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/ali/user/mobile/register/region/RegionInfo;->mCharacter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    iget-object v2, v1, Lcom/ali/user/mobile/register/region/a$a;->d:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/ali/user/mobile/register/region/RegionInfo;->mRegionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/ali/user/mobile/register/region/a$a;->e:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/ali/user/mobile/register/region/RegionInfo;->mRegionNumber:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/register/region/a$a;

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/ali/user/mobile/register/region/a$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v1, Lcom/ali/user/mobile/register/region/a$a;->c:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method
