.class public Lcom/xiaomi/push/service/ah;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/xiaomi/push/service/ag;Lcom/xiaomi/push/hm;)I
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/push/service/ah;->a(Lcom/xiaomi/push/hm;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/service/ai;->a:[I

    invoke-virtual {p1}, Lcom/xiaomi/push/hm;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x1

    :goto_0
    :pswitch_1
    iget-object p0, p0, Lcom/xiaomi/push/service/ag;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Lcom/xiaomi/push/hm;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oc_version_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/hm;->a()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/push/hr;",
            ">;Z)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/push/ad;->a(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/push/hr;

    invoke-virtual {v2}, Lcom/xiaomi/push/hr;->a()I

    move-result v3

    invoke-virtual {v2}, Lcom/xiaomi/push/hr;->b()I

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/push/hn;->a(I)Lcom/xiaomi/push/hn;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v5, v2, Lcom/xiaomi/push/hr;->a:Z

    if-eqz v5, :cond_2

    new-instance v2, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/xiaomi/push/service/ai;->b:[I

    invoke-virtual {v4}, Lcom/xiaomi/push/hn;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    move-object v4, v1

    goto :goto_1

    :pswitch_0
    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaomi/push/hr;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaomi/push/hr;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaomi/push/hr;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaomi/push/hr;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/xiaomi/push/service/ag;Lcom/xiaomi/push/hm;I)V
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/push/service/ah;->a(Lcom/xiaomi/push/hm;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/xiaomi/push/service/ag;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a(Lcom/xiaomi/push/service/ag;Lcom/xiaomi/push/id;)V
    .locals 1

    invoke-virtual {p1}, Lcom/xiaomi/push/id;->a()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaomi/push/service/ah;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/ag;->b(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/service/ag;->b()V

    return-void
.end method

.method public static a(Lcom/xiaomi/push/service/ag;Lcom/xiaomi/push/ie;)V
    .locals 3

    invoke-virtual {p1}, Lcom/xiaomi/push/ie;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/hp;

    invoke-virtual {v0}, Lcom/xiaomi/push/hp;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/xiaomi/push/hp;->a()Lcom/xiaomi/push/hm;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/xiaomi/push/service/ah;->a(Lcom/xiaomi/push/service/ag;Lcom/xiaomi/push/hm;)I

    move-result v2

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/push/hp;->a()Lcom/xiaomi/push/hm;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/push/hp;->a()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/xiaomi/push/service/ah;->a(Lcom/xiaomi/push/service/ag;Lcom/xiaomi/push/hm;I)V

    iget-object v0, v0, Lcom/xiaomi/push/hp;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/ah;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/ag;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/service/ag;->b()V

    return-void
.end method
