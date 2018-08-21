.class public Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity;
.super Lmiui/app/Activity;
.source "FavoriteShareActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FavoriteShareActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity;->checkFavAuth()V

    return-void
.end method

.method private checkCtaAuth()V
    .locals 2

    invoke-static {p0}, Lcom/miui/personalassistant/ui/widget/CTADialog;->isShowDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/miui/personalassistant/ui/widget/CTADialog;

    new-instance v1, Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity$1;-><init>(Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/personalassistant/ui/widget/CTADialog;-><init>(Landroid/content/Context;Lcom/miui/personalassistant/ui/widget/CTADialog$OnClickListener;)V

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/widget/CTADialog;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity;->checkFavAuth()V

    goto :goto_0
.end method

.method private checkFavAuth()V
    .locals 7

    invoke-static {p0}, Lcom/miui/personalassistant/favorite/util/FavUtil;->isDeletingAll(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v4, "android.intent.extra.TEXT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/util/RegExUtil;->getHttpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "FavoriteShareActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "share url = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoritePrefs;->isFavOpened(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoritePrefs;->isFavAuthorized(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x1b0b01cf

    invoke-static {p0, v4}, Lcom/miui/personalassistant/favorite/util/ToastUtil;->show(Landroid/content/Context;I)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-static {p0, v3}, Lcom/miui/personalassistant/favorite/util/ShareUtil;->startShareService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.miui.personalassistant.favorite.OPEN_CONFIRM"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "key_url"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity;->checkCtaAuth()V

    return-void
.end method
