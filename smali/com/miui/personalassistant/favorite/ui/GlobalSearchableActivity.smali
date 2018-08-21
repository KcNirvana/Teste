.class public Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;
.super Lmiui/app/Activity;
.source "GlobalSearchableActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$CTATask;
    }
.end annotation


# instance fields
.field private mCTATask:Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$CTATask;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;->checkCTA(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;->jump(Landroid/database/Cursor;)V

    return-void
.end method

.method private checkCTA(Landroid/database/Cursor;)V
    .locals 2

    invoke-static {p0}, Lcom/miui/personalassistant/ui/widget/CTADialog;->isShowDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/miui/personalassistant/ui/widget/CTADialog;

    new-instance v1, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$1;-><init>(Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;Landroid/database/Cursor;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/personalassistant/ui/widget/CTADialog;-><init>(Landroid/content/Context;Lcom/miui/personalassistant/ui/widget/CTADialog$OnClickListener;)V

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/widget/CTADialog;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;->jump(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private jump(Landroid/database/Cursor;)V
    .locals 2

    invoke-static {p1}, Lcom/miui/personalassistant/favorite/provider/ValueTransUtil;->cursor2record(Landroid/database/Cursor;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/favorite/util/FavUtil;->jumpIntent(Landroid/content/Context;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$CTATask;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$CTATask;-><init>(Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;)V

    iput-object v2, p0, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;->mCTATask:Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$CTATask;

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;->mCTATask:Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$CTATask;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$CTATask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;->mCTATask:Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$CTATask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;->mCTATask:Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$CTATask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$CTATask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;->mCTATask:Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$CTATask;

    :cond_0
    return-void
.end method
