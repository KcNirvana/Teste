.class public Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsTipActivity;
.super Lmiui/app/Activity;
.source ""


# static fields
.field public static final DETAIL_KEY_NAME:Ljava/lang/String; = "detail"

.field public static final TITLE_KEY_NAME:Ljava/lang/String; = "title"


# instance fields
.field private mDetailView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsTipActivity;->setContentView(I)V

    const v0, 0x7f0a0077

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsTipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsTipActivity;->mDetailView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsTipActivity;->mDetailView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsTipActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "detail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsTipActivity;->mDetailView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsTipActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
