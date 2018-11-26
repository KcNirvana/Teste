.class public Lcom/miui/securityscan/d/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static Kg:Ljava/util/HashMap;

.field private static Kh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/securityscan/d/h;->Kh:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/securityscan/d/h;->Kg:Ljava/util/HashMap;

    sget-object v0, Lcom/miui/securityscan/d/h;->Kg:Ljava/util/HashMap;

    const-string/jumbo v1, "tiyanban1"

    const-string/jumbo v2, "285_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/securityscan/d/h;->Kg:Ljava/util/HashMap;

    const-string/jumbo v1, "kaifaban1"

    const-string/jumbo v2, "285_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/securityscan/d/h;->Kg:Ljava/util/HashMap;

    const-string/jumbo v1, "wendingban1"

    const-string/jumbo v2, "285_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/securityscan/d/h;->Kg:Ljava/util/HashMap;

    const-string/jumbo v1, "shouye1"

    const-string/jumbo v2, "285_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/securityscan/d/h;->Kg:Ljava/util/HashMap;

    const-string/jumbo v1, "tiyanban2"

    const-string/jumbo v2, "285_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/securityscan/d/h;->Kg:Ljava/util/HashMap;

    const-string/jumbo v1, "kaifaban2"

    const-string/jumbo v2, "285_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/securityscan/d/h;->Kg:Ljava/util/HashMap;

    const-string/jumbo v1, "wendingban2"

    const-string/jumbo v2, "285_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/securityscan/d/h;->Kg:Ljava/util/HashMap;

    const-string/jumbo v1, "ABTEST1"

    const-string/jumbo v2, "285_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/securityscan/d/h;->Kg:Ljava/util/HashMap;

    const-string/jumbo v1, "tiyanban3"

    const-string/jumbo v2, "285_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/securityscan/d/h;->Kg:Ljava/util/HashMap;

    const-string/jumbo v1, "kaifaban3"

    const-string/jumbo v2, "285_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/securityscan/d/h;->Kg:Ljava/util/HashMap;

    const-string/jumbo v1, "wendingban3"

    const-string/jumbo v2, "285_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/securityscan/d/h;->Kg:Ljava/util/HashMap;

    const-string/jumbo v1, "ABTEST2"

    const-string/jumbo v2, "285_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LD(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/miui/securityscan/d/h;->Kh:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_click"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11d

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordABTestCountEvent(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static LE(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/d/h;->Kg:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static LF(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->registerABTest(Landroid/content/Context;)V

    invoke-static {p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setABTestGroupManually(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/securityscan/d/h;->Kh:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ABTestHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not support ab test : unknow error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "ABTestHelper"

    const-string/jumbo v1, "not support ab test : NoSuchMethodError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static LG(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/miui/securityscan/d/h;->Kh:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_show"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11d

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordABTestCountEvent(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static LH()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/securityscan/d/h;->Kh:Z

    return-void
.end method
