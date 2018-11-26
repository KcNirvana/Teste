.class public Lcom/miui/hybrid/accessory/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static bDN(Landroid/content/ContentResolver;)J
    .locals 4

    const-string/jumbo v0, "ts_user_disable_hybrid_icon_tip"

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
