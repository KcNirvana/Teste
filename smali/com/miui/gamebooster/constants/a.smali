.class public Lcom/miui/gamebooster/constants/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final qs:Ljava/lang/String;

.field public static final qt:Ljava/lang/String;

.field public static final qu:Ljava/lang/String;

.field public static final qv:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/miui/gamebooster/constants/a;->qv:Z

    sget-boolean v0, Lcom/miui/gamebooster/constants/a;->qv:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "https://adv.sec.intl.miui.com/game/speedParams"

    :goto_1
    sput-object v0, Lcom/miui/gamebooster/constants/a;->qt:Ljava/lang/String;

    sget-boolean v0, Lcom/miui/gamebooster/constants/a;->qv:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "https://adv.sec.intl.miui.com/game/popGames"

    :goto_2
    sput-object v0, Lcom/miui/gamebooster/constants/a;->qu:Ljava/lang/String;

    sget-boolean v0, Lcom/miui/gamebooster/constants/a;->qv:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "https://adv.sec.intl.miui.com/game/pkg"

    :goto_3
    sput-object v0, Lcom/miui/gamebooster/constants/a;->qs:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "https://adv.sec.miui.com/game/speedParams"

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "https://adv.sec.miui.com/game/popGames"

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "https://adv.sec.miui.com/game/pkg"

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sV()Z
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securitycenter/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
