.class public Lcom/miui/personalassistant/ui/card/DiDiActivity;
.super Landroid/app/Activity;
.source "DiDiActivity.java"


# static fields
.field private static final DIDI_END_INPUT:Ljava/lang/String; = "didi_end_input"

.field public static final DIDI_END_SETS:Ljava/lang/String; = "didi_end_sets"

.field private static final DIDI_START_INPUT:Ljava/lang/String; = "didi_start_input"

.field public static final INTENT_DIDI_KEY:Ljava/lang/String; = "intent_didi_key"

.field public static final INTENT_DIDI_TYPE:Ljava/lang/String; = "intent_didi_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private process(Z)V
    .locals 4

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/card/DiDiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "intent_didi_type"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "didi_start_input"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "intent_didi_key"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    :cond_0
    :goto_0
    invoke-static {p0, v1}, Lcom/miui/personalassistant/ui/card/DiDiActivity;->showDDPage(Landroid/content/Context;Ljava/util/HashMap;)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v3, "didi_end_input"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "intent_didi_key"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "didi_end_sets"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "intent_didi_key"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    goto :goto_0
.end method

.method public static showDDPage(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/personalassistant/ui/card/MiuiDiDiWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string/jumbo v1, "params"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    instance-of v1, p0, Landroid/view/ContextThemeWrapper;

    if-nez v1, :cond_1

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/miui/personalassistant/services/DiDiService;->registerGuard(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/card/DiDiActivity;->process(Z)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/card/DiDiActivity;->finish()V

    return-void
.end method
