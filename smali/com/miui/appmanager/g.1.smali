.class Lcom/miui/appmanager/g;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic aTT:Lcom/miui/appmanager/AMAppStorageDetailsActivity;


# direct methods
.method private constructor <init>(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/g;->aTT:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/appmanager/AMAppStorageDetailsActivity;Lcom/miui/appmanager/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/g;-><init>(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v3, 0x3

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/appmanager/g;->aTT:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/g;->aTT:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blz(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Lmiui/preference/ValuePreference;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/g;->aTT:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blA(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lmiui/text/ExtraTextUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/appmanager/g;->aTT:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->bls(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Lmiui/preference/ValuePreference;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/g;->aTT:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blr(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lmiui/text/ExtraTextUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/appmanager/g;->aTT:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blu(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Lmiui/preference/ValuePreference;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/g;->aTT:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blt(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lmiui/text/ExtraTextUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/appmanager/g;->aTT:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blo(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Lmiui/preference/ValuePreference;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/g;->aTT:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->bln(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lmiui/text/ExtraTextUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/appmanager/g;->aTT:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blK(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)V

    goto :goto_0

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v6, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-le v0, v2, :cond_2

    if-ne v1, v3, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/g;->aTT:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v0, v4, v5}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blE(Lcom/miui/appmanager/AMAppStorageDetailsActivity;J)J

    iget-object v0, p0, Lcom/miui/appmanager/g;->aTT:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v0, v4, v5}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blC(Lcom/miui/appmanager/AMAppStorageDetailsActivity;J)J

    :goto_1
    iget-object v0, p0, Lcom/miui/appmanager/g;->aTT:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/g;->aTT:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blt(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/miui/appmanager/g;->aTT:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->bln(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/miui/appmanager/g;->aTT:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blr(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blF(Lcom/miui/appmanager/AMAppStorageDetailsActivity;J)J

    iget-object v0, p0, Lcom/miui/appmanager/g;->aTT:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blx(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Lcom/miui/appmanager/g;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/miui/appmanager/g;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/g;->aTT:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v0, v4, v5}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blC(Lcom/miui/appmanager/AMAppStorageDetailsActivity;J)J

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/appmanager/g;->aTT:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blI(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)V

    goto/16 :goto_0

    :cond_3
    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/g;->aTT:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blq(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
