.class final Lcom/miui/securityscan/l;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic Nr:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/l;->Nr:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/securityscan/MainActivity;->-get0()J

    move-result-wide v4

    sub-long/2addr v0, v4

    sget-object v4, Lcom/miui/securityscan/MainActivity;->Lo:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v6, 0x2710

    cmp-long v0, v0, v6

    if-gez v0, :cond_2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/common/card/models/BaseCardModel;->isOverseaChannel()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/miui/common/card/models/BaseCardModel;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/miui/common/card/models/BaseCardModel;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    sget-boolean v5, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v5, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/common/card/models/BaseCardModel;->isOverseaChannel()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/miui/common/card/models/BaseCardModel;->getLanguage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/miui/common/card/models/BaseCardModel;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "zh_CN"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_7

    :cond_0
    :goto_2
    if-nez v2, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_3
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/miui/securityscan/l;->Nr:Lcom/miui/securityscan/MainActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/miui/securityscan/MainActivity;->Ob(Lcom/miui/securityscan/MainActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/securityscan/l;->Nr:Lcom/miui/securityscan/MainActivity;

    invoke-static {v1}, Lcom/miui/securityscan/MainActivity;->NH(Lcom/miui/securityscan/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/miui/securityscan/cards/a;->BY()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/miui/securityscan/l;->Nr:Lcom/miui/securityscan/MainActivity;

    invoke-static {v1}, Lcom/miui/securityscan/MainActivity;->NH(Lcom/miui/securityscan/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_4
    iget-object v0, p0, Lcom/miui/securityscan/l;->Nr:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->NI(Lcom/miui/securityscan/MainActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/l;->Nr:Lcom/miui/securityscan/MainActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/miui/securityscan/MainActivity;->NU(Lcom/miui/securityscan/MainActivity;Z)Z

    iget-object v0, p0, Lcom/miui/securityscan/l;->Nr:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->NQ(Lcom/miui/securityscan/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/l;->Nr:Lcom/miui/securityscan/MainActivity;

    iget-object v0, v0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    const/16 v2, 0x6c

    invoke-virtual {v0, v2}, Lcom/miui/securityscan/scanner/w;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    move v1, v2

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/securityscan/l;->Nr:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->Oj(Lcom/miui/securityscan/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/miui/securityscan/MainActivity;->Lo:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/miui/securityscan/l;->Nr:Lcom/miui/securityscan/MainActivity;

    invoke-static {}, Lcom/miui/securityscan/cards/a;->BZ()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/securityscan/MainActivity;->Ob(Lcom/miui/securityscan/MainActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_7
    move v2, v3

    goto :goto_2
.end method
