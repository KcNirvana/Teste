.class final Lcom/miui/permcenter/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Ru:I

.field final synthetic Rv:Z

.field final synthetic Rw:Landroid/app/Activity;

.field final synthetic Rx:J

.field final synthetic Ry:Lcom/miui/permcenter/f;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(IZLandroid/app/Activity;Ljava/lang/String;JLcom/miui/permcenter/f;)V
    .locals 1

    iput p1, p0, Lcom/miui/permcenter/p;->Ru:I

    iput-boolean p2, p0, Lcom/miui/permcenter/p;->Rv:Z

    iput-object p3, p0, Lcom/miui/permcenter/p;->Rw:Landroid/app/Activity;

    iput-object p4, p0, Lcom/miui/permcenter/p;->val$packageName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/miui/permcenter/p;->Rx:J

    iput-object p7, p0, Lcom/miui/permcenter/p;->Ry:Lcom/miui/permcenter/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v2, 0x2

    const/4 v0, 0x3

    const/4 v6, 0x1

    iget v1, p0, Lcom/miui/permcenter/p;->Ru:I

    iget-boolean v3, p0, Lcom/miui/permcenter/p;->Rv:Z

    if-eqz v3, :cond_1

    packed-switch p2, :pswitch_data_0

    move v6, v1

    :goto_0
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget v1, p0, Lcom/miui/permcenter/p;->Ru:I

    if-eq v6, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/miui/permcenter/p;->Rw:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/permcenter/p;->val$packageName:Ljava/lang/String;

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eq v6, v0, :cond_2

    iget-wide v2, p0, Lcom/miui/permcenter/p;->Rx:J

    invoke-static {v2, v3}, Lcom/miui/permcenter/e;->SS(J)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/permcenter/p;->Rw:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070670

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0705d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/q;

    iget-object v3, p0, Lcom/miui/permcenter/p;->Rw:Landroid/app/Activity;

    iget-wide v4, p0, Lcom/miui/permcenter/p;->Rx:J

    iget-object v7, p0, Lcom/miui/permcenter/p;->val$packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/permcenter/p;->Ry:Lcom/miui/permcenter/f;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/miui/permcenter/q;-><init>(Lcom/miui/permcenter/p;Landroid/app/Activity;JILjava/lang/String;Lcom/miui/permcenter/f;)V

    const v2, 0x7f0705d4

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    :cond_0
    :goto_1
    return-void

    :pswitch_1
    move v6, v0

    goto :goto_0

    :cond_1
    packed-switch p2, :pswitch_data_1

    move v6, v1

    goto :goto_0

    :pswitch_2
    move v6, v0

    goto :goto_0

    :pswitch_3
    move v6, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/permcenter/p;->Rw:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/permission/a;->getInstance(Landroid/content/Context;)Lcom/miui/permission/a;

    move-result-object v3

    iget-wide v4, p0, Lcom/miui/permcenter/p;->Rx:J

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/permcenter/p;->val$packageName:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v8, v1

    const/4 v7, 0x2

    invoke-virtual/range {v3 .. v8}, Lcom/miui/permission/a;->bBV(JII[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/permcenter/p;->Ry:Lcom/miui/permcenter/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/p;->Ry:Lcom/miui/permcenter/f;

    iget-object v1, p0, Lcom/miui/permcenter/p;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Lcom/miui/permcenter/f;->PP(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PermissionUtils"

    const-string/jumbo v2, "getApplicationInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
