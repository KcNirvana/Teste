.class Lcom/miui/appmanager/d;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic aTr:Lcom/miui/appmanager/ApplicationsDetailsActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/d;->aTr:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/appmanager/d;->aTr:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkj(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/d;->aTr:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v2, p0, Lcom/miui/appmanager/d;->aTr:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bki(Lcom/miui/appmanager/ApplicationsDetailsActivity;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lmiui/text/ExtraTextUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/appmanager/d;->aTr:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bla(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/appmanager/d;->aTr:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0, p1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkZ(Lcom/miui/appmanager/ApplicationsDetailsActivity;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    :try_start_0
    iget-object v1, p0, Lcom/miui/appmanager/d;->aTr:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjP(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/d;->aTr:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bka(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/appmanager/d;->aTr:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v3}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkn(Lcom/miui/appmanager/ApplicationsDetailsActivity;)I

    move-result v3

    const/16 v4, 0x80

    invoke-interface {v1, v2, v4, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/appmanager/d;->aTr:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkr(Lcom/miui/appmanager/ApplicationsDetailsActivity;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    :goto_2
    iget-object v2, p0, Lcom/miui/appmanager/d;->aTr:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    if-eqz v0, :cond_2

    const v1, 0x7f0708b3

    :goto_3
    invoke-static {v2, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkL(Lcom/miui/appmanager/ApplicationsDetailsActivity;I)I

    iget-object v1, p0, Lcom/miui/appmanager/d;->aTr:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjW(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/d;->aTr:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkm(Lcom/miui/appmanager/ApplicationsDetailsActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    const v0, 0x7f0708b8

    :goto_4
    iget-object v1, p0, Lcom/miui/appmanager/d;->aTr:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-virtual {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/securityscan/utils/b;->In(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const v1, 0x7f0708b4

    goto :goto_3

    :cond_3
    const v0, 0x7f0708b7

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
