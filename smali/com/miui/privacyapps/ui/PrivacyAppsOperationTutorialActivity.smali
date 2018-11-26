.class public Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final baZ:[I

.field private static final bba:[I


# instance fields
.field private bbb:Lcom/miui/applicationlock/utils/e;

.field private bbc:Z

.field private bbd:Landroid/widget/Button;

.field private bbe:Landroid/support/v4/view/ViewPager;

.field private bbf:Lcom/miui/privacyapps/view/ViewPagerIndicator;

.field private bbg:Ljava/util/List;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0x7f0202a4

    const v1, 0x7f0202a6

    const v2, 0x7f0202a5

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->baZ:[I

    const v0, 0x7f0709a3

    const v1, 0x7f0709a4

    const v2, 0x7f0709a5

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bba:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbc:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbg:Ljava/util/List;

    return-void
.end method

.method static synthetic bxH(Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic bxI(Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbg:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/a/d;->onActivityResult(IILandroid/content/Intent;)V

    const v0, 0xf990c

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->setResult(I)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbc:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbc:Z

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbd:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0xf990c

    invoke-virtual {p0, v0, v1}, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030140

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->setContentView(I)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbc:Z

    :cond_0
    invoke-static {p0}, Lcom/miui/applicationlock/utils/e;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbb:Lcom/miui/applicationlock/utils/e;

    const v0, 0x7f0a020b

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbe:Landroid/support/v4/view/ViewPager;

    const v0, 0x7f0a036b

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/privacyapps/view/ViewPagerIndicator;

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbf:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    move v0, v1

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    new-instance v1, Lcom/miui/privacyapps/a;

    invoke-direct {v1}, Lcom/miui/privacyapps/a;-><init>()V

    sget-object v2, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->baZ:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/miui/privacyapps/a;->byF(I)V

    sget-object v2, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bba:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/privacyapps/a;->byG(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbg:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbf:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    iget-object v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->byu(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbe:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/miui/privacyapps/ui/a;

    invoke-direct {v1, p0}, Lcom/miui/privacyapps/ui/a;-><init>(Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v0, 0x7f0a036c

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbd:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbd:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->setResult(I)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbf:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    invoke-virtual {v0, p1}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->byv(I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "state"

    iget-boolean v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbc:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Lcom/miui/common/a/d;->onStart()V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbb:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbc:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "HappyCodingMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0xf990c

    invoke-virtual {p0, v0, v1}, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbc:Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/a/d;->onStop()V

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbc:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bbc:Z

    :cond_0
    return-void
.end method
