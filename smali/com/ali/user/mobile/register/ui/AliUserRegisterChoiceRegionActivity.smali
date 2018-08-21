.class public Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;
.super Lcom/ali/user/mobile/base/BaseActivity;
.source "AliUserRegisterChoiceRegionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static mRegionCallback:Lcom/ali/user/mobile/register/region/b$a;


# instance fields
.field private mLetterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mLetterView:Lcom/ali/user/mobile/ui/widget/AUBladeView;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/register/region/RegionInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mListView:Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;

.field protected mRegisterTitle:Lcom/ali/user/mobile/ui/widget/APTitleBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->onLetterItemClick(Ljava/lang/String;)V

    return-void
.end method

.method private findViews()V
    .locals 1

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->register_region_title:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mRegisterTitle:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->register_list:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mListView:Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->contacts_letters_list:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUBladeView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mLetterView:Lcom/ali/user/mobile/ui/widget/AUBladeView;

    return-void
.end method

.method private init()V
    .locals 4

    const/16 v3, 0xbb8

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mRegisterTitle:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getTitleTextView()Lcom/ali/user/mobile/ui/widget/APTextView;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mRegisterTitle:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getTitleTextView()Lcom/ali/user/mobile/ui/widget/APTextView;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTextView;->setMaxEms(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mRegisterTitle:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getTitleTextView()Lcom/ali/user/mobile/ui/widget/APTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mRegisterTitle:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getTitleTextView()Lcom/ali/user/mobile/ui/widget/APTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTextView;->setSupportEmoji(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mRegisterTitle:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->a(Lcom/ali/user/mobile/ui/widget/APTitleBar;)V

    invoke-static {}, Lcom/ali/user/mobile/register/region/b;->a()Lcom/ali/user/mobile/register/region/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/region/b;->b()Lcom/ali/user/mobile/register/region/c;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mRegionCallback:Lcom/ali/user/mobile/register/region/b$a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mRegionCallback:Lcom/ali/user/mobile/register/region/b$a;

    const-string/jumbo v1, "system error"

    invoke-interface {v0, v2, v1}, Lcom/ali/user/mobile/register/region/b$a;->a(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_system_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->toast(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/ali/user/mobile/register/region/c;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/region/c;->c()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mLetterMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/region/c;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mList:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mLetterMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/ali/user/mobile/register/region/a;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/ali/user/mobile/register/region/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mListView:Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mListView:Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;

    invoke-virtual {v0, p0}, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mLetterView:Lcom/ali/user/mobile/ui/widget/AUBladeView;

    new-instance v1, Lcom/ali/user/mobile/register/ui/a;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/a;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUBladeView;->setOnItemClickListener(Lcom/ali/user/mobile/ui/widget/APBladeView$a;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mRegionCallback:Lcom/ali/user/mobile/register/region/b$a;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mRegionCallback:Lcom/ali/user/mobile/register/region/b$a;

    const-string/jumbo v1, "system error"

    invoke-interface {v0, v2, v1}, Lcom/ali/user/mobile/register/region/b$a;->a(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_system_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private onLetterItemClick(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v0

    :goto_0
    const/16 v0, 0x41

    if-lt v1, v0, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mLetterMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mLetterMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mListView:Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->setSelection(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, -0x1

    int-to-char v0, v0

    move v1, v0

    goto :goto_0
.end method

.method public static setRegionCallback(Lcom/ali/user/mobile/register/region/b$a;)V
    .locals 0

    sput-object p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mRegionCallback:Lcom/ali/user/mobile/register/region/b$a;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_activity_register_region:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->findViews()V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->init()V

    const-string/jumbo v0, ""

    const-string/jumbo v1, "AliUserRegisterChoiceRegionActivity"

    const-string/jumbo v2, "login"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mRegionCallback:Lcom/ali/user/mobile/register/region/b$a;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/register/region/RegionInfo;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "region"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->finish()V

    sget-object v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mRegionCallback:Lcom/ali/user/mobile/register/region/b$a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mRegionCallback:Lcom/ali/user/mobile/register/region/b$a;

    invoke-interface {v1, v0}, Lcom/ali/user/mobile/register/region/b$a;->a(Lcom/ali/user/mobile/register/region/RegionInfo;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mRegionCallback:Lcom/ali/user/mobile/register/region/b$a;

    :cond_0
    return-void
.end method

.method protected setAppId()V
    .locals 1

    const-string/jumbo v0, "20000009"

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mAppId:Ljava/lang/String;

    return-void
.end method
