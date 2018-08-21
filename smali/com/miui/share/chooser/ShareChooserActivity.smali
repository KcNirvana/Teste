.class public Lcom/miui/share/chooser/ShareChooserActivity;
.super Landroid/app/Activity;
.source "ShareChooserActivity.java"


# instance fields
.field private mShareConfig:Landroid/os/Bundle;

.field private mShareIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/share/chooser/ShareChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.miui.share.extra.config"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/share/chooser/ShareChooserActivity;->mShareConfig:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/miui/share/chooser/ShareChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.miui.share.extra.intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/miui/share/chooser/ShareChooserActivity;->mShareIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/share/chooser/ShareChooserActivity;->mShareIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/share/chooser/ShareChooserActivity;->mShareConfig:Landroid/os/Bundle;

    invoke-static {p0, v0, v1}, Lcom/miui/share/chooser/ShareChooserManager;->showShareChooserDialog(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method prepareShareList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/share/chooser/ShareInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/share/chooser/ShareChooserActivity;->mShareIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/share/chooser/ShareChooserActivity;->mShareConfig:Landroid/os/Bundle;

    invoke-static {p0, v0, v1}, Lcom/miui/share/chooser/ShareChooserManager;->prepareShareList(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
