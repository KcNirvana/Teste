.class public final Lcom/miui/common/network/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field protected static final CARRIER:Ljava/lang/String;

.field protected static final DEVICE:Ljava/lang/String;

.field protected static final MIUI_VERSION:Ljava/lang/String;

.field private static final URL_SERVER_ROOT:Ljava/lang/String;

.field protected static final aBG:Ljava/lang/String;

.field protected static final aBH:Ljava/lang/String;

.field protected static final aBI:Ljava/lang/String;

.field private static final aBJ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "https://api.sec.intl.miui.com"

    :goto_0
    sput-object v0, Lcom/miui/common/network/d;->URL_SERVER_ROOT:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/common/network/d;->URL_SERVER_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/health/v1/getOptimizationFile2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/common/network/d;->aBG:Ljava/lang/String;

    sget-boolean v0, Lcom/miui/common/b;->aCy:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "http://staging.adv.sec.miui.com"

    :goto_1
    sput-object v0, Lcom/miui/common/network/d;->aBJ:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/common/network/d;->aBJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/info/layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/common/network/d;->aBI:Ljava/lang/String;

    const-string/jumbo v0, "ro.product.device"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/common/network/d;->DEVICE:Ljava/lang/String;

    const-string/jumbo v0, "ro.carrier.name"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/common/network/d;->CARRIER:Ljava/lang/String;

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/common/network/d;->aBH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MIUI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/common/network/d;->MIUI_VERSION:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "https://api.sec.miui.com"

    goto :goto_0

    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "https://adv.sec.intl.miui.com"

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "https://adv.sec.miui.com"

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
