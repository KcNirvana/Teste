.class public Lcom/miui/securityscan/model/manualitem/GarbageCleanModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source ""


# static fields
.field public static final CLEAN_VALUE:J = 0x5f5e100L

.field public static final MB:J = 0xf4240L


# instance fields
.field private As:Lcom/miui/securityscan/scanner/B;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/GarbageCleanModel;->setDelayOptimized(Z)V

    const-string/jumbo v0, "garbage_clean"

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/GarbageCleanModel;->setTrackStr(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securityscan/scanner/B;->getInstance()Lcom/miui/securityscan/scanner/B;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/model/manualitem/GarbageCleanModel;->As:Lcom/miui/securityscan/scanner/B;

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/16 v0, 0x26

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/GarbageCleanModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/GarbageCleanModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/GarbageCleanModel;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/securityscan/model/manualitem/GarbageCleanModel;->As:Lcom/miui/securityscan/scanner/B;

    invoke-virtual {v3}, Lcom/miui/securityscan/scanner/B;->FB()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lmiui/text/ExtraTextUtils;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0706f5

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/app/Activity;)V
    .locals 4

    const/16 v3, 0x67

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "enter_homepage_way"

    const-string/jumbo v2, "00006"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "force_clean"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/cleanmaster/b;->bxB(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, v0, v3}, Lcom/miui/common/b/k;->aIq(Landroid/app/Activity;Landroid/content/Intent;I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f070712

    invoke-static {p1, v0}, Lcom/miui/common/b/o;->aIX(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-static {p1, v0, v3, v1}, Lcom/miui/cleanmaster/a;->bxw(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public scan()V
    .locals 4

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/GarbageCleanModel;->As:Lcom/miui/securityscan/scanner/B;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->FB()J

    move-result-wide v0

    const-wide/32 v2, 0x5f5e100

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/GarbageCleanModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/GarbageCleanModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/miui/securityscan/scanner/e;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/GarbageCleanModel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0706f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/securityscan/scanner/e;-><init>(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/securityscan/scanner/y;->getInstance()Lcom/miui/securityscan/scanner/y;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;->DI:Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/GarbageCleanModel;->getItemKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/securityscan/scanner/y;->Fe(Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;Ljava/lang/String;Lcom/miui/securityscan/scanner/e;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/securityscan/scanner/y;->getInstance()Lcom/miui/securityscan/scanner/y;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;->DI:Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/y;->Ff(Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/GarbageCleanModel;->getItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/GarbageCleanModel;->getItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
