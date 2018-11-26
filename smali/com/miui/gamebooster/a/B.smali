.class public Lcom/miui/gamebooster/a/B;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hX(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    invoke-static {p0, p2}, Lcom/miui/common/persistence/a;->aMO(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {p0, v0}, Lcom/miui/common/persistence/a;->aMI(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_0
    return-void
.end method

.method public static hY(Landroid/content/ContentResolver;)Z
    .locals 2

    const-string/jumbo v0, "gamebooster_data_migration"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lmiui/provider/ExtraSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static hZ(Landroid/content/ContentResolver;)Z
    .locals 2

    const-string/jumbo v0, "gamebooster_remove_desktop_icon"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lmiui/provider/ExtraSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ia(Landroid/content/ContentResolver;Z)V
    .locals 1

    const-string/jumbo v0, "gamebooster_data_migration"

    invoke-static {p0, v0, p1}, Lmiui/provider/ExtraSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static ib(Landroid/content/ContentResolver;Z)V
    .locals 1

    const-string/jumbo v0, "gamebooster_remove_desktop_icon"

    invoke-static {p0, v0, p1}, Lmiui/provider/ExtraSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method
