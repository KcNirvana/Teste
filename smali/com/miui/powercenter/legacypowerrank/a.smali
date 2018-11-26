.class Lcom/miui/powercenter/legacypowerrank/a;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private aFD:I

.field final synthetic aFE:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

.field private packageName:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/a;->aFE:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/legacypowerrank/a;->packageName:Ljava/lang/String;

    iput p3, p0, Lcom/miui/powercenter/legacypowerrank/a;->aFD:I

    iput p4, p0, Lcom/miui/powercenter/legacypowerrank/a;->uid:I

    return-void
.end method


# virtual methods
.method protected aRf(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/a;->aFE:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aRb(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;)Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/a;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/a;->aFE:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    invoke-virtual {v1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/a;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/miui/powercenter/legacypowerrank/a;->uid:I

    invoke-static {v1}, Lcom/miui/powercenter/a/f;->bbm(I)I

    move-result v1

    invoke-static {v1}, Lcom/miui/common/b/l;->aIF(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v1

    iget v2, p0, Lcom/miui/powercenter/legacypowerrank/a;->uid:I

    invoke-static {v1, v0, v2}, Lcom/miui/common/b/l;->aIG(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/a;->aFE:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    iget v1, p0, Lcom/miui/powercenter/legacypowerrank/a;->aFD:I

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/a;->aFE:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/miui/powercenter/legacypowerrank/a;->aFD:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/legacypowerrank/a;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/legacypowerrank/a;->aRf(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
