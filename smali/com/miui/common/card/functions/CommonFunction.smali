.class public Lcom/miui/common/card/functions/CommonFunction;
.super Lcom/miui/common/card/functions/BaseFunction;
.source ""


# static fields
.field private static ACTION_WHITE_LIST:Ljava/util/List; = null

.field private static final TAG:Ljava/lang/String; = "CommonFunction"


# instance fields
.field private intent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/common/card/functions/CommonFunction;->ACTION_WHITE_LIST:Ljava/util/List;

    sget-object v0, Lcom/miui/common/card/functions/CommonFunction;->ACTION_WHITE_LIST:Ljava/util/List;

    const-string/jumbo v1, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/card/functions/CommonFunction;->ACTION_WHITE_LIST:Ljava/util/List;

    const-string/jumbo v1, "miui.intent.action.GARBAGE_DEEPCLEAN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/card/functions/CommonFunction;->ACTION_WHITE_LIST:Ljava/util/List;

    const-string/jumbo v1, "miui.intent.action.GARBAGE_DEEPCLEAN_WECHAT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/card/functions/BaseFunction;-><init>()V

    iput-object p1, p0, Lcom/miui/common/card/functions/CommonFunction;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/common/card/functions/CommonFunction;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "data_config"

    invoke-static {v0, v1}, Lcom/miui/securityscan/b/c;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/securityscan/b/c;

    move-result-object v1

    const-string/jumbo v2, "is_homepage_operated"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/miui/securityscan/b/c;->JS(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/common/card/functions/CommonFunction;->intent:Landroid/content/Intent;

    const-string/jumbo v2, "enter_homepage_way"

    const-string/jumbo v3, "00004"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/common/card/functions/CommonFunction;->intent:Landroid/content/Intent;

    const-string/jumbo v2, "track_gamebooster_enter_way"

    const-string/jumbo v3, "00001"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/common/card/functions/CommonFunction;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.miui.securitycenter.action.TRANSITION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/common/card/functions/CommonFunction;->intent:Landroid/content/Intent;

    const-string/jumbo v3, "enter_way"

    const-string/jumbo v4, "00001"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    sget-object v2, Lcom/miui/common/card/functions/CommonFunction;->ACTION_WHITE_LIST:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/common/card/functions/CommonFunction;->intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/miui/cleanmaster/a;->bxv(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v2, "#Intent;action=miui.intent.action.APP_MANAGER;end"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/common/card/functions/CommonFunction;->intent:Landroid/content/Intent;

    const-string/jumbo v3, "enter_way"

    const-string/jumbo v4, "com.miui.securitycenter"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/miui/common/card/functions/CommonFunction;->intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/miui/common/b/k;->aIy(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f070712

    invoke-static {v0, v1}, Lcom/miui/common/b/o;->aIX(Landroid/content/Context;I)V

    goto :goto_1
.end method
