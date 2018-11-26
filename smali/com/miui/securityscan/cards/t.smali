.class final Lcom/miui/securityscan/cards/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Cu:Lcom/miui/securityscan/cards/l;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/cards/l;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/cards/t;->Cu:Lcom/miui/securityscan/cards/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const v6, 0x7f0200b2

    const v5, 0x7f020079

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->LOCAL_FUNCTION_ICONS:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/securityscan/cards/t;->Cu:Lcom/miui/securityscan/cards/l;

    invoke-static {v1}, Lcom/miui/securityscan/cards/l;->Du(Lcom/miui/securityscan/cards/l;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/miui/securityscan/cards/t;->Cu:Lcom/miui/securityscan/cards/l;

    invoke-static {v2}, Lcom/miui/securityscan/cards/l;->Dt(Lcom/miui/securityscan/cards/l;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/securityscan/cards/t;->Cu:Lcom/miui/securityscan/cards/l;

    invoke-static {v3}, Lcom/miui/securityscan/cards/l;->Dv(Lcom/miui/securityscan/cards/l;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/miui/securityscan/cards/t;->Cu:Lcom/miui/securityscan/cards/l;

    invoke-static {v4}, Lcom/miui/securityscan/cards/l;->Du(Lcom/miui/securityscan/cards/l;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/cards/t;->Cu:Lcom/miui/securityscan/cards/l;

    invoke-static {v0}, Lcom/miui/securityscan/cards/l;->Dt(Lcom/miui/securityscan/cards/l;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/miui/common/card/FillParentDrawable;

    iget-object v2, p0, Lcom/miui/securityscan/cards/t;->Cu:Lcom/miui/securityscan/cards/l;

    invoke-static {v2}, Lcom/miui/securityscan/cards/l;->Dt(Lcom/miui/securityscan/cards/l;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/common/card/FillParentDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/miui/securityscan/cards/t;->Cu:Lcom/miui/securityscan/cards/l;

    invoke-static {v2}, Lcom/miui/securityscan/cards/l;->Dv(Lcom/miui/securityscan/cards/l;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/miui/securityscan/cards/t;->Cu:Lcom/miui/securityscan/cards/l;

    invoke-static {v3}, Lcom/miui/securityscan/cards/l;->Du(Lcom/miui/securityscan/cards/l;)Ljava/util/Map;

    move-result-object v3

    const v4, 0x7f0200b2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/securityscan/cards/t;->Cu:Lcom/miui/securityscan/cards/l;

    invoke-static {v0}, Lcom/miui/securityscan/cards/l;->Du(Lcom/miui/securityscan/cards/l;)Ljava/util/Map;

    move-result-object v0

    const v3, 0x7f020079

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method
