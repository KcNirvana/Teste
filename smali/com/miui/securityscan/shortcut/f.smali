.class final Lcom/miui/securityscan/shortcut/f;
.super Lcom/miui/common/d/e;
.source ""


# instance fields
.field final synthetic Lh:Lcom/miui/securityscan/shortcut/ShortcutActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/shortcut/ShortcutActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/shortcut/f;->Lh:Lcom/miui/securityscan/shortcut/ShortcutActivity;

    invoke-direct {p0, p2}, Lcom/miui/common/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/securityscan/shortcut/f;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/securityscan/shortcut/c;

    sget-object v2, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KU:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    iget-object v3, p0, Lcom/miui/securityscan/shortcut/f;->Lh:Lcom/miui/securityscan/shortcut/ShortcutActivity;

    invoke-virtual {v3}, Lcom/miui/securityscan/shortcut/ShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/securityscan/shortcut/c;-><init>(Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/securityscan/shortcut/c;

    sget-object v2, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KT:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    iget-object v3, p0, Lcom/miui/securityscan/shortcut/f;->Lh:Lcom/miui/securityscan/shortcut/ShortcutActivity;

    invoke-virtual {v3}, Lcom/miui/securityscan/shortcut/ShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/securityscan/shortcut/c;-><init>(Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/securityscan/shortcut/f;->Lh:Lcom/miui/securityscan/shortcut/ShortcutActivity;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/cleanmaster/b;->bxB(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/miui/securityscan/shortcut/c;

    sget-object v2, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KK:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    iget-object v3, p0, Lcom/miui/securityscan/shortcut/f;->Lh:Lcom/miui/securityscan/shortcut/ShortcutActivity;

    invoke-virtual {v3}, Lcom/miui/securityscan/shortcut/ShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/securityscan/shortcut/c;-><init>(Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lcom/miui/securityscan/shortcut/c;

    sget-object v2, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KM:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    iget-object v3, p0, Lcom/miui/securityscan/shortcut/f;->Lh:Lcom/miui/securityscan/shortcut/ShortcutActivity;

    invoke-virtual {v3}, Lcom/miui/securityscan/shortcut/ShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/securityscan/shortcut/c;-><init>(Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/securityscan/shortcut/c;

    sget-object v2, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KJ:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    iget-object v3, p0, Lcom/miui/securityscan/shortcut/f;->Lh:Lcom/miui/securityscan/shortcut/ShortcutActivity;

    invoke-virtual {v3}, Lcom/miui/securityscan/shortcut/ShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/securityscan/shortcut/c;-><init>(Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/securityscan/shortcut/c;

    sget-object v2, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KS:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    iget-object v3, p0, Lcom/miui/securityscan/shortcut/f;->Lh:Lcom/miui/securityscan/shortcut/ShortcutActivity;

    invoke-virtual {v3}, Lcom/miui/securityscan/shortcut/ShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/securityscan/shortcut/c;-><init>(Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/securityscan/shortcut/c;

    sget-object v2, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KV:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    iget-object v3, p0, Lcom/miui/securityscan/shortcut/f;->Lh:Lcom/miui/securityscan/shortcut/ShortcutActivity;

    invoke-virtual {v3}, Lcom/miui/securityscan/shortcut/ShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/securityscan/shortcut/c;-><init>(Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/securityscan/shortcut/c;

    sget-object v2, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KR:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    iget-object v3, p0, Lcom/miui/securityscan/shortcut/f;->Lh:Lcom/miui/securityscan/shortcut/ShortcutActivity;

    invoke-virtual {v3}, Lcom/miui/securityscan/shortcut/ShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/securityscan/shortcut/c;-><init>(Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/miui/securityscan/shortcut/c;

    sget-object v2, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KO:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    iget-object v3, p0, Lcom/miui/securityscan/shortcut/f;->Lh:Lcom/miui/securityscan/shortcut/ShortcutActivity;

    invoke-virtual {v3}, Lcom/miui/securityscan/shortcut/ShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/securityscan/shortcut/c;-><init>(Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/securityscan/shortcut/c;

    sget-object v2, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KL:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    iget-object v3, p0, Lcom/miui/securityscan/shortcut/f;->Lh:Lcom/miui/securityscan/shortcut/ShortcutActivity;

    invoke-virtual {v3}, Lcom/miui/securityscan/shortcut/ShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/securityscan/shortcut/c;-><init>(Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method
