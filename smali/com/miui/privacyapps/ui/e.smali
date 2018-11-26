.class Lcom/miui/privacyapps/ui/e;
.super Landroid/widget/BaseAdapter;
.source ""


# instance fields
.field private bbH:Lcom/miui/common/h/b;

.field final synthetic bbI:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/privacyapps/ui/e;->bbI:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/privacyapps/ui/e;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p2}, Lcom/miui/common/h/b;->getInstance(Landroid/content/Context;)Lcom/miui/common/h/b;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/privacyapps/ui/e;->bbH:Lcom/miui/common/h/b;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/e;->bbI:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-static {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->byk(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/e;->bbI:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-static {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->byk(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)Ljava/util/List;

    move-result-object v0

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
    .locals 5

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/privacyapps/ui/e;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03013d

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/miui/privacyapps/ui/f;

    invoke-direct {v1, p0}, Lcom/miui/privacyapps/ui/f;-><init>(Lcom/miui/privacyapps/ui/e;)V

    const v0, 0x7f0a011c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/privacyapps/ui/f;->bbJ:Landroid/widget/ImageView;

    const v0, 0x7f0a00bd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/privacyapps/ui/f;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/privacyapps/ui/e;->bbI:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-static {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->byk(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/privacyapps/d;

    invoke-virtual {v0}, Lcom/miui/privacyapps/d;->byN()I

    move-result v2

    const/16 v3, 0x3e7

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "pkg_icon_xspace://"

    invoke-virtual {v0}, Lcom/miui/privacyapps/d;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v3, v1, Lcom/miui/privacyapps/ui/f;->bbJ:Landroid/widget/ImageView;

    sget-object v4, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v2, v3, v4}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    :try_start_0
    iget-object v1, v1, Lcom/miui/privacyapps/ui/f;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/privacyapps/ui/e;->bbH:Lcom/miui/common/h/b;

    invoke-virtual {v0}, Lcom/miui/privacyapps/d;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/miui/common/h/b;->aNl(Ljava/lang/String;)Lcom/miui/common/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/h/a;->aNj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/privacyapps/ui/f;

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "pkg_icon://"

    invoke-virtual {v0}, Lcom/miui/privacyapps/d;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getAppInfo error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
