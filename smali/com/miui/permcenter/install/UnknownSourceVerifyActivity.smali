.class public Lcom/miui/permcenter/install/UnknownSourceVerifyActivity;
.super Lcom/miui/permcenter/install/AdbInstallVerifyActivity;
.source ""


# static fields
.field private static final Qa:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "https://srv.sec.intl.miui.com/data/unknownSources"

    :goto_0
    sput-object v0, Lcom/miui/permcenter/install/UnknownSourceVerifyActivity;->Qa:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "https://srv.sec.miui.com/data/unknownSources"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;-><init>()V

    return-void
.end method

.method public static isEnabled()Z
    .locals 2

    const-string/jumbo v0, "persist.security.uks_opened"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setEnabled(Z)V
    .locals 2

    const-string/jumbo v1, "persist.security.uks_opened"

    if-eqz p0, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method


# virtual methods
.method protected Rl()V
    .locals 3

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/miui/permcenter/install/UnknownSourceVerifyActivity;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/permcenter/install/UnknownSourceVerifyActivity;->Rm()V

    invoke-virtual {p0}, Lcom/miui/permcenter/install/UnknownSourceVerifyActivity;->finish()V

    return-void

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "meri"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "rolex"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "gemini"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "natrium"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "lithium"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "scorpio"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "santoni"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "chiron"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "sagit"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "tiffany"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "oxygen"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "jason"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "riva"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "ugglite"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "ugg"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/permcenter/install/UnknownSourceVerifyActivity;->Rm()V

    invoke-virtual {p0}, Lcom/miui/permcenter/install/UnknownSourceVerifyActivity;->finish()V

    return-void

    :cond_2
    sget-object v0, Lcom/miui/permcenter/install/UnknownSourceVerifyActivity;->Qa:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/permcenter/install/UnknownSourceVerifyActivity;->PZ:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/permcenter/install/UnknownSourceVerifyActivity;->Rk()V

    return-void
.end method

.method protected Rm()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/UnknownSourceVerifyActivity;->setResult(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/permcenter/install/UnknownSourceVerifyActivity;->setEnabled(Z)V

    return-void
.end method
