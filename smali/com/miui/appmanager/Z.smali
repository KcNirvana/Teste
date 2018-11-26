.class final Lcom/miui/appmanager/Z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aWE:Lcom/miui/appmanager/AMAppStorageDetailsActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/Z;->aWE:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/miui/appmanager/Z;->aWE:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/miui/appmanager/Z;->aWE:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blt(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/miui/appmanager/Z;->aWE:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blp(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/appmanager/Z;->aWE:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blm(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/appmanager/Z;->aWE:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->bly(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/Z;->aWE:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blm(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/appmanager/Z;->aWE:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v3}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blB(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)I

    move-result v3

    const/16 v4, 0x2728

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/appmanager/h;->blL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/appmanager/Z;->aWE:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blw(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/miui/appmanager/h;->blM(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/appmanager/Z;->aWE:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blv(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/miui/appmanager/h;->blM(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/miui/appmanager/Z;->aWE:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blv(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/miui/appmanager/h;->blM(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
